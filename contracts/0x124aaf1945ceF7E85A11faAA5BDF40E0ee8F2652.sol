contract main {




// =====================  Runtime code  =====================


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
    staticcall uniswapV2RouterAddress.WAVAX() with:
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
    if ceil32(_13) > _13:
        mem[_13 + (2 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[_13 + mem[64] + 64] = 0
    return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
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
                staticcall uniswapV2RouterAddress.WAVAX() with:
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
                staticcall uniswapV2RouterAddress.WAVAX() with:
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
                staticcall uniswapV2RouterAddress.WAVAX() with:
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
                staticcall uniswapV2RouterAddress.WAVAX() with:
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
                            staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                if balanceOf[this.address] * rewardsFee / 100:
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
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address] * rewardsFee / 100 * stor24 / 100, 0, 160, address(this.address), block.timestamp, mem[_645 + ceil32(return_data.size) + 260 len (32 * mem[_645]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_645 + ceil32(return_data.size) + 96] = 30
                                    mem[_645 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_645 + ceil32(return_data.size) + 160] = 30
                                    mem[_645 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * rewardsFee / 100 * stor24 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor24 / 100:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    mem[_645 + ceil32(return_data.size) + 224] = 38
                                    mem[_645 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_645 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                    0
                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100):
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                    if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)):
                                        revert with 0, 17
                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) < balanceOf[stor17]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)), this.address, distributionPoolAddress);
                                    if not balanceOf[this.address]:
                                        mem[_645 + ceil32(return_data.size) + 320] = 26
                                        mem[_645 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                        mem[_645 + ceil32(return_data.size) + 384] = 26
                                        mem[_645 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                        mem[_645 + ceil32(return_data.size) + 448] = 30
                                        mem[_645 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                        mem[_645 + ceil32(return_data.size) + 512] = 2
                                        mem[_645 + ceil32(return_data.size) + 544] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_645 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_645 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_645 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_645 + (2 * ceil32(return_data.size)) + 612] = 0
                                        mem[_645 + (2 * ceil32(return_data.size)) + 644] = 0
                                        mem[_645 + (2 * ceil32(return_data.size)) + 676] = 160
                                        mem[_645 + (2 * ceil32(return_data.size)) + 772] = 2
                                        idx = 0
                                        s = _645 + (2 * ceil32(return_data.size)) + 804
                                        t = _645 + ceil32(return_data.size) + 544
                                        while idx < mem[_645 + ceil32(return_data.size) + 512]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_645 + (2 * ceil32(return_data.size)) + 708] = this.address
                                        mem[_645 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, mem[_645 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_645 + ceil32(return_data.size) + 512]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_645 + (2 * ceil32(return_data.size)) + 608] = 30
                                        mem[_645 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
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
                                        mem[_645 + (2 * ceil32(return_data.size)) + 676] = this.address
                                        mem[_645 + (2 * ceil32(return_data.size)) + 708] = 0
                                        mem[_645 + (2 * ceil32(return_data.size)) + 740] = 0
                                        mem[_645 + (2 * ceil32(return_data.size)) + 772] = 0
                                        mem[_645 + (2 * ceil32(return_data.size)) + 804] = 0
                                        mem[_645 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, 0, 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            0,
                                    else:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[_645 + ceil32(return_data.size) + 320] = 26
                                        mem[_645 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                        mem[_645 + ceil32(return_data.size) + 384] = 26
                                        mem[_645 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                        mem[_645 + ceil32(return_data.size) + 448] = 30
                                        mem[_645 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        mem[_645 + ceil32(return_data.size) + 512] = 2
                                        mem[_645 + ceil32(return_data.size) + 544] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_645 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_645 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor14].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[_645 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_645 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[_645 + (2 * ceil32(return_data.size)) + 644] = 0
                                        mem[_645 + (2 * ceil32(return_data.size)) + 676] = 160
                                        mem[_645 + (2 * ceil32(return_data.size)) + 772] = 2
                                        idx = 0
                                        s = _645 + (2 * ceil32(return_data.size)) + 804
                                        t = _645 + ceil32(return_data.size) + 544
                                        while idx < mem[_645 + ceil32(return_data.size) + 512]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_645 + (2 * ceil32(return_data.size)) + 708] = this.address
                                        mem[_645 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_645 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_645 + ceil32(return_data.size) + 512]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_645 + (2 * ceil32(return_data.size)) + 608] = 30
                                        mem[_645 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
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
                                        mem[_645 + (2 * ceil32(return_data.size)) + 676] = this.address
                                        mem[_645 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        mem[_645 + (2 * ceil32(return_data.size)) + 740] = 0
                                        mem[_645 + (2 * ceil32(return_data.size)) + 772] = 0
                                        mem[_645 + (2 * ceil32(return_data.size)) + 804] = 0
                                        mem[_645 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                    mem[_645 + (4 * ceil32(return_data.size)) + 672] = 2
                                    mem[_645 + (4 * ceil32(return_data.size)) + 704] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_645 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_645 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_645 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_645 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                    mem[_645 + (6 * ceil32(return_data.size)) + 836] = 160
                                    idx = 0
                                    s = _645 + (6 * ceil32(return_data.size)) + 964
                                    t = _645 + (4 * ceil32(return_data.size)) + 704
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[_645 + (6 * ceil32(return_data.size)) + 964 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    mem[_645 + (6 * ceil32(return_data.size)) + 768] = 38
                                    mem[_645 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                    mem[_645 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[_645 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                    mem[_645 + (6 * ceil32(return_data.size)) + 900] = 64
                                    mem[_645 + (6 * ceil32(return_data.size)) + 932] = mem[96]
                                    mem[_645 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[mem[96] + _645 + (6 * ceil32(return_data.size)) + 964] = 0
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[_645 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])])
                                else:
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
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                        mem[_630 + (6 * ceil32(return_data.size)) + 868] = this.address
                                        mem[_630 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _630 + (6 * ceil32(return_data.size)) + (32 * mem[_630 + (4 * ceil32(return_data.size)) + 672]) + -mem[64] + 960]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _3936 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3936] = 38
                                        mem[_3936 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3936 + 70 len 26]
                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                        mem[_3354 + ceil32(return_data.size) + 196] = this.address
                                        mem[_3354 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3354 + ceil32(return_data.size) + (32 * mem[_3354]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _3939 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3939] = 38
                                        mem[_3939 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3939 + 70 len 26]
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
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[mem[96] + mem[64] + 100] = 0
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
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
                                staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                if balanceOf[this.address]:
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
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_1996 + ceil32(return_data.size) + 260 len (32 * mem[_1996]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1996 + ceil32(return_data.size) + 96] = 30
                                    mem[_1996 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
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
                                    mem[_1996 + ceil32(return_data.size) + 228] = 0
                                    mem[_1996 + ceil32(return_data.size) + 260] = 0
                                    mem[_1996 + ceil32(return_data.size) + 292] = 0
                                    mem[_1996 + ceil32(return_data.size) + 324] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[_1996 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                    mem[_1996 + (2 * ceil32(return_data.size)) + 160] = 2
                                    mem[_1996 + (2 * ceil32(return_data.size)) + 192] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_1996 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1996 + (4 * ceil32(return_data.size)) + 256
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_1996 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 292] = 0
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 324] = 160
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 420] = 2
                                    idx = 0
                                    s = _1996 + (4 * ceil32(return_data.size)) + 452
                                    t = _1996 + (2 * ceil32(return_data.size)) + 192
                                    while idx < mem[_1996 + (2 * ceil32(return_data.size)) + 160]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 356] = this.address
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_1996 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_1996 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 260] = 32
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 292] = 37
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer from the zero ad'
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 356] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _1996 + (4 * ceil32(return_data.size)) + 256
                                           len (5 * ceil32(return_data.size)) + 132
                                    if not this.address:
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 260] = 32
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 292] = 35
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer to the zero addr'
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 356] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _1996 + (4 * ceil32(return_data.size)) + 256
                                           len (5 * ceil32(return_data.size)) + 132
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 256] = 38
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 356] = 32
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 388] = 38
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 420 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 458] = 0
                                        revert with memory
                                          from _1996 + (4 * ceil32(return_data.size)) + 352
                                           len (5 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 356] = 32
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 388] = 27
                                        mem[_1996 + (4 * ceil32(return_data.size)) + 420] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from _1996 + (4 * ceil32(return_data.size)) + 352
                                           len (5 * ceil32(return_data.size)) + 100
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 352] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 356] = msg.sender
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 388] = 64
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 420] = mem[96]
                                    mem[_1996 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[mem[96] + _1996 + (4 * ceil32(return_data.size)) + 452] = 0
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args mem[_1996 + (4 * ceil32(return_data.size)) + 356 len ceil32(mem[96]) + (5 * ceil32(return_data.size)) + 96]
                                else:
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
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                    mem[_3358 + ceil32(return_data.size) + 196] = this.address
                                    mem[_3358 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3358 + ceil32(return_data.size) + (32 * mem[_3358]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    _3945 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3945] = 38
                                    mem[_3945 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3945 + 70 len 26]
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
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[mem[96] + mem[64] + 100] = 0
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
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
                            staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_610 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_610 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
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
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_610 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_610 + ceil32(return_data.size) + 512]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_610 + (2 * ceil32(return_data.size)) + 608] = 30
                                    mem[_610 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[_610 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_610 + (2 * ceil32(return_data.size)) + 676] = 32
                                        mem[_610 + (2 * ceil32(return_data.size)) + 708] = 30
                                        mem[_610 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                        mem[_610 + (2 * ceil32(return_data.size)) + 770] = 0
                                        revert with memory
                                          from _610 + (2 * ceil32(return_data.size)) + 672
                                           len ceil32(return_data.size) + 100
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        mem[_610 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_610 + (2 * ceil32(return_data.size)) + 676] = 32
                                        mem[_610 + (2 * ceil32(return_data.size)) + 708] = 36
                                        mem[_610 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                        mem[_610 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _610 + (2 * ceil32(return_data.size)) + 672
                                           len ceil32(return_data.size) + 132
                                    if not uniswapV2RouterAddress:
                                        mem[_610 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_610 + (2 * ceil32(return_data.size)) + 676] = 32
                                        mem[_610 + (2 * ceil32(return_data.size)) + 708] = 34
                                        mem[_610 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                        mem[_610 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _610 + (2 * ceil32(return_data.size)) + 672
                                           len ceil32(return_data.size) + 132
                                    allowance[address(this.address)][stor14].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[_610 + (2 * ceil32(return_data.size)) + 676] = this.address
                                    mem[_610 + (2 * ceil32(return_data.size)) + 708] = 0
                                    mem[_610 + (2 * ceil32(return_data.size)) + 740] = 0
                                    mem[_610 + (2 * ceil32(return_data.size)) + 772] = 0
                                    mem[_610 + (2 * ceil32(return_data.size)) + 804] = 0
                                    mem[_610 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args mem[_610 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                    mem[_610 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[_610 + (4 * ceil32(return_data.size)) + 672] = 0
                                    mem[_610 + (4 * ceil32(return_data.size)) + 704] = 0
                                    mem[_610 + (4 * ceil32(return_data.size)) + 736] = 0
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        mem[_610 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                    mem[_610 + (4 * ceil32(return_data.size)) + 672] = 2
                                    mem[_610 + (4 * ceil32(return_data.size)) + 704] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_610 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _610 + (6 * ceil32(return_data.size)) + 768
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_610 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_610 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_610 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                    mem[_610 + (6 * ceil32(return_data.size)) + 804] = 0
                                    mem[_610 + (6 * ceil32(return_data.size)) + 836] = 160
                                    mem[_610 + (6 * ceil32(return_data.size)) + 932] = 2
                                    idx = 0
                                    s = _610 + (6 * ceil32(return_data.size)) + 964
                                    t = _610 + (4 * ceil32(return_data.size)) + 704
                                    while idx < mem[_610 + (4 * ceil32(return_data.size)) + 672]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_610 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_610 + (6 * ceil32(return_data.size)) + 932 len (32 * mem[_610 + (4 * ceil32(return_data.size)) + 672]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 
                                                    'ERC20: transfer from the zero address',
                                                    mem[_610 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                    if not this.address:
                                        revert with 0, 
                                                    'ERC20: transfer to the zero address',
                                                    mem[_610 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                    mem[_610 + (6 * ceil32(return_data.size)) + 768] = 38
                                    mem[_610 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        mem[_610 + (6 * ceil32(return_data.size)) + 970] = 0
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                    mem[_610 + (6 * ceil32(return_data.size)) + 970 len (9 * ceil32(return_data.size)) + 26]
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow', mem[_610 + (6 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    mem[_610 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[_610 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                    mem[_610 + (6 * ceil32(return_data.size)) + 900] = 64
                                    mem[_610 + (6 * ceil32(return_data.size)) + 932] = mem[96]
                                    mem[_610 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[mem[96] + _610 + (6 * ceil32(return_data.size)) + 964] = 0
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[_610 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[96])])
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
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_610 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_610 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
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
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_610 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_610 + ceil32(return_data.size) + 512]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_610 + (2 * ceil32(return_data.size)) + 608] = 30
                                    mem[_610 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
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
                                    mem[_610 + (2 * ceil32(return_data.size)) + 676] = this.address
                                    mem[_610 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    mem[_610 + (2 * ceil32(return_data.size)) + 740] = 0
                                    mem[_610 + (2 * ceil32(return_data.size)) + 772] = 0
                                    mem[_610 + (2 * ceil32(return_data.size)) + 804] = 0
                                    mem[_610 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                    mem[_610 + (4 * ceil32(return_data.size)) + 672] = 2
                                    mem[_610 + (4 * ceil32(return_data.size)) + 704] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_610 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _610 + (6 * ceil32(return_data.size)) + 768
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_610 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_610 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_610 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                    mem[_610 + (6 * ceil32(return_data.size)) + 804] = 0
                                    mem[_610 + (6 * ceil32(return_data.size)) + 836] = 160
                                    mem[_610 + (6 * ceil32(return_data.size)) + 932] = 2
                                    idx = 0
                                    s = _610 + (6 * ceil32(return_data.size)) + 964
                                    t = _610 + (4 * ceil32(return_data.size)) + 704
                                    while idx < mem[_610 + (4 * ceil32(return_data.size)) + 672]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_610 + (6 * ceil32(return_data.size)) + 932 len (32 * mem[_610 + (4 * ceil32(return_data.size)) + 672]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    mem[_610 + (6 * ceil32(return_data.size)) + 768] = 38
                                    mem[_610 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                    mem[_610 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[_610 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                    mem[_610 + (6 * ceil32(return_data.size)) + 900] = 64
                                    mem[_610 + (6 * ceil32(return_data.size)) + 932] = mem[96]
                                    mem[_610 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[mem[96] + _610 + (6 * ceil32(return_data.size)) + 964] = 0
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[_610 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])])
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
                                if balanceOf[this.address] * rewardsFee / 100:
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
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_1986 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1986 + (4 * ceil32(return_data.size)) + 256
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_1986 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
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
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1986 + (4 * ceil32(return_data.size)) + (32 * mem[_1986 + (2 * ceil32(return_data.size)) + 160]) + -mem[64] + 448]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _3912 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3912] = 38
                                        mem[_3912 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3912 + 70 len 26]
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
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[mem[96] + mem[64] + 100] = 0
                                        require ext_code.size(nodeRewardManagerAddress)
                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
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
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                else:
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
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                    mem[_628 + ceil32(return_data.size) + 196] = this.address
                                    mem[_628 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _628 + ceil32(return_data.size) + (32 * mem[_628]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1709 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1709] = 30
                                    mem[_1709 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1739 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1739] = 30
                                    mem[_1739 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * rewardsFee / 100 < 0:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    _1777 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1777] = 38
                                    mem[_1777 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1777 + 70 len 26]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                    if balanceOf[address(this.address)] < balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(this.address)] -= balanceOf[this.address] * rewardsFee / 100
                                    if balanceOf[stor17] > !(balanceOf[this.address] * rewardsFee / 100):
                                        revert with 0, 17
                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) < balanceOf[stor17]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = distributionPoolAddress
                                    mem[32] = 0
                                    balanceOf[stor17] += balanceOf[this.address] * rewardsFee / 100
                                    emit Transfer((balanceOf[this.address] * rewardsFee / 100), this.address, distributionPoolAddress);
                                    if not balanceOf[this.address]:
                                        _1885 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1885] = 26
                                        mem[_1885 + 32] = 'SafeMath: division by zero'
                                        _1909 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1909] = 26
                                        mem[_1909 + 32] = 'SafeMath: division by zero'
                                        _1921 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1921] = 30
                                        mem[_1921 + 32] = 'SafeMath: subtraction overflow'
                                        _1936 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_1936 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_1936]:
                                            revert with 0, 50
                                        mem[_1936 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_1936 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1936 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_1936]:
                                            revert with 0, 50
                                        mem[_1936 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_1936 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_1936 + ceil32(return_data.size) + 100] = 0
                                        mem[_1936 + ceil32(return_data.size) + 132] = 0
                                        mem[_1936 + ceil32(return_data.size) + 164] = 160
                                        mem[_1936 + ceil32(return_data.size) + 260] = mem[_1936]
                                        idx = 0
                                        s = _1936 + ceil32(return_data.size) + 292
                                        t = _1936 + 32
                                        while idx < mem[_1936]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_1936 + ceil32(return_data.size) + 196] = this.address
                                        mem[_1936 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1936 + ceil32(return_data.size) + (32 * mem[_1936]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3063 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3063] = 30
                                        mem[_3063 + 32] = 'SafeMath: subtraction overflow'
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
                                        _3342 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_3342 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_3342]:
                                            revert with 0, 50
                                        mem[_3342 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_3342 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3342 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_3342]:
                                            revert with 0, 50
                                        mem[_3342 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_3342 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_3342 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                        mem[_3342 + ceil32(return_data.size) + 132] = 0
                                        mem[_3342 + ceil32(return_data.size) + 164] = 160
                                        mem[_3342 + ceil32(return_data.size) + 260] = mem[_3342]
                                        idx = 0
                                        s = _3342 + ceil32(return_data.size) + 292
                                        t = _3342 + 32
                                        while idx < mem[_3342]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_3342 + ceil32(return_data.size) + 196] = this.address
                                        mem[_3342 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3342 + ceil32(return_data.size) + (32 * mem[_3342]) + -mem[64] + 288]
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
                                    else:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _1903 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1903] = 26
                                        mem[_1903 + 32] = 'SafeMath: division by zero'
                                        _1915 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1915] = 26
                                        mem[_1915 + 32] = 'SafeMath: division by zero'
                                        _1927 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1927] = 30
                                        mem[_1927 + 32] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        _1988 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_1988 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_1988]:
                                            revert with 0, 50
                                        mem[_1988 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_1988 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1988 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_1988]:
                                            revert with 0, 50
                                        mem[_1988 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor14].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[_1988 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_1988 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[_1988 + ceil32(return_data.size) + 132] = 0
                                        mem[_1988 + ceil32(return_data.size) + 164] = 160
                                        mem[_1988 + ceil32(return_data.size) + 260] = mem[_1988]
                                        idx = 0
                                        s = _1988 + ceil32(return_data.size) + 292
                                        t = _1988 + 32
                                        while idx < mem[_1988]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_1988 + ceil32(return_data.size) + 196] = this.address
                                        mem[_1988 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1988 + ceil32(return_data.size) + (32 * mem[_1988]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3062 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3062] = 30
                                        mem[_3062 + 32] = 'SafeMath: subtraction overflow'
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
                                        _3340 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_3340 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_3340]:
                                            revert with 0, 50
                                        mem[_3340 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_3340 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3340 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_3340]:
                                            revert with 0, 50
                                        mem[_3340 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_3340 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_3340 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                        mem[_3340 + ceil32(return_data.size) + 132] = 0
                                        mem[_3340 + ceil32(return_data.size) + 164] = 160
                                        mem[_3340 + ceil32(return_data.size) + 260] = mem[_3340]
                                        idx = 0
                                        s = _3340 + ceil32(return_data.size) + 292
                                        t = _3340 + 32
                                        while idx < mem[_3340]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_3340 + ceil32(return_data.size) + 196] = this.address
                                        mem[_3340 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3340 + ceil32(return_data.size) + (32 * mem[_3340]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _3918 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3918] = 38
                                        mem[_3918 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3918 + 70 len 26]
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
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[mem[96] + mem[64] + 100] = 0
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x8013858b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x48b75044(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x19165587(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x39509351(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x39509351(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            if allowance[msg.sender][address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            if allowance[msg.sender][address(arg1)].field_0 + arg2 < allowance[msg.sender][address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not address(arg1):
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
                            emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, address(arg1));
                            return 1
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
                            require unknown_0x42bc9fca(?????) == uint32(call.func_hash) >> 224
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
                    if unknown_0x1cdd3be3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor27[arg1])
                    if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                        if unknown_0x2bb14e1d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return rewardsFee
                        require unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return 18
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg2):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if stor27[address(arg1)]:
                        revert with 0, 'Blacklisted address'
                    if stor27[address(arg2)]:
                        revert with 0, 'Blacklisted address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg2):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, address(arg1), address(arg2));
                    if arg3 > allowance[address(arg1)][msg.sender].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                        revert with 0, 17
                    if not address(arg1):
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), address(arg1), msg.sender);
                    return 1
                if updateFuturWall(address arg1) > uint32(call.func_hash) >> 224:
                    if name() == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if bool(stor3.length):
                            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor3.length):
                                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor3.length):
                                    if 31 < uint255(stor3.length) * 0.5:
                                        mem[160] = uint256(stor3.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor3.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor3[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                                    mem[160] = 256 * stor3.length.field_8
                            else:
                                if bool(stor3.length) == stor3.length.field_1 < 32:
                                    revert with 0, 34
                                if stor3.length.field_1:
                                    if 31 < stor3.length.field_1:
                                        mem[160] = uint256(stor3.field_0)
                                        idx = 160
                                        s = 0
                                        while stor3.length.field_1 + 128 > idx:
                                            mem[idx + 32] = stor3[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                                    mem[160] = 256 * stor3.length.field_8
                            mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                            if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                                mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 0, 34
                        if bool(stor3.length):
                            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor3.length):
                                if 31 < uint255(stor3.length) * 0.5:
                                    mem[160] = uint256(stor3.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor3.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor3[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                                mem[160] = 256 * stor3.length.field_8
                        else:
                            if bool(stor3.length) == stor3.length.field_1 < 32:
                                revert with 0, 34
                            if stor3.length.field_1:
                                if 31 < stor3.length.field_1:
                                    mem[160] = uint256(stor3.field_0)
                                    idx = 160
                                    s = 0
                                    while stor3.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor3[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                                mem[160] = 256 * stor3.length.field_8
                        mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
                        if ceil32(stor3.length.field_1) > stor3.length.field_1:
                            mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 224] = 0
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
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
                    if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if not msg.sender:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(msg.sender)][address(arg1)].field_0 = arg2
                        emit Approval(arg2, msg.sender, address(arg1));
                        return 1
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
                if unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalFees
                if uint32(call.func_hash) >> 224 != unknown_0x138a634a(?????):
                    if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return uniswapV2RouterAddress
                    require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return totalSupply
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
                _446 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _486 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = _486
                require _446 + _486 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_486)] = mem[ceil32(return_data.size) + _446 + 160 len ceil32(_486)]
                if ceil32(_486) <= _486:
                    _1644 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _486
                    mem[mem[64] + 64 len ceil32(_486)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_486)]
                    if ceil32(_486) <= _486:
                        return Array(len=_486, data=mem[mem[64] + 64 len ceil32(_486)])
                    mem[_486 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_486) + _1644 + -mem[64] + 64
                mem[_486 + (2 * ceil32(return_data.size)) + 160] = 0
                _1645 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _486
                mem[mem[64] + 64 len ceil32(_486)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_486)]
                if ceil32(_486) <= _486:
                    return Array(len=_486, data=mem[mem[64] + 64 len ceil32(_486)])
                mem[_486 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_486) + _1645 + -mem[64] + 64
            if unknown_0x65b8dbc0(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x54f12f1f(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x54f12f1f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return liquidityPoolFee
                    if unknown_0x583bd7a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == bool(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        Mask(248, 0, stor25.field_8) = Mask(248, 0, bool(arg1))
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
                        require unknown_0x5f1c3182(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return swapTokensAmount
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
                    _468 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _520 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = _520
                    require _468 + _520 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_520)] = mem[ceil32(return_data.size) + _468 + 160 len ceil32(_520)]
                    if ceil32(_520) <= _520:
                        _1656 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _520
                        mem[mem[64] + 64 len ceil32(_520)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_520)]
                        if ceil32(_520) <= _520:
                            return Array(len=_520, data=mem[mem[64] + 64 len ceil32(_520)])
                        mem[_520 + mem[64] + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_520) + _1656 + -mem[64] + 64
                    mem[_520 + (2 * ceil32(return_data.size)) + 160] = 0
                    _1657 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _520
                    mem[mem[64] + 64 len ceil32(_520)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_520)]
                    if ceil32(_520) <= _520:
                        return Array(len=_520, data=mem[mem[64] + 64 len ceil32(_520)])
                    mem[_520 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_520) + _1657 + -mem[64] + 64
                if unknown_0x48b75044(?????) == uint32(call.func_hash) >> 224:
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
                    if unknown_0x48e5642b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.totalRewardStaked() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return uniswapV2PairAddress
                    require unknown_0x54557973(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'MANIA CSHT:  creation from the zero address'
                    if stor27[address(msg.sender)]:
                        revert with 0, 'MANIA CSHT: Blacklisted address'
                    if futurUsePoolAddress == msg.sender:
                        revert with 0, 'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
                    if distributionPoolAddress == msg.sender:
                        revert with 0, 'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
                    mem[132] = msg.sender
                    require ext_code.size(nodeRewardManagerAddress)
                    staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[128] = ext_call.return_data[0]
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
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 198 len 26] >> 48,
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
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 198 len 26] >> 48,
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
                                mem[ceil32(return_data.size) + 128] = 26
                                mem[ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 192] = 2
                                mem[ceil32(return_data.size) + 224] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 292] = 32
                                    mem[(2 * ceil32(return_data.size)) + 324] = 36
                                    mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                                    mem[(2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 288
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 292] = 32
                                    mem[(2 * ceil32(return_data.size)) + 324] = 34
                                    mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                                    mem[(2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 288
                                       len ceil32(return_data.size) + 132
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor14].field_0 = 0
                                mem[(2 * ceil32(return_data.size)) + 288] = 0
                                emit Approval(mem[(2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 292] = 0
                                mem[(2 * ceil32(return_data.size)) + 324] = 0
                                mem[(2 * ceil32(return_data.size)) + 356] = 160
                                mem[(2 * ceil32(return_data.size)) + 452] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 484
                                t = ceil32(return_data.size) + 224
                                while idx < mem[ceil32(return_data.size) + 192]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 544]
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
                                _1881 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1881] = 38
                                mem[_1881 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] > balanceOf[stor17]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1881 + 70 len 26]
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
                                mem[ceil32(return_data.size) + 128] = 26
                                mem[ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 192] = 2
                                mem[ceil32(return_data.size) + 224] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 292] = 32
                                    mem[(2 * ceil32(return_data.size)) + 324] = 36
                                    mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                                    mem[(2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 288
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 292] = 32
                                    mem[(2 * ceil32(return_data.size)) + 324] = 34
                                    mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                                    mem[(2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 288
                                       len ceil32(return_data.size) + 132
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * cashoutFee / 100
                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0] * cashoutFee / 100
                                emit Approval(mem[(2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * cashoutFee / 100
                                mem[(2 * ceil32(return_data.size)) + 324] = 0
                                mem[(2 * ceil32(return_data.size)) + 356] = 160
                                mem[(2 * ceil32(return_data.size)) + 452] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 484
                                t = ceil32(return_data.size) + 224
                                while idx < mem[ceil32(return_data.size) + 192]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 544]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1710 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1710] = 30
                                mem[_1710 + 32] = 'SafeMath: subtraction overflow'
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
                                _1878 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1878] = 38
                                mem[_1878 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1878 + 70 len 26]
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
            else:
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
                    if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return balanceOf[address(arg1)]
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
                else:
                    if unknown_0x65b8dbc0(?????) == uint32(call.func_hash) >> 224:
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
                            if stor27[address(msg.sender)]:
                                revert with 0, 'MANIA CSHT: Blacklisted address'
                            if futurUsePoolAddress == msg.sender:
                                revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                            if distributionPoolAddress == msg.sender:
                                revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                            mem[132] = msg.sender
                            mem[164] = arg1
                            require ext_code.size(nodeRewardManagerAddress)
                            staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, arg1
                            mem[128] = ext_call.return_data[0]
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
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 198 len 26] >> 48,
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
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 198 len 26] >> 48,
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
                                        mem[ceil32(return_data.size) + 128] = 26
                                        mem[ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                                        mem[ceil32(return_data.size) + 192] = 2
                                        mem[ceil32(return_data.size) + 224] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 288
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = 32
                                            mem[(2 * ceil32(return_data.size)) + 324] = 36
                                            mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 288
                                               len ceil32(return_data.size) + 132
                                        if not uniswapV2RouterAddress:
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = 32
                                            mem[(2 * ceil32(return_data.size)) + 324] = 34
                                            mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 288
                                               len ceil32(return_data.size) + 132
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 292] = 0
                                        mem[(2 * ceil32(return_data.size)) + 324] = 0
                                        mem[(2 * ceil32(return_data.size)) + 356] = 160
                                        mem[(2 * ceil32(return_data.size)) + 452] = 2
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 484
                                        t = ceil32(return_data.size) + 224
                                        while idx < mem[ceil32(return_data.size) + 192]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 544]
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
                                        _1887 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1887] = 38
                                        mem[_1887 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[stor17]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1887 + 70 len 26]
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
                                        mem[ceil32(return_data.size) + 128] = 26
                                        mem[ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                                        mem[ceil32(return_data.size) + 192] = 2
                                        mem[ceil32(return_data.size) + 224] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 288
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = 32
                                            mem[(2 * ceil32(return_data.size)) + 324] = 36
                                            mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 288
                                               len ceil32(return_data.size) + 132
                                        if not uniswapV2RouterAddress:
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = 32
                                            mem[(2 * ceil32(return_data.size)) + 324] = 34
                                            mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 288
                                               len ceil32(return_data.size) + 132
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * cashoutFee / 100
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0] * cashoutFee / 100
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * cashoutFee / 100
                                        mem[(2 * ceil32(return_data.size)) + 324] = 0
                                        mem[(2 * ceil32(return_data.size)) + 356] = 160
                                        mem[(2 * ceil32(return_data.size)) + 452] = 2
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 484
                                        t = ceil32(return_data.size) + 224
                                        while idx < mem[ceil32(return_data.size) + 192]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 544]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1712 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1712] = 30
                                        mem[_1712 + 32] = 'SafeMath: subtraction overflow'
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
                                        _1884 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1884] = 38
                                        mem[_1884 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1884 + 70 len 26]
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
        else:
            if unknown_0xb62496f5(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xdb3ad6b5(?????) > uint32(call.func_hash) >> 224:
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
                            stor27[address(arg1)] = uint8(bool(arg2))
                        require unknown_0xda41b333(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.lastDistributionCount() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor28[arg1])
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
                    if uint32(call.func_hash) >> 224 != unknown_0xbdf24a53(?????):
                        require unknown_0xc5ca7d6d(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return distributionPoolAddress
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
                    _458 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _504 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = _504
                    require _458 + _504 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_504)] = mem[ceil32(return_data.size) + _458 + 160 len ceil32(_504)]
                    if ceil32(_504) > _504:
                        mem[_504 + (2 * ceil32(return_data.size)) + 160] = 0
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _504
                    mem[mem[64] + 64 len ceil32(_504)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_504)]
                    if ceil32(_504) > _504:
                        mem[_504 + mem[64] + 64] = 0
                    return Array(len=_504, data=mem[mem[64] + 64 len ceil32(_504)])
                if unknown_0xf5a07256(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf5a07256(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.claimTime() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
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
                    require unknown_0xfb0a7494(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    nodeRewardManagerAddress = address(arg1)
                if unknown_0xdb3ad6b5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(nodeRewardManagerAddress)
                    staticcall nodeRewardManagerAddress.rewardPerNode() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)].field_0
                if unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalReleased
                if uint32(call.func_hash) >> 224 != unknown_0xee1afdbf(?????):
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
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
                _480 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _534 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = _534
                require _480 + _534 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_534)] = mem[ceil32(return_data.size) + _480 + 160 len ceil32(_534)]
                if ceil32(_534) <= _534:
                    _1708 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _534
                    mem[mem[64] + 64 len ceil32(_534)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_534)]
                    if ceil32(_534) <= _534:
                        return Array(len=_534, data=mem[mem[64] + 64 len ceil32(_534)])
                    mem[_534 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_534) + _1708 + -mem[64] + 64
                mem[_534 + (2 * ceil32(return_data.size)) + 160] = 0
                _1709 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _534
                mem[mem[64] + 64 len ceil32(_534)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_534)]
                if ceil32(_534) <= _534:
                    return Array(len=_534, data=mem[mem[64] + 64 len ceil32(_534)])
                mem[_534 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_534) + _1709 + -mem[64] + 64
            if unknown_0x95d89b41(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xa457c2d7(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if bool(stor4.length):
                            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor4.length):
                                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor4.length):
                                    if 31 < uint255(stor4.length) * 0.5:
                                        mem[160] = uint256(stor4.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor4.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor4[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                    mem[160] = 256 * stor4.length.field_8
                            else:
                                if bool(stor4.length) == stor4.length.field_1 < 32:
                                    revert with 0, 34
                                if stor4.length.field_1:
                                    if 31 < stor4.length.field_1:
                                        mem[160] = uint256(stor4.field_0)
                                        idx = 160
                                        s = 0
                                        while stor4.length.field_1 + 128 > idx:
                                            mem[idx + 32] = stor4[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                    mem[160] = 256 * stor4.length.field_8
                            mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                            if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                                mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
                        if bool(stor4.length) == stor4.length.field_1 < 32:
                            revert with 0, 34
                        if bool(stor4.length):
                            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4.length):
                                if 31 < uint255(stor4.length) * 0.5:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor4.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                                mem[160] = 256 * stor4.length.field_8
                        else:
                            if bool(stor4.length) == stor4.length.field_1 < 32:
                                revert with 0, 34
                            if stor4.length.field_1:
                                if 31 < stor4.length.field_1:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while stor4.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                                mem[160] = 256 * stor4.length.field_8
                        mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
                        if ceil32(stor4.length.field_1) > stor4.length.field_1:
                            mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 224] = 0
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
                    if unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return released[address(arg1)]
                    if uint32(call.func_hash) >> 224 != unknown_0x9a7a23d6(?????):
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
                        require unknown_0xa0a8fe65(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.totalNodesCreated() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uniswapV2PairAddress == address(arg1):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'TKN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
                    if bool(arg2) == bool(stor28[address(arg1)]):
                        revert with 0, 'TKN: Automated market maker pair is already set to that value'
                    stor28[address(arg1)] = uint8(bool(arg2))
                    emit SetAutomatedMarketMakerPair(address(arg1), bool(arg2));
                if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if arg2 > allowance[msg.sender][address(arg1)].field_0:
                        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[197 len 27] >> 40, 0
                    if allowance[msg.sender][address(arg1)].field_0 < arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
                    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, address(arg1));
                else:
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
                    if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                        require unknown_0xab574761(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return futurFee
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if stor27[address(msg.sender)]:
                        revert with 0, 'Blacklisted address'
                    if stor27[address(arg1)]:
                        revert with 0, 'Blacklisted address'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                return 1
            if unknown_0x8b83209b(?????) > uint32(call.func_hash) >> 224:
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
                        require ext_code.size(nodeRewardManagerAddress)
                        call nodeRewardManagerAddress._distributeRewards() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                    else:
                        require unknown_0x88c41d7c(?????) == uint32(call.func_hash) >> 224
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
                if unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if arg1 >= payee.length:
                        revert with 0, 50
                    return payee[arg1]
                if unknown_0x8bc9c7b0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor24 = arg1
                else:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if uint32(call.func_hash) >> 224 != unknown_0x8f0ba4ca(?????):
                        require unknown_0x9349c47d(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        distributionPoolAddress = address(arg1)
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 <= test266151307()
                        require calldata.size > arg1 + 35
                        if arg1.length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = arg1.length
                        require arg1 + arg1.length + 36 <= calldata.size
                        mem[160 len arg1.length] = arg1[all]
                        mem[arg1.length + 160] = 0
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
                        mem[ceil32(ceil32(arg1.length)) + 129] = ext_call.return_data[0]
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
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 199 len 26] >> 48,
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
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 199 len 26] >> 48,
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
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 199 len 26] >> 48,
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
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 199 len 26] >> 48,
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
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 199 len 26] >> 48,
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
                                            if balanceOf[this.address]:
                                                if balanceOf[this.address] and futurFee > -1 / balanceOf[this.address]:
                                                    revert with 0, 17
                                                if not balanceOf[this.address]:
                                                    revert with 0, 18
                                                if balanceOf[this.address] * futurFee / balanceOf[this.address] != futurFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = 26
                                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = 2
                                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 32
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 36
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 'ERC20: approve from the zero add'
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289
                                                       len ceil32(return_data.size) + 132
                                                if not uniswapV2RouterAddress:
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 32
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 34
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 'ERC20: approve to the zero addre'
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289
                                                       len ceil32(return_data.size) + 132
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * futurFee / 100
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = balanceOf[this.address] * futurFee / 100
                                                emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = balanceOf[this.address] * futurFee / 100
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
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + -mem[64] + 545]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1714 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1714] = 30
                                                mem[_1714 + 32] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call futurUsePoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not balanceOf[this.address]:
                                                    _1860 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1860] = 26
                                                    mem[_1860 + 32] = 'SafeMath: division by zero'
                                                    _1924 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1924] = 26
                                                    mem[_1924 + 32] = 'SafeMath: division by zero'
                                                    _1972 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_1972 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_1972]:
                                                        revert with 0, 50
                                                    mem[_1972 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_1972 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _1972 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_1972]:
                                                        revert with 0, 50
                                                    mem[_1972 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[_1972 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_1972 + ceil32(return_data.size) + 100] = 0
                                                    mem[_1972 + ceil32(return_data.size) + 132] = 0
                                                    mem[_1972 + ceil32(return_data.size) + 164] = 160
                                                    mem[_1972 + ceil32(return_data.size) + 260] = mem[_1972]
                                                    idx = 0
                                                    s = _1972 + ceil32(return_data.size) + 292
                                                    t = _1972 + 32
                                                    while idx < mem[_1972]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_1972 + ceil32(return_data.size) + 260 len (32 * mem[_1972]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_1972 + ceil32(return_data.size) + 96] = 30
                                                    mem[_1972 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    call distributionPoolAddress with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_1972 + ceil32(return_data.size) + 160] = 30
                                                    mem[_1972 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not distributionPoolAddress:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    mem[_1972 + ceil32(return_data.size) + 224] = 38
                                                    mem[_1972 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if 0 > balanceOf[address(this.address)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1972 + ceil32(return_data.size) + 294 len 26] >> 48,
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
                                                        mem[_1972 + ceil32(return_data.size) + 320] = 26
                                                        mem[_1972 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                        mem[_1972 + ceil32(return_data.size) + 384] = 26
                                                        mem[_1972 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                        mem[_1972 + ceil32(return_data.size) + 448] = 30
                                                        mem[_1972 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                        mem[_1972 + ceil32(return_data.size) + 512] = 2
                                                        mem[_1972 + ceil32(return_data.size) + 544] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_1972 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _1972 + (2 * ceil32(return_data.size)) + 608
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_1972 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 612] = 0
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 644] = 0
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 676] = 160
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 772] = 2
                                                        idx = 0
                                                        s = _1972 + (2 * ceil32(return_data.size)) + 804
                                                        t = _1972 + ceil32(return_data.size) + 544
                                                        while idx < mem[_1972 + ceil32(return_data.size) + 512]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, 160, address(this.address), block.timestamp, mem[_1972 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_1972 + ceil32(return_data.size) + 512]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 608] = 30
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 708] = 30
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 770] = 0
                                                            revert with memory
                                                              from _1972 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 100
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 708] = 36
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from _1972 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 132
                                                        if not uniswapV2RouterAddress:
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 708] = 34
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                            mem[_1972 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from _1972 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 132
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 708] = 0
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 740] = 0
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 772] = 0
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 804] = 0
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args mem[_1972 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        mem[_1972 + (4 * ceil32(return_data.size)) + 672] = 0
                                                        mem[_1972 + (4 * ceil32(return_data.size)) + 704] = 0
                                                        mem[_1972 + (4 * ceil32(return_data.size)) + 736] = 0
                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                            mem[_1972 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                        mem[_1972 + (4 * ceil32(return_data.size)) + 672] = 2
                                                        mem[_1972 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_1972 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _1972 + (6 * ceil32(return_data.size)) + 768
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_1972 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 804] = 0
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 836] = 160
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 932] = 2
                                                        idx = 0
                                                        s = _1972 + (6 * ceil32(return_data.size)) + 964
                                                        t = _1972 + (4 * ceil32(return_data.size)) + 704
                                                        while idx < mem[_1972 + (4 * ceil32(return_data.size)) + 672]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_1972 + (6 * ceil32(return_data.size)) + 932 len (32 * mem[_1972 + (4 * ceil32(return_data.size)) + 672]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: transfer from the zero address',
                                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                        if not this.address:
                                                            revert with 0, 
                                                                        'ERC20: transfer to the zero address',
                                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 768] = 38
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[_1972 + (6 * ceil32(return_data.size)) + 970] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 970 len (9 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow', mem[_1972 + (6 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 900] = 64
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 932] = mem[128]
                                                        mem[_1972 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[mem[128] + _1972 + (6 * ceil32(return_data.size)) + 964] = 0
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_1972 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[128])])
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        mem[_1972 + ceil32(return_data.size) + 320] = 26
                                                        mem[_1972 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                        mem[_1972 + ceil32(return_data.size) + 384] = 26
                                                        mem[_1972 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                        mem[_1972 + ceil32(return_data.size) + 448] = 30
                                                        mem[_1972 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[_1972 + ceil32(return_data.size) + 512] = 2
                                                        mem[_1972 + ceil32(return_data.size) + 544] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_1972 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _1972 + (2 * ceil32(return_data.size)) + 608
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_1972 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 644] = 0
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 676] = 160
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 772] = 2
                                                        idx = 0
                                                        s = _1972 + (2 * ceil32(return_data.size)) + 804
                                                        t = _1972 + ceil32(return_data.size) + 544
                                                        while idx < mem[_1972 + ceil32(return_data.size) + 512]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                        mem[_1972 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _1972 + (2 * ceil32(return_data.size)) + (32 * mem[_1972 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4510 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_4510] = 30
                                                        mem[_4510 + 32] = 'SafeMath: subtraction overflow'
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
                                                        _4790 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_4790 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_4790]:
                                                            revert with 0, 50
                                                        mem[_4790 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_4790 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _4790 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_4790]:
                                                            revert with 0, 50
                                                        mem[_4790 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_4790 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_4790 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_4790 + ceil32(return_data.size) + 132] = 0
                                                        mem[_4790 + ceil32(return_data.size) + 164] = 160
                                                        mem[_4790 + ceil32(return_data.size) + 260] = mem[_4790]
                                                        idx = 0
                                                        s = _4790 + ceil32(return_data.size) + 292
                                                        t = _4790 + 32
                                                        while idx < mem[_4790]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_4790 + ceil32(return_data.size) + 196] = this.address
                                                        mem[_4790 + ceil32(return_data.size) + 228] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _4790 + ceil32(return_data.size) + (32 * mem[_4790]) + -mem[64] + 288]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _5370 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_5370] = 38
                                                        mem[_5370 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5370 + 70 len 26]
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
                                                        mem[mem[64] + 68] = mem[128]
                                                        mem[mem[64] + 100 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[mem[128] + mem[64] + 100] = 0
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                                else:
                                                    if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address]:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    _1910 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1910] = 26
                                                    mem[_1910 + 32] = 'SafeMath: division by zero'
                                                    if balanceOf[this.address] * rewardsFee / 100:
                                                        if balanceOf[this.address] * rewardsFee / 100 and stor24 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * rewardsFee / 100 * stor24 / balanceOf[this.address] * rewardsFee / 100 != stor24:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        _1984 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1984] = 26
                                                        mem[_1984 + 32] = 'SafeMath: division by zero'
                                                        _2004 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_2004 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_2004]:
                                                            revert with 0, 50
                                                        mem[_2004 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_2004 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2004 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_2004]:
                                                            revert with 0, 50
                                                        mem[_2004 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                                        emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor24 / 100), this.address, uniswapV2RouterAddress);
                                                        mem[_2004 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_2004 + ceil32(return_data.size) + 100] = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                                        mem[_2004 + ceil32(return_data.size) + 132] = 0
                                                        mem[_2004 + ceil32(return_data.size) + 164] = 160
                                                        mem[_2004 + ceil32(return_data.size) + 260] = mem[_2004]
                                                        idx = 0
                                                        s = _2004 + ceil32(return_data.size) + 292
                                                        t = _2004 + 32
                                                        while idx < mem[_2004]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address] * rewardsFee / 100 * stor24 / 100, 0, 160, address(this.address), block.timestamp, mem[_2004 + ceil32(return_data.size) + 260 len (32 * mem[_2004]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_2004 + ceil32(return_data.size) + 96] = 30
                                                        mem[_2004 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        call distributionPoolAddress with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_2004 + ceil32(return_data.size) + 160] = 30
                                                        mem[_2004 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * rewardsFee / 100 * stor24 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor24 / 100:
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not distributionPoolAddress:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        mem[_2004 + ceil32(return_data.size) + 224] = 38
                                                        mem[_2004 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) > balanceOf[address(this.address)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2004 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                                        if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)):
                                                            revert with 0, 17
                                                        if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) < balanceOf[stor17]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                                        emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)), this.address, distributionPoolAddress);
                                                        if not balanceOf[this.address]:
                                                            mem[_2004 + ceil32(return_data.size) + 320] = 26
                                                            mem[_2004 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                            mem[_2004 + ceil32(return_data.size) + 384] = 26
                                                            mem[_2004 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                            mem[_2004 + ceil32(return_data.size) + 448] = 30
                                                            mem[_2004 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                            mem[_2004 + ceil32(return_data.size) + 512] = 2
                                                            mem[_2004 + ceil32(return_data.size) + 544] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2004 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _2004 + (2 * ceil32(return_data.size)) + 608
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2004 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = 0
                                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 612] = 0
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 644] = 0
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 676] = 160
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 772] = 2
                                                            idx = 0
                                                            s = _2004 + (2 * ceil32(return_data.size)) + 804
                                                            t = _2004 + ceil32(return_data.size) + 544
                                                            while idx < mem[_2004 + ceil32(return_data.size) + 512]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, 160, address(this.address), block.timestamp, mem[_2004 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_2004 + ceil32(return_data.size) + 512]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 608] = 30
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                            if eth.balance(this.address) > eth.balance(this.address):
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 708] = 30
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 770] = 0
                                                                revert with memory
                                                                  from _2004 + (2 * ceil32(return_data.size)) + 672
                                                                   len ceil32(return_data.size) + 100
                                                            if eth.balance(this.address) < eth.balance(this.address):
                                                                revert with 0, 17
                                                            if not this.address:
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 708] = 36
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _2004 + (2 * ceil32(return_data.size)) + 672
                                                                   len ceil32(return_data.size) + 132
                                                            if not uniswapV2RouterAddress:
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 708] = 34
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                                mem[_2004 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _2004 + (2 * ceil32(return_data.size)) + 672
                                                                   len ceil32(return_data.size) + 132
                                                            allowance[address(this.address)][stor14].field_0 = 0
                                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 708] = 0
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 740] = 0
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 772] = 0
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 804] = 0
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                 gas gas_remaining wei
                                                                args mem[_2004 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            mem[_2004 + (4 * ceil32(return_data.size)) + 672] = 0
                                                            mem[_2004 + (4 * ceil32(return_data.size)) + 704] = 0
                                                            mem[_2004 + (4 * ceil32(return_data.size)) + 736] = 0
                                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                mem[_2004 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                            mem[_2004 + (4 * ceil32(return_data.size)) + 672] = 2
                                                            mem[_2004 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2004 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _2004 + (6 * ceil32(return_data.size)) + 768
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2004 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_2004 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2004 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                            mem[_2004 + (6 * ceil32(return_data.size)) + 804] = 0
                                                            mem[_2004 + (6 * ceil32(return_data.size)) + 836] = 160
                                                            mem[_2004 + (6 * ceil32(return_data.size)) + 932] = 2
                                                            idx = 0
                                                            s = _2004 + (6 * ceil32(return_data.size)) + 964
                                                            t = _2004 + (4 * ceil32(return_data.size)) + 704
                                                            while idx < mem[_2004 + (4 * ceil32(return_data.size)) + 672]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_2004 + (6 * ceil32(return_data.size)) + 868] = this.address
                                                            mem[_2004 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _2004 + (6 * ceil32(return_data.size)) + (32 * mem[_2004 + (4 * ceil32(return_data.size)) + 672]) + -mem[64] + 960]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _5361 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_5361] = 38
                                                            mem[_5361 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5361 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                        else:
                                                            if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                                revert with 0, 17
                                                            if not balanceOf[this.address]:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            mem[_2004 + ceil32(return_data.size) + 320] = 26
                                                            mem[_2004 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                            mem[_2004 + ceil32(return_data.size) + 384] = 26
                                                            mem[_2004 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                            mem[_2004 + ceil32(return_data.size) + 448] = 30
                                                            mem[_2004 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                                revert with 0, 17
                                                            mem[_2004 + ceil32(return_data.size) + 512] = 2
                                                            mem[_2004 + ceil32(return_data.size) + 544] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2004 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _2004 + (2 * ceil32(return_data.size)) + 608
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2004 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            allowance[address(this.address)][stor14].field_255 = 0
                                                            emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 644] = 0
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 676] = 160
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 772] = 2
                                                            idx = 0
                                                            s = _2004 + (2 * ceil32(return_data.size)) + 804
                                                            t = _2004 + ceil32(return_data.size) + 544
                                                            while idx < mem[_2004 + ceil32(return_data.size) + 512]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                            mem[_2004 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _2004 + (2 * ceil32(return_data.size)) + (32 * mem[_2004 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _4506 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_4506] = 30
                                                            mem[_4506 + 32] = 'SafeMath: subtraction overflow'
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
                                                            _4782 = mem[64]
                                                            mem[mem[64]] = 2
                                                            mem[64] = mem[64] + 96
                                                            mem[_4782 + 32 len 64] = call.data[calldata.size len 64]
                                                            if 0 >= mem[_4782]:
                                                                revert with 0, 50
                                                            mem[_4782 + 32] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_4782 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _4782 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 1 >= mem[_4782]:
                                                                revert with 0, 50
                                                            mem[_4782 + 64] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_4782 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_4782 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                            mem[_4782 + ceil32(return_data.size) + 132] = 0
                                                            mem[_4782 + ceil32(return_data.size) + 164] = 160
                                                            mem[_4782 + ceil32(return_data.size) + 260] = mem[_4782]
                                                            idx = 0
                                                            s = _4782 + ceil32(return_data.size) + 292
                                                            t = _4782 + 32
                                                            while idx < mem[_4782]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_4782 + ceil32(return_data.size) + 196] = this.address
                                                            mem[_4782 + ceil32(return_data.size) + 228] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _4782 + ceil32(return_data.size) + (32 * mem[_4782]) + -mem[64] + 288]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _5358 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_5358] = 38
                                                            mem[_5358 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5358 + 70 len 26]
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
                                                        mem[mem[64] + 68] = mem[128]
                                                        mem[mem[64] + 100 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[mem[128] + mem[64] + 100] = 0
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                                    else:
                                                        _1966 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1966] = 26
                                                        mem[_1966 + 32] = 'SafeMath: division by zero'
                                                        _1990 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_1990 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_1990]:
                                                            revert with 0, 50
                                                        mem[_1990 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_1990 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _1990 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_1990]:
                                                            revert with 0, 50
                                                        mem[_1990 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_1990 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1990 + ceil32(return_data.size) + 100] = 0
                                                        mem[_1990 + ceil32(return_data.size) + 132] = 0
                                                        mem[_1990 + ceil32(return_data.size) + 164] = 160
                                                        mem[_1990 + ceil32(return_data.size) + 260] = mem[_1990]
                                                        idx = 0
                                                        s = _1990 + ceil32(return_data.size) + 292
                                                        t = _1990 + 32
                                                        while idx < mem[_1990]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_1990 + ceil32(return_data.size) + 196] = this.address
                                                        mem[_1990 + ceil32(return_data.size) + 228] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _1990 + ceil32(return_data.size) + (32 * mem[_1990]) + -mem[64] + 288]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3155 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_3155] = 30
                                                        mem[_3155 + 32] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        call distributionPoolAddress with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3185 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_3185] = 30
                                                        mem[_3185 + 32] = 'SafeMath: subtraction overflow'
                                                        if 0 > balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * rewardsFee / 100 < 0:
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not distributionPoolAddress:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _3223 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3223] = 38
                                                        mem[_3223 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3223 + 70 len 26]
                                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                        if balanceOf[address(this.address)] < balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(this.address)] -= balanceOf[this.address] * rewardsFee / 100
                                                        if balanceOf[stor17] > !(balanceOf[this.address] * rewardsFee / 100):
                                                            revert with 0, 17
                                                        if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) < balanceOf[stor17]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        mem[0] = distributionPoolAddress
                                                        mem[32] = 0
                                                        balanceOf[stor17] += balanceOf[this.address] * rewardsFee / 100
                                                        emit Transfer((balanceOf[this.address] * rewardsFee / 100), this.address, distributionPoolAddress);
                                                        if not balanceOf[this.address]:
                                                            _3331 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3331] = 26
                                                            mem[_3331 + 32] = 'SafeMath: division by zero'
                                                            _3355 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3355] = 26
                                                            mem[_3355 + 32] = 'SafeMath: division by zero'
                                                            _3367 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3367] = 30
                                                            mem[_3367 + 32] = 'SafeMath: subtraction overflow'
                                                            _3382 = mem[64]
                                                            mem[mem[64]] = 2
                                                            mem[64] = mem[64] + 96
                                                            mem[_3382 + 32 len 64] = call.data[calldata.size len 64]
                                                            if 0 >= mem[_3382]:
                                                                revert with 0, 50
                                                            mem[_3382 + 32] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_3382 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _3382 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 1 >= mem[_3382]:
                                                                revert with 0, 50
                                                            mem[_3382 + 64] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = 0
                                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                                            mem[_3382 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_3382 + ceil32(return_data.size) + 100] = 0
                                                            mem[_3382 + ceil32(return_data.size) + 132] = 0
                                                            mem[_3382 + ceil32(return_data.size) + 164] = 160
                                                            mem[_3382 + ceil32(return_data.size) + 260] = mem[_3382]
                                                            idx = 0
                                                            s = _3382 + ceil32(return_data.size) + 292
                                                            t = _3382 + 32
                                                            while idx < mem[_3382]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, 160, address(this.address), block.timestamp, mem[_3382 + ceil32(return_data.size) + 260 len (32 * mem[_3382]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_3382 + ceil32(return_data.size) + 96] = 30
                                                            mem[_3382 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
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
                                                            mem[_3382 + ceil32(return_data.size) + 228] = 0
                                                            mem[_3382 + ceil32(return_data.size) + 260] = 0
                                                            mem[_3382 + ceil32(return_data.size) + 292] = 0
                                                            mem[_3382 + ceil32(return_data.size) + 324] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                 gas gas_remaining wei
                                                                args this.address, 0, 0, 0, 0, block.timestamp
                                                            mem[_3382 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                0,
                                                            mem[_3382 + (2 * ceil32(return_data.size)) + 160] = 2
                                                            mem[_3382 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_3382 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_3382 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 292] = 0
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 324] = 160
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 420] = 2
                                                            idx = 0
                                                            s = _3382 + (4 * ceil32(return_data.size)) + 452
                                                            t = _3382 + (2 * ceil32(return_data.size)) + 192
                                                            while idx < mem[_3382 + (2 * ceil32(return_data.size)) + 160]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3382 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_3382 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 260] = 32
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 292] = 37
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer from the zero ad'
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 356] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _3382 + (4 * ceil32(return_data.size)) + 256
                                                                   len (5 * ceil32(return_data.size)) + 132
                                                            if not this.address:
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 260] = 32
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 292] = 35
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer to the zero addr'
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 356] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _3382 + (4 * ceil32(return_data.size)) + 256
                                                                   len (5 * ceil32(return_data.size)) + 132
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 256] = 38
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 356] = 32
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 388] = 38
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 420 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 458] = 0
                                                                revert with memory
                                                                  from _3382 + (4 * ceil32(return_data.size)) + 352
                                                                   len (5 * ceil32(return_data.size)) + 132
                                                            if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                            if balanceOf[this.address] > !ext_call.return_data[0]:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 356] = 32
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 388] = 27
                                                                mem[_3382 + (4 * ceil32(return_data.size)) + 420] = 'SafeMath: addition overflow'
                                                                revert with memory
                                                                  from _3382 + (4 * ceil32(return_data.size)) + 352
                                                                   len (5 * ceil32(return_data.size)) + 100
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                            emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 352] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 356] = msg.sender
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 388] = 64
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 420] = mem[128]
                                                            mem[_3382 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                            if ceil32(mem[128]) > mem[128]:
                                                                mem[mem[128] + _3382 + (4 * ceil32(return_data.size)) + 452] = 0
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                                                 gas gas_remaining wei
                                                                args mem[_3382 + (4 * ceil32(return_data.size)) + 356 len ceil32(mem[128]) + (5 * ceil32(return_data.size)) + 96]
                                                        else:
                                                            if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                                revert with 0, 17
                                                            if not balanceOf[this.address]:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            _3349 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3349] = 26
                                                            mem[_3349 + 32] = 'SafeMath: division by zero'
                                                            _3361 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3361] = 26
                                                            mem[_3361 + 32] = 'SafeMath: division by zero'
                                                            _3373 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3373] = 30
                                                            mem[_3373 + 32] = 'SafeMath: subtraction overflow'
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                                revert with 0, 17
                                                            _3434 = mem[64]
                                                            mem[mem[64]] = 2
                                                            mem[64] = mem[64] + 96
                                                            mem[_3434 + 32 len 64] = call.data[calldata.size len 64]
                                                            if 0 >= mem[_3434]:
                                                                revert with 0, 50
                                                            mem[_3434 + 32] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_3434 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _3434 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 1 >= mem[_3434]:
                                                                revert with 0, 50
                                                            mem[_3434 + 64] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            allowance[address(this.address)][stor14].field_255 = 0
                                                            emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                            mem[_3434 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_3434 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            mem[_3434 + ceil32(return_data.size) + 132] = 0
                                                            mem[_3434 + ceil32(return_data.size) + 164] = 160
                                                            mem[_3434 + ceil32(return_data.size) + 260] = mem[_3434]
                                                            idx = 0
                                                            s = _3434 + ceil32(return_data.size) + 292
                                                            t = _3434 + 32
                                                            while idx < mem[_3434]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_3434 + ceil32(return_data.size) + 260 len (32 * mem[_3434]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_3434 + ceil32(return_data.size) + 96] = 30
                                                            mem[_3434 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
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
                                                            mem[_3434 + ceil32(return_data.size) + 228] = 0
                                                            mem[_3434 + ceil32(return_data.size) + 260] = 0
                                                            mem[_3434 + ceil32(return_data.size) + 292] = 0
                                                            mem[_3434 + ceil32(return_data.size) + 324] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                 gas gas_remaining wei
                                                                args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                            mem[_3434 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                                            mem[_3434 + (2 * ceil32(return_data.size)) + 160] = 2
                                                            mem[_3434 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_3434 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _3434 + (4 * ceil32(return_data.size)) + 256
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_3434 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 292] = 0
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 324] = 160
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 420] = 2
                                                            idx = 0
                                                            s = _3434 + (4 * ceil32(return_data.size)) + 452
                                                            t = _3434 + (2 * ceil32(return_data.size)) + 192
                                                            while idx < mem[_3434 + (2 * ceil32(return_data.size)) + 160]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3434 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_3434 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 260] = 32
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 292] = 37
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer from the zero ad'
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 356] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _3434 + (4 * ceil32(return_data.size)) + 256
                                                                   len (5 * ceil32(return_data.size)) + 132
                                                            if not this.address:
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 260] = 32
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 292] = 35
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer to the zero addr'
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 356] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _3434 + (4 * ceil32(return_data.size)) + 256
                                                                   len (5 * ceil32(return_data.size)) + 132
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 256] = 38
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 356] = 32
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 388] = 38
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 420 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 458] = 0
                                                                revert with memory
                                                                  from _3434 + (4 * ceil32(return_data.size)) + 352
                                                                   len (5 * ceil32(return_data.size)) + 132
                                                            if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                            if balanceOf[this.address] > !ext_call.return_data[0]:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 356] = 32
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 388] = 27
                                                                mem[_3434 + (4 * ceil32(return_data.size)) + 420] = 'SafeMath: addition overflow'
                                                                revert with memory
                                                                  from _3434 + (4 * ceil32(return_data.size)) + 352
                                                                   len (5 * ceil32(return_data.size)) + 100
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                            emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 352] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 356] = msg.sender
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 388] = 64
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 420] = mem[128]
                                                            mem[_3434 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                            if ceil32(mem[128]) > mem[128]:
                                                                mem[mem[128] + _3434 + (4 * ceil32(return_data.size)) + 452] = 0
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                                                 gas gas_remaining wei
                                                                args mem[_3434 + (4 * ceil32(return_data.size)) + 356 len ceil32(mem[128]) + (5 * ceil32(return_data.size)) + 96]
                                            else:
                                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = 26
                                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = 2
                                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 32
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 36
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 'ERC20: approve from the zero add'
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289
                                                       len ceil32(return_data.size) + 132
                                                if not uniswapV2RouterAddress:
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 32
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 34
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 'ERC20: approve to the zero addre'
                                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289
                                                       len ceil32(return_data.size) + 132
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = 0
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 0
                                                emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 0
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
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + -mem[64] + 545]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1715 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1715] = 30
                                                mem[_1715 + 32] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call futurUsePoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not balanceOf[this.address]:
                                                    _1861 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1861] = 26
                                                    mem[_1861 + 32] = 'SafeMath: division by zero'
                                                    _1925 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1925] = 26
                                                    mem[_1925 + 32] = 'SafeMath: division by zero'
                                                    _1974 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_1974 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_1974]:
                                                        revert with 0, 50
                                                    mem[_1974 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_1974 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _1974 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_1974]:
                                                        revert with 0, 50
                                                    mem[_1974 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[_1974 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_1974 + ceil32(return_data.size) + 100] = 0
                                                    mem[_1974 + ceil32(return_data.size) + 132] = 0
                                                    mem[_1974 + ceil32(return_data.size) + 164] = 160
                                                    mem[_1974 + ceil32(return_data.size) + 260] = mem[_1974]
                                                    idx = 0
                                                    s = _1974 + ceil32(return_data.size) + 292
                                                    t = _1974 + 32
                                                    while idx < mem[_1974]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_1974 + ceil32(return_data.size) + 260 len (32 * mem[_1974]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_1974 + ceil32(return_data.size) + 96] = 30
                                                    mem[_1974 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    call distributionPoolAddress with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_1974 + ceil32(return_data.size) + 160] = 30
                                                    mem[_1974 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not distributionPoolAddress:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    mem[_1974 + ceil32(return_data.size) + 224] = 38
                                                    mem[_1974 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if 0 > balanceOf[address(this.address)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1974 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(this.address)] < 0:
                                                        revert with 0, 17
                                                    if balanceOf[stor17] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[stor17] < balanceOf[stor17]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor17] = balanceOf[stor17]
                                                    emit Transfer(0, this.address, distributionPoolAddress);
                                                    if balanceOf[this.address]:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        mem[_1974 + ceil32(return_data.size) + 320] = 26
                                                        mem[_1974 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                        mem[_1974 + ceil32(return_data.size) + 384] = 26
                                                        mem[_1974 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                        mem[_1974 + ceil32(return_data.size) + 448] = 30
                                                        mem[_1974 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[_1974 + ceil32(return_data.size) + 512] = 2
                                                        mem[_1974 + ceil32(return_data.size) + 544] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_1974 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _1974 + (2 * ceil32(return_data.size)) + 608
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_1974 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 644] = 0
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 676] = 160
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 772] = 2
                                                        idx = 0
                                                        s = _1974 + (2 * ceil32(return_data.size)) + 804
                                                        t = _1974 + ceil32(return_data.size) + 544
                                                        while idx < mem[_1974 + ceil32(return_data.size) + 512]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_1974 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_1974 + ceil32(return_data.size) + 512]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 608] = 30
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 708] = 30
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 770] = 0
                                                            revert with memory
                                                              from _1974 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 100
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 708] = 36
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from _1974 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 132
                                                        if not uniswapV2RouterAddress:
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 708] = 34
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                            mem[_1974 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from _1974 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 132
                                                        allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                        emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 740] = 0
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 772] = 0
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 804] = 0
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args mem[_1974 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        mem[_1974 + (4 * ceil32(return_data.size)) + 672] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[_1974 + (4 * ceil32(return_data.size)) + 704] = 0
                                                        mem[_1974 + (4 * ceil32(return_data.size)) + 736] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                            mem[_1974 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                        mem[_1974 + (4 * ceil32(return_data.size)) + 672] = 2
                                                        mem[_1974 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_1974 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _1974 + (6 * ceil32(return_data.size)) + 768
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_1974 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_1974 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1974 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                        mem[_1974 + (6 * ceil32(return_data.size)) + 804] = 0
                                                        mem[_1974 + (6 * ceil32(return_data.size)) + 836] = 160
                                                        mem[_1974 + (6 * ceil32(return_data.size)) + 932] = 2
                                                        idx = 0
                                                        s = _1974 + (6 * ceil32(return_data.size)) + 964
                                                        t = _1974 + (4 * ceil32(return_data.size)) + 704
                                                        while idx < mem[_1974 + (4 * ceil32(return_data.size)) + 672]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_1974 + (6 * ceil32(return_data.size)) + 868] = this.address
                                                        mem[_1974 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _1974 + (6 * ceil32(return_data.size)) + (32 * mem[_1974 + (4 * ceil32(return_data.size)) + 672]) + -mem[64] + 960]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _5388 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_5388] = 38
                                                        mem[_5388 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5388 + 70 len 26]
                                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    else:
                                                        mem[_1974 + ceil32(return_data.size) + 320] = 26
                                                        mem[_1974 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                        mem[_1974 + ceil32(return_data.size) + 384] = 26
                                                        mem[_1974 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                        mem[_1974 + ceil32(return_data.size) + 448] = 30
                                                        mem[_1974 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                        mem[_1974 + ceil32(return_data.size) + 512] = 2
                                                        mem[_1974 + ceil32(return_data.size) + 544] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_1974 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _1974 + (2 * ceil32(return_data.size)) + 608
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_1974 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 612] = 0
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 644] = 0
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 676] = 160
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 772] = 2
                                                        idx = 0
                                                        s = _1974 + (2 * ceil32(return_data.size)) + 804
                                                        t = _1974 + ceil32(return_data.size) + 544
                                                        while idx < mem[_1974 + ceil32(return_data.size) + 512]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                        mem[_1974 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _1974 + (2 * ceil32(return_data.size)) + (32 * mem[_1974 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4517 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_4517] = 30
                                                        mem[_4517 + 32] = 'SafeMath: subtraction overflow'
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
                                                        _4804 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_4804 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_4804]:
                                                            revert with 0, 50
                                                        mem[_4804 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_4804 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _4804 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_4804]:
                                                            revert with 0, 50
                                                        mem[_4804 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_4804 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_4804 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_4804 + ceil32(return_data.size) + 132] = 0
                                                        mem[_4804 + ceil32(return_data.size) + 164] = 160
                                                        mem[_4804 + ceil32(return_data.size) + 260] = mem[_4804]
                                                        idx = 0
                                                        s = _4804 + ceil32(return_data.size) + 292
                                                        t = _4804 + 32
                                                        while idx < mem[_4804]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_4804 + ceil32(return_data.size) + 196] = this.address
                                                        mem[_4804 + ceil32(return_data.size) + 228] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _4804 + ceil32(return_data.size) + (32 * mem[_4804]) + -mem[64] + 288]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _5391 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_5391] = 38
                                                        mem[_5391 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5391 + 70 len 26]
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
                                                    mem[mem[64] + 68] = mem[128]
                                                    mem[mem[64] + 100 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[mem[128] + mem[64] + 100] = 0
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                                else:
                                                    if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address]:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    _1911 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1911] = 26
                                                    mem[_1911 + 32] = 'SafeMath: division by zero'
                                                    if balanceOf[this.address] * rewardsFee / 100:
                                                        if balanceOf[this.address] * rewardsFee / 100 and stor24 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * rewardsFee / 100 * stor24 / balanceOf[this.address] * rewardsFee / 100 != stor24:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        _1986 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1986] = 26
                                                        mem[_1986 + 32] = 'SafeMath: division by zero'
                                                        _2007 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_2007 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_2007]:
                                                            revert with 0, 50
                                                        mem[_2007 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_2007 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2007 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_2007]:
                                                            revert with 0, 50
                                                        mem[_2007 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                                        emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor24 / 100), this.address, uniswapV2RouterAddress);
                                                        mem[_2007 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_2007 + ceil32(return_data.size) + 100] = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                                        mem[_2007 + ceil32(return_data.size) + 132] = 0
                                                        mem[_2007 + ceil32(return_data.size) + 164] = 160
                                                        mem[_2007 + ceil32(return_data.size) + 260] = mem[_2007]
                                                        idx = 0
                                                        s = _2007 + ceil32(return_data.size) + 292
                                                        t = _2007 + 32
                                                        while idx < mem[_2007]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address] * rewardsFee / 100 * stor24 / 100, 0, 160, address(this.address), block.timestamp, mem[_2007 + ceil32(return_data.size) + 260 len (32 * mem[_2007]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_2007 + ceil32(return_data.size) + 96] = 30
                                                        mem[_2007 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        call distributionPoolAddress with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_2007 + ceil32(return_data.size) + 160] = 30
                                                        mem[_2007 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * rewardsFee / 100 * stor24 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor24 / 100:
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not distributionPoolAddress:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        mem[_2007 + ceil32(return_data.size) + 224] = 38
                                                        mem[_2007 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) > balanceOf[address(this.address)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2007 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                                        if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)):
                                                            revert with 0, 17
                                                        if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) < balanceOf[stor17]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                                        emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)), this.address, distributionPoolAddress);
                                                        if not balanceOf[this.address]:
                                                            mem[_2007 + ceil32(return_data.size) + 320] = 26
                                                            mem[_2007 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                            mem[_2007 + ceil32(return_data.size) + 384] = 26
                                                            mem[_2007 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                            mem[_2007 + ceil32(return_data.size) + 448] = 30
                                                            mem[_2007 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                            mem[_2007 + ceil32(return_data.size) + 512] = 2
                                                            mem[_2007 + ceil32(return_data.size) + 544] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2007 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _2007 + (2 * ceil32(return_data.size)) + 608
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2007 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = 0
                                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 612] = 0
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 644] = 0
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 676] = 160
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 772] = 2
                                                            idx = 0
                                                            s = _2007 + (2 * ceil32(return_data.size)) + 804
                                                            t = _2007 + ceil32(return_data.size) + 544
                                                            while idx < mem[_2007 + ceil32(return_data.size) + 512]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, 160, address(this.address), block.timestamp, mem[_2007 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_2007 + ceil32(return_data.size) + 512]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 608] = 30
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                            if eth.balance(this.address) > eth.balance(this.address):
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 708] = 30
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 770] = 0
                                                                revert with memory
                                                                  from _2007 + (2 * ceil32(return_data.size)) + 672
                                                                   len ceil32(return_data.size) + 100
                                                            if eth.balance(this.address) < eth.balance(this.address):
                                                                revert with 0, 17
                                                            if not this.address:
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 708] = 36
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _2007 + (2 * ceil32(return_data.size)) + 672
                                                                   len ceil32(return_data.size) + 132
                                                            if not uniswapV2RouterAddress:
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 708] = 34
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                                mem[_2007 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _2007 + (2 * ceil32(return_data.size)) + 672
                                                                   len ceil32(return_data.size) + 132
                                                            allowance[address(this.address)][stor14].field_0 = 0
                                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 708] = 0
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 740] = 0
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 772] = 0
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 804] = 0
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                 gas gas_remaining wei
                                                                args mem[_2007 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            mem[_2007 + (4 * ceil32(return_data.size)) + 672] = 0
                                                            mem[_2007 + (4 * ceil32(return_data.size)) + 704] = 0
                                                            mem[_2007 + (4 * ceil32(return_data.size)) + 736] = 0
                                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                mem[_2007 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                            mem[_2007 + (4 * ceil32(return_data.size)) + 672] = 2
                                                            mem[_2007 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2007 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2007 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_2007 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2007 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                            mem[_2007 + (6 * ceil32(return_data.size)) + 836] = 160
                                                            idx = 0
                                                            s = _2007 + (6 * ceil32(return_data.size)) + 964
                                                            t = _2007 + (4 * ceil32(return_data.size)) + 704
                                                            while idx < 2:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[_2007 + (6 * ceil32(return_data.size)) + 964 len 64]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            mem[_2007 + (6 * ceil32(return_data.size)) + 768] = 38
                                                            mem[_2007 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                            mem[_2007 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                            mem[_2007 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                            mem[_2007 + (6 * ceil32(return_data.size)) + 900] = 64
                                                            mem[_2007 + (6 * ceil32(return_data.size)) + 932] = mem[128]
                                                            mem[_2007 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                            if ceil32(mem[128]) > mem[128]:
                                                                mem[mem[128] + _2007 + (6 * ceil32(return_data.size)) + 964] = 0
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=mem[128], data=mem[_2007 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[128])])
                                                        else:
                                                            if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                                revert with 0, 17
                                                            if not balanceOf[this.address]:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            mem[_2007 + ceil32(return_data.size) + 320] = 26
                                                            mem[_2007 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                            mem[_2007 + ceil32(return_data.size) + 384] = 26
                                                            mem[_2007 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                            mem[_2007 + ceil32(return_data.size) + 448] = 30
                                                            mem[_2007 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                                revert with 0, 17
                                                            mem[_2007 + ceil32(return_data.size) + 512] = 2
                                                            mem[_2007 + ceil32(return_data.size) + 544] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2007 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _2007 + (2 * ceil32(return_data.size)) + 608
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2007 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            allowance[address(this.address)][stor14].field_255 = 0
                                                            emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 644] = 0
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 676] = 160
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 772] = 2
                                                            idx = 0
                                                            s = _2007 + (2 * ceil32(return_data.size)) + 804
                                                            t = _2007 + ceil32(return_data.size) + 544
                                                            while idx < mem[_2007 + ceil32(return_data.size) + 512]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                            mem[_2007 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _2007 + (2 * ceil32(return_data.size)) + (32 * mem[_2007 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _4512 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_4512] = 30
                                                            mem[_4512 + 32] = 'SafeMath: subtraction overflow'
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
                                                            _4794 = mem[64]
                                                            mem[mem[64]] = 2
                                                            mem[64] = mem[64] + 96
                                                            mem[_4794 + 32 len 64] = call.data[calldata.size len 64]
                                                            if 0 >= mem[_4794]:
                                                                revert with 0, 50
                                                            mem[_4794 + 32] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_4794 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _4794 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 1 >= mem[_4794]:
                                                                revert with 0, 50
                                                            mem[_4794 + 64] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_4794 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_4794 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                            mem[_4794 + ceil32(return_data.size) + 132] = 0
                                                            mem[_4794 + ceil32(return_data.size) + 164] = 160
                                                            mem[_4794 + ceil32(return_data.size) + 260] = mem[_4794]
                                                            idx = 0
                                                            s = _4794 + ceil32(return_data.size) + 292
                                                            t = _4794 + 32
                                                            while idx < mem[_4794]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_4794 + ceil32(return_data.size) + 260 len (32 * mem[_4794]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            mem[_4794 + ceil32(return_data.size) + 96] = 38
                                                            mem[_4794 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                            mem[_4794 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                            mem[_4794 + ceil32(return_data.size) + 196] = msg.sender
                                                            mem[_4794 + ceil32(return_data.size) + 228] = 64
                                                            mem[_4794 + ceil32(return_data.size) + 260] = mem[128]
                                                            mem[_4794 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                            if ceil32(mem[128]) > mem[128]:
                                                                mem[mem[128] + _4794 + ceil32(return_data.size) + 292] = 0
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=mem[128], data=mem[_4794 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                                    else:
                                                        _1967 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1967] = 26
                                                        mem[_1967 + 32] = 'SafeMath: division by zero'
                                                        _1992 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_1992 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_1992]:
                                                            revert with 0, 50
                                                        mem[_1992 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
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
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_1992 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1992 + ceil32(return_data.size) + 100] = 0
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
                                                        mem[_1992 + ceil32(return_data.size) + 196] = this.address
                                                        mem[_1992 + ceil32(return_data.size) + 228] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _1992 + ceil32(return_data.size) + (32 * mem[_1992]) + -mem[64] + 288]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3158 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_3158] = 30
                                                        mem[_3158 + 32] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        call distributionPoolAddress with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3188 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_3188] = 30
                                                        mem[_3188 + 32] = 'SafeMath: subtraction overflow'
                                                        if 0 > balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * rewardsFee / 100 < 0:
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not distributionPoolAddress:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _3232 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3232] = 38
                                                        mem[_3232 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3232 + 70 len 26]
                                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                        if balanceOf[address(this.address)] < balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(this.address)] -= balanceOf[this.address] * rewardsFee / 100
                                                        if balanceOf[stor17] > !(balanceOf[this.address] * rewardsFee / 100):
                                                            revert with 0, 17
                                                        if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) < balanceOf[stor17]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        mem[0] = distributionPoolAddress
                                                        mem[32] = 0
                                                        balanceOf[stor17] += balanceOf[this.address] * rewardsFee / 100
                                                        emit Transfer((balanceOf[this.address] * rewardsFee / 100), this.address, distributionPoolAddress);
                                                        if not balanceOf[this.address]:
                                                            _3334 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3334] = 26
                                                            mem[_3334 + 32] = 'SafeMath: division by zero'
                                                            _3358 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3358] = 26
                                                            mem[_3358 + 32] = 'SafeMath: division by zero'
                                                            _3370 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3370] = 30
                                                            mem[_3370 + 32] = 'SafeMath: subtraction overflow'
                                                            _3391 = mem[64]
                                                            mem[mem[64]] = 2
                                                            mem[64] = mem[64] + 96
                                                            mem[_3391 + 32 len 64] = call.data[calldata.size len 64]
                                                            if 0 >= mem[_3391]:
                                                                revert with 0, 50
                                                            mem[_3391 + 32] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_3391 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _3391 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 1 >= mem[_3391]:
                                                                revert with 0, 50
                                                            mem[_3391 + 64] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = 0
                                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                                            mem[_3391 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_3391 + ceil32(return_data.size) + 100] = 0
                                                            mem[_3391 + ceil32(return_data.size) + 132] = 0
                                                            mem[_3391 + ceil32(return_data.size) + 164] = 160
                                                            mem[_3391 + ceil32(return_data.size) + 260] = mem[_3391]
                                                            idx = 0
                                                            s = _3391 + ceil32(return_data.size) + 292
                                                            t = _3391 + 32
                                                            while idx < mem[_3391]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, 160, address(this.address), block.timestamp, mem[_3391 + ceil32(return_data.size) + 260 len (32 * mem[_3391]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_3391 + ceil32(return_data.size) + 96] = 30
                                                            mem[_3391 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
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
                                                            mem[_3391 + ceil32(return_data.size) + 228] = 0
                                                            mem[_3391 + ceil32(return_data.size) + 260] = 0
                                                            mem[_3391 + ceil32(return_data.size) + 292] = 0
                                                            mem[_3391 + ceil32(return_data.size) + 324] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                 gas gas_remaining wei
                                                                args this.address, 0, 0, 0, 0, block.timestamp
                                                            mem[_3391 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                0,
                                                            mem[_3391 + (2 * ceil32(return_data.size)) + 160] = 2
                                                            mem[_3391 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_3391 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _3391 + (4 * ceil32(return_data.size)) + 256
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_3391 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_3391 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_3391 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                                            mem[_3391 + (4 * ceil32(return_data.size)) + 292] = 0
                                                            mem[_3391 + (4 * ceil32(return_data.size)) + 324] = 160
                                                            mem[_3391 + (4 * ceil32(return_data.size)) + 420] = 2
                                                            idx = 0
                                                            s = _3391 + (4 * ceil32(return_data.size)) + 452
                                                            t = _3391 + (2 * ceil32(return_data.size)) + 192
                                                            while idx < mem[_3391 + (2 * ceil32(return_data.size)) + 160]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_3391 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                            mem[_3391 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _3391 + (4 * ceil32(return_data.size)) + (32 * mem[_3391 + (2 * ceil32(return_data.size)) + 160]) + -mem[64] + 448]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _5385 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_5385] = 38
                                                            mem[_5385 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5385 + 70 len 26]
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
                                                            mem[mem[64] + 68] = mem[128]
                                                            mem[mem[64] + 100 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                            if ceil32(mem[128]) > mem[128]:
                                                                mem[mem[128] + mem[64] + 100] = 0
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                                        else:
                                                            if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                                revert with 0, 17
                                                            if not balanceOf[this.address]:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            _3352 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3352] = 26
                                                            mem[_3352 + 32] = 'SafeMath: division by zero'
                                                            _3364 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3364] = 26
                                                            mem[_3364 + 32] = 'SafeMath: division by zero'
                                                            _3376 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3376] = 30
                                                            mem[_3376 + 32] = 'SafeMath: subtraction overflow'
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                                revert with 0, 17
                                                            _3440 = mem[64]
                                                            mem[mem[64]] = 2
                                                            mem[64] = mem[64] + 96
                                                            mem[_3440 + 32 len 64] = call.data[calldata.size len 64]
                                                            if 0 >= mem[_3440]:
                                                                revert with 0, 50
                                                            mem[_3440 + 32] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_3440 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _3440 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 1 >= mem[_3440]:
                                                                revert with 0, 50
                                                            mem[_3440 + 64] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            allowance[address(this.address)][stor14].field_255 = 0
                                                            emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                            mem[_3440 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_3440 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            mem[_3440 + ceil32(return_data.size) + 132] = 0
                                                            mem[_3440 + ceil32(return_data.size) + 164] = 160
                                                            mem[_3440 + ceil32(return_data.size) + 260] = mem[_3440]
                                                            idx = 0
                                                            s = _3440 + ceil32(return_data.size) + 292
                                                            t = _3440 + 32
                                                            while idx < mem[_3440]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_3440 + ceil32(return_data.size) + 196] = this.address
                                                            mem[_3440 + ceil32(return_data.size) + 228] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _3440 + ceil32(return_data.size) + (32 * mem[_3440]) + -mem[64] + 288]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _4514 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_4514] = 30
                                                            mem[_4514 + 32] = 'SafeMath: subtraction overflow'
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
                                                            _4798 = mem[64]
                                                            mem[mem[64]] = 2
                                                            mem[64] = mem[64] + 96
                                                            mem[_4798 + 32 len 64] = call.data[calldata.size len 64]
                                                            if 0 >= mem[_4798]:
                                                                revert with 0, 50
                                                            mem[_4798 + 32] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_4798 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _4798 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 1 >= mem[_4798]:
                                                                revert with 0, 50
                                                            mem[_4798 + 64] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_4798 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_4798 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                            mem[_4798 + ceil32(return_data.size) + 132] = 0
                                                            mem[_4798 + ceil32(return_data.size) + 164] = 160
                                                            mem[_4798 + ceil32(return_data.size) + 260] = mem[_4798]
                                                            idx = 0
                                                            s = _4798 + ceil32(return_data.size) + 292
                                                            t = _4798 + 32
                                                            while idx < mem[_4798]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_4798 + ceil32(return_data.size) + 260 len (32 * mem[_4798]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            mem[_4798 + ceil32(return_data.size) + 96] = 38
                                                            mem[_4798 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                            mem[_4798 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                            mem[_4798 + ceil32(return_data.size) + 196] = msg.sender
                                                            mem[_4798 + ceil32(return_data.size) + 228] = 64
                                                            mem[_4798 + ceil32(return_data.size) + 260] = mem[128]
                                                            mem[_4798 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                            if ceil32(mem[128]) > mem[128]:
                                                                mem[mem[128] + _4798 + ceil32(return_data.size) + 292] = 0
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.createNode(address arg1, string arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=mem[128], data=mem[_4798 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
