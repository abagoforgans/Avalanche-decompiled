contract main {




// =====================  Runtime code  =====================


#
#  - createNodeWithTokens(string arg1)
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
    call nodeRewardManagerAddress.0x88fe6553 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function getNodePrice() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0xf1fec2b8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getClaimTime() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x27b3bf11 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getGasDistri() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0xdec14726 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDistriCount() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0xfb10d6fb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRewardPerNode() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x613ff46f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalStakedReward() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x8a327eaa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalCreatedNodes() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0xb8527aef with:
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

function changeGasDistri(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0xef9bb988 with:
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
    call nodeRewardManagerAddress.0xcece91eb with:
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
    call nodeRewardManagerAddress.0xd1871a89 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAutoDistri() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x85c44d9d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function changeRewardPerNode(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0xc6faedc8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x4491a7e4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function changeAutoDistri(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0xdab0882a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function distributeRewards() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0x88fe6553 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x619a635e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
                    'ARAK: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor28[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ARAK: Automated market maker pair is already set to that value'
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
    staticcall nodeRewardManagerAddress.0x41ac82b0 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x619a635e with:
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ARAK: The router already has that address'
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
    staticcall nodeRewardManagerAddress.0x41ac82b0 with:
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
    staticcall nodeRewardManagerAddress.0x334de3a2 with:
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
    staticcall nodeRewardManagerAddress.0x41ac82b0 with:
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
    staticcall nodeRewardManagerAddress.0x4a389fae with:
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
    staticcall nodeRewardManagerAddress.0x41ac82b0 with:
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
    staticcall nodeRewardManagerAddress.0xc92819ce with:
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
    staticcall nodeRewardManagerAddress.0x41ac82b0 with:
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
    staticcall nodeRewardManagerAddress.0x5759fb02 with:
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ARAK:  creation from the zero address'
    if stor27[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ARAK: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ARAK: futur and rewardsPool cannot cashout rewards'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x619a635e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ARAK: You don't have enough reward to cash out'
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
                mem[ceil32(return_data.size) + 160] = 2
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
                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
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
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ext_call.return_data[0] > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
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
                if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * cashoutFee / ext_call.return_data[0] != cashoutFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 160] = 2
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
                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
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
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                0
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
    call nodeRewardManagerAddress.0x5c298b1c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ARAK:  creation from the zero address'
    if stor27[address(msg.sender)]:
        revert with 0, 'ARAKT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ARAK: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ARAK: futur and rewardsPool cannot cashout rewards'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0xa6e15cc4 with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ARAK: You don't have enough reward to cash out'
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
                mem[ceil32(return_data.size) + 160] = 2
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
                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
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
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ext_call.return_data[0] > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
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
                if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * cashoutFee / ext_call.return_data[0] != cashoutFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 160] = 2
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
                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
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
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                0
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
    call nodeRewardManagerAddress.0x6edb7002 with:
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
        if unknown_0x8013858b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x48b75044(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x19165587(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x313ce567(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 18
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
                        require unknown_0x2bb14e1d(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return rewardsFee
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
                    staticcall nodeRewardManagerAddress.0x41ac82b0 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NO NODE OWNER'
                    require ext_code.size(nodeRewardManagerAddress)
                    staticcall nodeRewardManagerAddress.0x619a635e with:
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
                staticcall nodeRewardManagerAddress.0x41ac82b0 with:
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
                staticcall nodeRewardManagerAddress.0x334de3a2 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _439 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _482 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _439 + _482 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_482)] = mem[ceil32(return_data.size) + _439 + 160 len ceil32(_482)]
                if ceil32(_482) > _482:
                    mem[_482 + (2 * ceil32(return_data.size)) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _482
                mem[mem[64] + 64 len ceil32(_482)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_482)]
                if ceil32(_482) > _482:
                    mem[_482 + mem[64] + 64] = 0
                return Array(len=_482, data=mem[mem[64] + 64 len ceil32(_482)])
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
                        call nodeRewardManagerAddress.0xef9bb988 with:
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
                    staticcall nodeRewardManagerAddress.0x41ac82b0 with:
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
                    staticcall nodeRewardManagerAddress.0x4a389fae with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _464 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _515 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _464 + _515 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_515)] = mem[ceil32(return_data.size) + _464 + 160 len ceil32(_515)]
                    if ceil32(_515) <= _515:
                        _1652 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _515
                        mem[mem[64] + 64 len ceil32(_515)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_515)]
                        if ceil32(_515) <= _515:
                            return Array(len=_515, data=mem[mem[64] + 64 len ceil32(_515)])
                        mem[_515 + mem[64] + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_515) + _1652 + -mem[64] + 64
                    mem[_515 + (2 * ceil32(return_data.size)) + 160] = 0
                    _1653 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _515
                    mem[mem[64] + 64 len ceil32(_515)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_515)]
                    if ceil32(_515) <= _515:
                        return Array(len=_515, data=mem[mem[64] + 64 len ceil32(_515)])
                    mem[_515 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_515) + _1653 + -mem[64] + 64
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
                        staticcall nodeRewardManagerAddress.0x8a327eaa with:
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
                        revert with 0, 'ARAK:  creation from the zero address'
                    if stor27[address(msg.sender)]:
                        revert with 0, 'MANIA CSHT: Blacklisted address'
                    if futurUsePoolAddress == msg.sender:
                        revert with 0, 'ARAK: futur and rewardsPool cannot cashout rewards'
                    if distributionPoolAddress == msg.sender:
                        revert with 0, 'ARAK: futur and rewardsPool cannot cashout rewards'
                    mem[132] = msg.sender
                    require ext_code.size(nodeRewardManagerAddress)
                    staticcall nodeRewardManagerAddress.0x619a635e with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'ARAK: You don't have enough reward to cash out'
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
                                _1707 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1707] = 30
                                mem[_1707 + 32] = 'SafeMath: subtraction overflow'
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
                                _1877 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1877] = 38
                                mem[_1877 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] > balanceOf[stor17]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1877 + 70 len 26]
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
                                _1706 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1706] = 30
                                mem[_1706 + 32] = 'SafeMath: subtraction overflow'
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
                                _1874 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1874] = 38
                                mem[_1874 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1874 + 70 len 26]
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
                    call nodeRewardManagerAddress.0x5c298b1c with:
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
                        call nodeRewardManagerAddress.0x88fe6553 with:
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
                        call nodeRewardManagerAddress.0xc6faedc8 with:
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
                            revert with 0, 'ARAK: The router already has that address'
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
                                revert with 0, 'ARAK:  creation from the zero address'
                            if stor27[address(msg.sender)]:
                                revert with 0, 'ARAKT: Blacklisted address'
                            if futurUsePoolAddress == msg.sender:
                                revert with 0, 'ARAK: futur and rewardsPool cannot cashout rewards'
                            if distributionPoolAddress == msg.sender:
                                revert with 0, 'ARAK: futur and rewardsPool cannot cashout rewards'
                            mem[132] = msg.sender
                            mem[164] = arg1
                            require ext_code.size(nodeRewardManagerAddress)
                            staticcall nodeRewardManagerAddress.0xa6e15cc4 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg1
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'ARAK: You don't have enough reward to cash out'
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
                                        _1709 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1709] = 30
                                        mem[_1709 + 32] = 'SafeMath: subtraction overflow'
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
                                        _1883 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1883] = 38
                                        mem[_1883 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[stor17]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1883 + 70 len 26]
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
                                        _1708 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1708] = 30
                                        mem[_1708 + 32] = 'SafeMath: subtraction overflow'
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
                                        _1880 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1880] = 38
                                        mem[_1880 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1880 + 70 len 26]
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
                            call nodeRewardManagerAddress.0x6edb7002 with:
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
                            call nodeRewardManagerAddress.0xdab0882a with:
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
                        staticcall nodeRewardManagerAddress.0xfb10d6fb with:
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
                        staticcall nodeRewardManagerAddress.0x619a635e with:
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
                    staticcall nodeRewardManagerAddress.0x41ac82b0 with:
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
                    staticcall nodeRewardManagerAddress.0xc92819ce with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _454 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _499 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _454 + _499 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_499)] = mem[ceil32(return_data.size) + _454 + 160 len ceil32(_499)]
                    if ceil32(_499) <= _499:
                        _1702 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _499
                        mem[mem[64] + 64 len ceil32(_499)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_499)]
                        if ceil32(_499) <= _499:
                            return Array(len=_499, data=mem[mem[64] + 64 len ceil32(_499)])
                        mem[_499 + mem[64] + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_499) + _1702 + -mem[64] + 64
                    mem[_499 + (2 * ceil32(return_data.size)) + 160] = 0
                    _1703 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _499
                    mem[mem[64] + 64 len ceil32(_499)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_499)]
                    if ceil32(_499) <= _499:
                        return Array(len=_499, data=mem[mem[64] + 64 len ceil32(_499)])
                    mem[_499 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_499) + _1703 + -mem[64] + 64
                if unknown_0xf5a07256(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf5a07256(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.0x27b3bf11 with:
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
                        staticcall nodeRewardManagerAddress.0x4491a7e4 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xf7b9f943(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.0xdec14726 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xf9afc763(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.0x85c44d9d with:
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
                    staticcall nodeRewardManagerAddress.0x613ff46f with:
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
                staticcall nodeRewardManagerAddress.0x41ac82b0 with:
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
                staticcall nodeRewardManagerAddress.0x5759fb02 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _476 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _529 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _476 + _529 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_529)] = mem[ceil32(return_data.size) + _476 + 160 len ceil32(_529)]
                if ceil32(_529) <= _529:
                    _1704 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _529
                    mem[mem[64] + 64 len ceil32(_529)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_529)]
                    if ceil32(_529) <= _529:
                        return Array(len=_529, data=mem[mem[64] + 64 len ceil32(_529)])
                    mem[_529 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_529) + _1704 + -mem[64] + 64
                mem[_529 + (2 * ceil32(return_data.size)) + 160] = 0
                _1705 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _529
                mem[mem[64] + 64 len ceil32(_529)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_529)]
                if ceil32(_529) <= _529:
                    return Array(len=_529, data=mem[mem[64] + 64 len ceil32(_529)])
                mem[_529 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_529) + _1705 + -mem[64] + 64
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
                            call nodeRewardManagerAddress.0xd1871a89 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require unknown_0xa0a8fe65(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.0xb8527aef with:
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
                                    'ARAK: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
                    if bool(arg2) == bool(stor28[address(arg1)]):
                        revert with 0, 'ARAK: Automated market maker pair is already set to that value'
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
                        staticcall nodeRewardManagerAddress.0xf1fec2b8 with:
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
                    call nodeRewardManagerAddress.0xcece91eb with:
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
                        call nodeRewardManagerAddress.0x88fe6553 with:
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
                        staticcall nodeRewardManagerAddress.0xf1fec2b8 with:
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
                            call nodeRewardManagerAddress.0x12b8603f with:
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
                                call nodeRewardManagerAddress.0x12b8603f with:
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
                                    call nodeRewardManagerAddress.0x12b8603f with:
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
                                        call nodeRewardManagerAddress.0x12b8603f with:
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
                                            call nodeRewardManagerAddress.0x12b8603f with:
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
                                                if not balanceOf[this.address]:
                                                    _1856 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1856] = 26
                                                    mem[_1856 + 32] = 'SafeMath: division by zero'
                                                    _1920 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1920] = 26
                                                    mem[_1920 + 32] = 'SafeMath: division by zero'
                                                    _1968 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_1968 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_1968]:
                                                        revert with 0, 50
                                                    mem[_1968 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_1968 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _1968 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_1968]:
                                                        revert with 0, 50
                                                    mem[_1968 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[_1968 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_1968 + ceil32(return_data.size) + 100] = 0
                                                    mem[_1968 + ceil32(return_data.size) + 132] = 0
                                                    mem[_1968 + ceil32(return_data.size) + 164] = 160
                                                    mem[_1968 + ceil32(return_data.size) + 260] = mem[_1968]
                                                    idx = 0
                                                    s = _1968 + ceil32(return_data.size) + 292
                                                    t = _1968 + 32
                                                    while idx < mem[_1968]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_1968 + ceil32(return_data.size) + 260 len (32 * mem[_1968]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_1968 + ceil32(return_data.size) + 96] = 30
                                                    mem[_1968 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    call distributionPoolAddress with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_1968 + ceil32(return_data.size) + 160] = 30
                                                    mem[_1968 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not distributionPoolAddress:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    mem[_1968 + ceil32(return_data.size) + 224] = 38
                                                    mem[_1968 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if 0 > balanceOf[address(this.address)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1968 + ceil32(return_data.size) + 294 len 26] >> 48,
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
                                                        mem[_1968 + ceil32(return_data.size) + 320] = 26
                                                        mem[_1968 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                        mem[_1968 + ceil32(return_data.size) + 384] = 26
                                                        mem[_1968 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                        mem[_1968 + ceil32(return_data.size) + 448] = 30
                                                        mem[_1968 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                        mem[_1968 + ceil32(return_data.size) + 512] = 2
                                                        mem[_1968 + ceil32(return_data.size) + 544] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_1968 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _1968 + (2 * ceil32(return_data.size)) + 608
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_1968 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 612] = 0
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 644] = 0
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 676] = 160
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 772] = 2
                                                        idx = 0
                                                        s = _1968 + (2 * ceil32(return_data.size)) + 804
                                                        t = _1968 + ceil32(return_data.size) + 544
                                                        while idx < mem[_1968 + ceil32(return_data.size) + 512]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _1968 + (2 * ceil32(return_data.size)) + (32 * mem[_1968 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4507 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_4507] = 30
                                                        mem[_4507 + 32] = 'SafeMath: subtraction overflow'
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
                                                        _4788 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_4788 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_4788]:
                                                            revert with 0, 50
                                                        mem[_4788 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_4788 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _4788 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_4788]:
                                                            revert with 0, 50
                                                        mem[_4788 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_4788 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_4788 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_4788 + ceil32(return_data.size) + 132] = 0
                                                        mem[_4788 + ceil32(return_data.size) + 164] = 160
                                                        mem[_4788 + ceil32(return_data.size) + 260] = mem[_4788]
                                                        idx = 0
                                                        s = _4788 + ceil32(return_data.size) + 292
                                                        t = _4788 + 32
                                                        while idx < mem[_4788]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_4788 + ceil32(return_data.size) + 260 len (32 * mem[_4788]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        mem[_4788 + ceil32(return_data.size) + 96] = 38
                                                        mem[_4788 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[_4788 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_4788 + ceil32(return_data.size) + 196] = msg.sender
                                                        mem[_4788 + ceil32(return_data.size) + 228] = 64
                                                        mem[_4788 + ceil32(return_data.size) + 260] = mem[128]
                                                        mem[_4788 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[mem[128] + _4788 + ceil32(return_data.size) + 292] = 0
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x12b8603f with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_4788 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        mem[_1968 + ceil32(return_data.size) + 320] = 26
                                                        mem[_1968 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                        mem[_1968 + ceil32(return_data.size) + 384] = 26
                                                        mem[_1968 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                        mem[_1968 + ceil32(return_data.size) + 448] = 30
                                                        mem[_1968 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[_1968 + ceil32(return_data.size) + 512] = 2
                                                        mem[_1968 + ceil32(return_data.size) + 544] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_1968 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _1968 + (2 * ceil32(return_data.size)) + 608
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_1968 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 644] = 0
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 676] = 160
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 772] = 2
                                                        idx = 0
                                                        s = _1968 + (2 * ceil32(return_data.size)) + 804
                                                        t = _1968 + ceil32(return_data.size) + 544
                                                        while idx < mem[_1968 + ceil32(return_data.size) + 512]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_1968 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_1968 + ceil32(return_data.size) + 512]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 608] = 30
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 708] = 30
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 770] = 0
                                                            revert with memory
                                                              from _1968 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 100
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 708] = 36
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from _1968 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 132
                                                        if not uniswapV2RouterAddress:
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 708] = 34
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                            mem[_1968 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from _1968 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 132
                                                        allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                        emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 740] = 0
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 772] = 0
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 804] = 0
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args mem[_1968 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                        mem[_1968 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        mem[_1968 + (4 * ceil32(return_data.size)) + 672] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[_1968 + (4 * ceil32(return_data.size)) + 704] = 0
                                                        mem[_1968 + (4 * ceil32(return_data.size)) + 736] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                            mem[_1968 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                        mem[_1968 + (4 * ceil32(return_data.size)) + 672] = 2
                                                        mem[_1968 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_1968 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _1968 + (6 * ceil32(return_data.size)) + 768
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_1968 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_1968 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1968 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                        mem[_1968 + (6 * ceil32(return_data.size)) + 804] = 0
                                                        mem[_1968 + (6 * ceil32(return_data.size)) + 836] = 160
                                                        mem[_1968 + (6 * ceil32(return_data.size)) + 932] = 2
                                                        idx = 0
                                                        s = _1968 + (6 * ceil32(return_data.size)) + 964
                                                        t = _1968 + (4 * ceil32(return_data.size)) + 704
                                                        while idx < mem[_1968 + (4 * ceil32(return_data.size)) + 672]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_1968 + (6 * ceil32(return_data.size)) + 868] = this.address
                                                        mem[_1968 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _1968 + (6 * ceil32(return_data.size)) + (32 * mem[_1968 + (4 * ceil32(return_data.size)) + 672]) + -mem[64] + 960]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _5366 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_5366] = 38
                                                        mem[_5366 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5366 + 70 len 26]
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
                                                        _5574 = mem[128]
                                                        mem[mem[64] + 68] = mem[128]
                                                        mem[mem[64] + 100 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) <= mem[128]:
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x12b8603f with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                                        else:
                                                            mem[mem[128] + mem[64] + 100] = 0
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x12b8603f with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 64, mem[mem[64] + 68 len ceil32(_5574) + 32]
                                                else:
                                                    if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address]:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    _1906 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1906] = 26
                                                    mem[_1906 + 32] = 'SafeMath: division by zero'
                                                    if not balanceOf[this.address] * rewardsFee / 100:
                                                        _1962 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1962] = 26
                                                        mem[_1962 + 32] = 'SafeMath: division by zero'
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
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_1986 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1986 + ceil32(return_data.size) + 100] = 0
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
                                                            args 0, 0, 160, address(this.address), block.timestamp, mem[_1986 + ceil32(return_data.size) + 260 len (32 * mem[_1986]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_1986 + ceil32(return_data.size) + 96] = 30
                                                        mem[_1986 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        call distributionPoolAddress with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_1986 + ceil32(return_data.size) + 160] = 30
                                                        mem[_1986 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                        if 0 > balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * rewardsFee / 100 < 0:
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not distributionPoolAddress:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        mem[_1986 + ceil32(return_data.size) + 224] = 38
                                                        mem[_1986 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1986 + ceil32(return_data.size) + 294 len 26] >> 48,
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
                                                        if not balanceOf[this.address]:
                                                            mem[_1986 + ceil32(return_data.size) + 320] = 26
                                                            mem[_1986 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                            mem[_1986 + ceil32(return_data.size) + 384] = 26
                                                            mem[_1986 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                            mem[_1986 + ceil32(return_data.size) + 448] = 30
                                                            mem[_1986 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                            mem[_1986 + ceil32(return_data.size) + 512] = 2
                                                            mem[_1986 + ceil32(return_data.size) + 544] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_1986 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_1986 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            allowance[address(this.address)][stor14].field_0 = 0
                                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 612] = 0
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 644] = 0
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 676] = 160
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 772] = 2
                                                            idx = 0
                                                            s = _1986 + (2 * ceil32(return_data.size)) + 804
                                                            t = _1986 + ceil32(return_data.size) + 544
                                                            while idx < mem[_1986 + ceil32(return_data.size) + 512]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, 160, address(this.address), block.timestamp, mem[_1986 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_1986 + ceil32(return_data.size) + 512]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 608] = 30
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
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
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 708] = 0
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 740] = 0
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 772] = 0
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 804] = 0
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
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
                                                            mem[_1986 + ceil32(return_data.size) + 320] = 26
                                                            mem[_1986 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                            mem[_1986 + ceil32(return_data.size) + 384] = 26
                                                            mem[_1986 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                            mem[_1986 + ceil32(return_data.size) + 448] = 30
                                                            mem[_1986 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                                revert with 0, 17
                                                            mem[_1986 + ceil32(return_data.size) + 512] = 2
                                                            mem[_1986 + ceil32(return_data.size) + 544] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_1986 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_1986 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            allowance[address(this.address)][stor14].field_255 = 0
                                                            emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 644] = 0
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 676] = 160
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 772] = 2
                                                            idx = 0
                                                            s = _1986 + (2 * ceil32(return_data.size)) + 804
                                                            t = _1986 + ceil32(return_data.size) + 544
                                                            while idx < mem[_1986 + ceil32(return_data.size) + 512]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_1986 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_1986 + ceil32(return_data.size) + 512]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 608] = 30
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
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
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 740] = 0
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 772] = 0
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 804] = 0
                                                            mem[_1986 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                 gas gas_remaining wei
                                                                args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                                        mem[_1986 + (4 * ceil32(return_data.size)) + 672] = 2
                                                        mem[_1986 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_1986 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_1986 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_1986 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1986 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                        mem[_1986 + (6 * ceil32(return_data.size)) + 836] = 160
                                                        idx = 0
                                                        s = _1986 + (6 * ceil32(return_data.size)) + 964
                                                        t = _1986 + (4 * ceil32(return_data.size)) + 704
                                                        while idx < 2:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[_1986 + (6 * ceil32(return_data.size)) + 964 len 64]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        mem[_1986 + (6 * ceil32(return_data.size)) + 768] = 38
                                                        mem[_1986 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[_1986 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_1986 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                        mem[_1986 + (6 * ceil32(return_data.size)) + 900] = 64
                                                        mem[_1986 + (6 * ceil32(return_data.size)) + 932] = mem[128]
                                                        mem[_1986 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[mem[128] + _1986 + (6 * ceil32(return_data.size)) + 964] = 0
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x12b8603f with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_1986 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[128])])
                                                    else:
                                                        if balanceOf[this.address] * rewardsFee / 100 and stor24 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * rewardsFee / 100 * stor24 / balanceOf[this.address] * rewardsFee / 100 != stor24:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        _1980 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1980] = 26
                                                        mem[_1980 + 32] = 'SafeMath: division by zero'
                                                        _2000 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_2000 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_2000]:
                                                            revert with 0, 50
                                                        mem[_2000 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_2000 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2000 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_2000]:
                                                            revert with 0, 50
                                                        mem[_2000 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                                        emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor24 / 100), this.address, uniswapV2RouterAddress);
                                                        mem[_2000 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_2000 + ceil32(return_data.size) + 100] = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                                        mem[_2000 + ceil32(return_data.size) + 132] = 0
                                                        mem[_2000 + ceil32(return_data.size) + 164] = 160
                                                        mem[_2000 + ceil32(return_data.size) + 260] = mem[_2000]
                                                        idx = 0
                                                        s = _2000 + ceil32(return_data.size) + 292
                                                        t = _2000 + 32
                                                        while idx < mem[_2000]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address] * rewardsFee / 100 * stor24 / 100, 0, 160, address(this.address), block.timestamp, mem[_2000 + ceil32(return_data.size) + 260 len (32 * mem[_2000]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_2000 + ceil32(return_data.size) + 96] = 30
                                                        mem[_2000 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        call distributionPoolAddress with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_2000 + ceil32(return_data.size) + 160] = 30
                                                        mem[_2000 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * rewardsFee / 100 * stor24 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor24 / 100:
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not distributionPoolAddress:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        mem[_2000 + ceil32(return_data.size) + 224] = 38
                                                        mem[_2000 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) > balanceOf[address(this.address)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2000 + ceil32(return_data.size) + 294 len 26] >> 48,
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
                                                        if balanceOf[this.address]:
                                                            if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                                revert with 0, 17
                                                            if not balanceOf[this.address]:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            mem[_2000 + ceil32(return_data.size) + 320] = 26
                                                            mem[_2000 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                            mem[_2000 + ceil32(return_data.size) + 384] = 26
                                                            mem[_2000 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                            mem[_2000 + ceil32(return_data.size) + 448] = 30
                                                            mem[_2000 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                                revert with 0, 17
                                                            mem[_2000 + ceil32(return_data.size) + 512] = 2
                                                            mem[_2000 + ceil32(return_data.size) + 544] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2000 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _2000 + (2 * ceil32(return_data.size)) + 608
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2000 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            allowance[address(this.address)][stor14].field_255 = 0
                                                            emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 644] = 0
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 676] = 160
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 772] = 2
                                                            idx = 0
                                                            s = _2000 + (2 * ceil32(return_data.size)) + 804
                                                            t = _2000 + ceil32(return_data.size) + 544
                                                            while idx < mem[_2000 + ceil32(return_data.size) + 512]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_2000 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_2000 + ceil32(return_data.size) + 512]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 608] = 30
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                            if eth.balance(this.address) > eth.balance(this.address):
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 708] = 30
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 770] = 0
                                                                revert with memory
                                                                  from _2000 + (2 * ceil32(return_data.size)) + 672
                                                                   len ceil32(return_data.size) + 100
                                                            if eth.balance(this.address) < eth.balance(this.address):
                                                                revert with 0, 17
                                                            if not this.address:
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 708] = 36
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _2000 + (2 * ceil32(return_data.size)) + 672
                                                                   len ceil32(return_data.size) + 132
                                                            if not uniswapV2RouterAddress:
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 708] = 34
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                                mem[_2000 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _2000 + (2 * ceil32(return_data.size)) + 672
                                                                   len ceil32(return_data.size) + 132
                                                            allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                            emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 740] = 0
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 772] = 0
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 804] = 0
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                 gas gas_remaining wei
                                                                args mem[_2000 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            mem[_2000 + (4 * ceil32(return_data.size)) + 672] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            mem[_2000 + (4 * ceil32(return_data.size)) + 704] = 0
                                                            mem[_2000 + (4 * ceil32(return_data.size)) + 736] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                mem[_2000 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                            mem[_2000 + (4 * ceil32(return_data.size)) + 672] = 2
                                                            mem[_2000 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2000 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2000 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_2000 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2000 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                            mem[_2000 + (6 * ceil32(return_data.size)) + 836] = 160
                                                            idx = 0
                                                            s = _2000 + (6 * ceil32(return_data.size)) + 964
                                                            t = _2000 + (4 * ceil32(return_data.size)) + 704
                                                            while idx < 2:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[_2000 + (6 * ceil32(return_data.size)) + 964 len 64]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            mem[_2000 + (6 * ceil32(return_data.size)) + 768] = 38
                                                            mem[_2000 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                            mem[_2000 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                            mem[_2000 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                            mem[_2000 + (6 * ceil32(return_data.size)) + 900] = 64
                                                            mem[_2000 + (6 * ceil32(return_data.size)) + 932] = mem[128]
                                                            mem[_2000 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                            if ceil32(mem[128]) > mem[128]:
                                                                mem[mem[128] + _2000 + (6 * ceil32(return_data.size)) + 964] = 0
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x12b8603f with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=mem[128], data=mem[_2000 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[128])])
                                                        else:
                                                            mem[_2000 + ceil32(return_data.size) + 320] = 26
                                                            mem[_2000 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                            mem[_2000 + ceil32(return_data.size) + 384] = 26
                                                            mem[_2000 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                            mem[_2000 + ceil32(return_data.size) + 448] = 30
                                                            mem[_2000 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                            mem[_2000 + ceil32(return_data.size) + 512] = 2
                                                            mem[_2000 + ceil32(return_data.size) + 544] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2000 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _2000 + (2 * ceil32(return_data.size)) + 608
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2000 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = 0
                                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 612] = 0
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 644] = 0
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 676] = 160
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 772] = 2
                                                            idx = 0
                                                            s = _2000 + (2 * ceil32(return_data.size)) + 804
                                                            t = _2000 + ceil32(return_data.size) + 544
                                                            while idx < mem[_2000 + ceil32(return_data.size) + 512]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                            mem[_2000 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _2000 + (2 * ceil32(return_data.size)) + (32 * mem[_2000 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _4503 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_4503] = 30
                                                            mem[_4503 + 32] = 'SafeMath: subtraction overflow'
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
                                                            _4780 = mem[64]
                                                            mem[mem[64]] = 2
                                                            mem[64] = mem[64] + 96
                                                            mem[_4780 + 32 len 64] = call.data[calldata.size len 64]
                                                            if 0 >= mem[_4780]:
                                                                revert with 0, 50
                                                            mem[_4780 + 32] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_4780 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _4780 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 1 >= mem[_4780]:
                                                                revert with 0, 50
                                                            mem[_4780 + 64] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_4780 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_4780 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                            mem[_4780 + ceil32(return_data.size) + 132] = 0
                                                            mem[_4780 + ceil32(return_data.size) + 164] = 160
                                                            mem[_4780 + ceil32(return_data.size) + 260] = mem[_4780]
                                                            idx = 0
                                                            s = _4780 + ceil32(return_data.size) + 292
                                                            t = _4780 + 32
                                                            while idx < mem[_4780]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_4780 + ceil32(return_data.size) + 196] = this.address
                                                            mem[_4780 + ceil32(return_data.size) + 228] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _4780 + ceil32(return_data.size) + (32 * mem[_4780]) + -mem[64] + 288]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _5357 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_5357] = 38
                                                            mem[_5357 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5357 + 70 len 26]
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
                                                            _5571 = mem[128]
                                                            mem[mem[64] + 68] = mem[128]
                                                            mem[mem[64] + 100 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                            if ceil32(mem[128]) <= mem[128]:
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x12b8603f with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                                            else:
                                                                mem[mem[128] + mem[64] + 100] = 0
                                                                require ext_code.size(nodeRewardManagerAddress)
                                                                call nodeRewardManagerAddress.0x12b8603f with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 64, mem[mem[64] + 68 len ceil32(_5571) + 32]
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
                                                if not balanceOf[this.address]:
                                                    _1857 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1857] = 26
                                                    mem[_1857 + 32] = 'SafeMath: division by zero'
                                                    _1921 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1921] = 26
                                                    mem[_1921 + 32] = 'SafeMath: division by zero'
                                                    _1970 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_1970 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_1970]:
                                                        revert with 0, 50
                                                    mem[_1970 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_1970 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _1970 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_1970]:
                                                        revert with 0, 50
                                                    mem[_1970 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[_1970 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_1970 + ceil32(return_data.size) + 100] = 0
                                                    mem[_1970 + ceil32(return_data.size) + 132] = 0
                                                    mem[_1970 + ceil32(return_data.size) + 164] = 160
                                                    mem[_1970 + ceil32(return_data.size) + 260] = mem[_1970]
                                                    idx = 0
                                                    s = _1970 + ceil32(return_data.size) + 292
                                                    t = _1970 + 32
                                                    while idx < mem[_1970]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_1970 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_1970 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _1970 + ceil32(return_data.size) + (32 * mem[_1970]) + -mem[64] + 288]
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
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not distributionPoolAddress:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _3231 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3231] = 38
                                                    mem[_3231 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if 0 > balanceOf[address(this.address)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3231 + 70 len 26]
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
                                                        _3390 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_3390 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_3390]:
                                                            revert with 0, 50
                                                        mem[_3390 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_3390 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _3390 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_3390]:
                                                            revert with 0, 50
                                                        mem[_3390 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_3390 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_3390 + ceil32(return_data.size) + 100] = 0
                                                        mem[_3390 + ceil32(return_data.size) + 132] = 0
                                                        mem[_3390 + ceil32(return_data.size) + 164] = 160
                                                        mem[_3390 + ceil32(return_data.size) + 260] = mem[_3390]
                                                        idx = 0
                                                        s = _3390 + ceil32(return_data.size) + 292
                                                        t = _3390 + 32
                                                        while idx < mem[_3390]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_3390 + ceil32(return_data.size) + 196] = this.address
                                                        mem[_3390 + ceil32(return_data.size) + 228] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _3390 + ceil32(return_data.size) + (32 * mem[_3390]) + -mem[64] + 288]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4513 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_4513] = 30
                                                        mem[_4513 + 32] = 'SafeMath: subtraction overflow'
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
                                                        _4800 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_4800 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_4800]:
                                                            revert with 0, 50
                                                        mem[_4800 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_4800 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _4800 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_4800]:
                                                            revert with 0, 50
                                                        mem[_4800 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_4800 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_4800 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_4800 + ceil32(return_data.size) + 132] = 0
                                                        mem[_4800 + ceil32(return_data.size) + 164] = 160
                                                        mem[_4800 + ceil32(return_data.size) + 260] = mem[_4800]
                                                        idx = 0
                                                        s = _4800 + ceil32(return_data.size) + 292
                                                        t = _4800 + 32
                                                        while idx < mem[_4800]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_4800 + ceil32(return_data.size) + 196] = this.address
                                                        mem[_4800 + ceil32(return_data.size) + 228] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _4800 + ceil32(return_data.size) + (32 * mem[_4800]) + -mem[64] + 288]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _5387 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_5387] = 38
                                                        mem[_5387 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5387 + 70 len 26]
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
                                                        _5581 = mem[128]
                                                        mem[mem[64] + 68] = mem[128]
                                                        mem[mem[64] + 100 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) <= mem[128]:
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x12b8603f with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                                        else:
                                                            mem[mem[128] + mem[64] + 100] = 0
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x12b8603f with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 64, mem[mem[64] + 68 len ceil32(_5581) + 32]
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
                                                        _3438 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_3438 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_3438]:
                                                            revert with 0, 50
                                                        mem[_3438 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_3438 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _3438 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_3438]:
                                                            revert with 0, 50
                                                        mem[_3438 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[_3438 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_3438 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[_3438 + ceil32(return_data.size) + 132] = 0
                                                        mem[_3438 + ceil32(return_data.size) + 164] = 160
                                                        mem[_3438 + ceil32(return_data.size) + 260] = mem[_3438]
                                                        idx = 0
                                                        s = _3438 + ceil32(return_data.size) + 292
                                                        t = _3438 + 32
                                                        while idx < mem[_3438]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_3438 + ceil32(return_data.size) + 196] = this.address
                                                        mem[_3438 + ceil32(return_data.size) + 228] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _3438 + ceil32(return_data.size) + (32 * mem[_3438]) + -mem[64] + 288]
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
                                                        call nodeRewardManagerAddress.0x12b8603f with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_4798 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                                else:
                                                    if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address]:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    _1907 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1907] = 26
                                                    mem[_1907 + 32] = 'SafeMath: division by zero'
                                                    if balanceOf[this.address] * rewardsFee / 100:
                                                        if balanceOf[this.address] * rewardsFee / 100 and stor24 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * rewardsFee / 100 * stor24 / balanceOf[this.address] * rewardsFee / 100 != stor24:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        _1982 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1982] = 26
                                                        mem[_1982 + 32] = 'SafeMath: division by zero'
                                                        _2003 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_2003 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_2003]:
                                                            revert with 0, 50
                                                        mem[_2003 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_2003 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2003 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_2003]:
                                                            revert with 0, 50
                                                        mem[_2003 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                                        emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor24 / 100), this.address, uniswapV2RouterAddress);
                                                        mem[_2003 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_2003 + ceil32(return_data.size) + 100] = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                                        mem[_2003 + ceil32(return_data.size) + 132] = 0
                                                        mem[_2003 + ceil32(return_data.size) + 164] = 160
                                                        mem[_2003 + ceil32(return_data.size) + 260] = mem[_2003]
                                                        idx = 0
                                                        s = _2003 + ceil32(return_data.size) + 292
                                                        t = _2003 + 32
                                                        while idx < mem[_2003]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address] * rewardsFee / 100 * stor24 / 100, 0, 160, address(this.address), block.timestamp, mem[_2003 + ceil32(return_data.size) + 260 len (32 * mem[_2003]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_2003 + ceil32(return_data.size) + 96] = 30
                                                        mem[_2003 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        call distributionPoolAddress with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_2003 + ceil32(return_data.size) + 160] = 30
                                                        mem[_2003 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * rewardsFee / 100 * stor24 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor24 / 100:
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not distributionPoolAddress:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        mem[_2003 + ceil32(return_data.size) + 224] = 38
                                                        mem[_2003 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) > balanceOf[address(this.address)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2003 + ceil32(return_data.size) + 294 len 26] >> 48,
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
                                                            mem[_2003 + ceil32(return_data.size) + 320] = 26
                                                            mem[_2003 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                            mem[_2003 + ceil32(return_data.size) + 384] = 26
                                                            mem[_2003 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                            mem[_2003 + ceil32(return_data.size) + 448] = 30
                                                            mem[_2003 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                            mem[_2003 + ceil32(return_data.size) + 512] = 2
                                                            mem[_2003 + ceil32(return_data.size) + 544] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2003 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2003 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            allowance[address(this.address)][stor14].field_0 = 0
                                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 612] = 0
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 644] = 0
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 676] = 160
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 772] = 2
                                                            idx = 0
                                                            s = _2003 + (2 * ceil32(return_data.size)) + 804
                                                            t = _2003 + ceil32(return_data.size) + 544
                                                            while idx < mem[_2003 + ceil32(return_data.size) + 512]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, 160, address(this.address), block.timestamp, mem[_2003 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_2003 + ceil32(return_data.size) + 512]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 608] = 30
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
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
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 708] = 0
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 740] = 0
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 772] = 0
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 804] = 0
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                 gas gas_remaining wei
                                                                args this.address, 0, 0, 0, 0, block.timestamp
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                0,
                                                            mem[_2003 + (4 * ceil32(return_data.size)) + 672] = 2
                                                            mem[_2003 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2003 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2003 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 836] = 160
                                                            idx = 0
                                                            s = _2003 + (6 * ceil32(return_data.size)) + 964
                                                            t = _2003 + (4 * ceil32(return_data.size)) + 704
                                                            while idx < 2:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[_2003 + (6 * ceil32(return_data.size)) + 964 len 64]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 768] = 38
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 900] = 64
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 932] = mem[128]
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                            if ceil32(mem[128]) > mem[128]:
                                                                mem[mem[128] + _2003 + (6 * ceil32(return_data.size)) + 964] = 0
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x12b8603f with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=mem[128], data=mem[_2003 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[128])])
                                                        else:
                                                            if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                                revert with 0, 17
                                                            if not balanceOf[this.address]:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            mem[_2003 + ceil32(return_data.size) + 320] = 26
                                                            mem[_2003 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                            mem[_2003 + ceil32(return_data.size) + 384] = 26
                                                            mem[_2003 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                            mem[_2003 + ceil32(return_data.size) + 448] = 30
                                                            mem[_2003 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                                revert with 0, 17
                                                            mem[_2003 + ceil32(return_data.size) + 512] = 2
                                                            mem[_2003 + ceil32(return_data.size) + 544] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2003 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2003 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            allowance[address(this.address)][stor14].field_255 = 0
                                                            emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 644] = 0
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 676] = 160
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 772] = 2
                                                            idx = 0
                                                            s = _2003 + (2 * ceil32(return_data.size)) + 804
                                                            t = _2003 + ceil32(return_data.size) + 544
                                                            while idx < mem[_2003 + ceil32(return_data.size) + 512]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_2003 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_2003 + ceil32(return_data.size) + 512]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 608] = 30
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                            if eth.balance(this.address) > eth.balance(this.address):
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 708] = 30
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 770] = 0
                                                                revert with memory
                                                                  from _2003 + (2 * ceil32(return_data.size)) + 672
                                                                   len ceil32(return_data.size) + 100
                                                            if eth.balance(this.address) < eth.balance(this.address):
                                                                revert with 0, 17
                                                            if not this.address:
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 708] = 36
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _2003 + (2 * ceil32(return_data.size)) + 672
                                                                   len ceil32(return_data.size) + 132
                                                            if not uniswapV2RouterAddress:
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 708] = 34
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                                mem[_2003 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _2003 + (2 * ceil32(return_data.size)) + 672
                                                                   len ceil32(return_data.size) + 132
                                                            allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                            emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 740] = 0
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 772] = 0
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 804] = 0
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                 gas gas_remaining wei
                                                                args mem[_2003 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                            mem[_2003 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            mem[_2003 + (4 * ceil32(return_data.size)) + 672] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            mem[_2003 + (4 * ceil32(return_data.size)) + 704] = 0
                                                            mem[_2003 + (4 * ceil32(return_data.size)) + 736] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                mem[_2003 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                            mem[_2003 + (4 * ceil32(return_data.size)) + 672] = 2
                                                            mem[_2003 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_2003 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_2003 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 836] = 160
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 932] = 2
                                                            idx = 0
                                                            s = _2003 + (6 * ceil32(return_data.size)) + 964
                                                            t = _2003 + (4 * ceil32(return_data.size)) + 704
                                                            while idx < 2:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[_2003 + (6 * ceil32(return_data.size)) + 964 len 64]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                revert with 0, 
                                                                            'ERC20: transfer from the zero address',
                                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                            if not this.address:
                                                                revert with 0, 
                                                                            'ERC20: transfer to the zero address',
                                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 768] = 38
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                                mem[_2003 + (6 * ceil32(return_data.size)) + 970] = 0
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 970 len (9 * ceil32(return_data.size)) + 26]
                                                            if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                            if balanceOf[this.address] > !ext_call.return_data[0]:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow', mem[_2003 + (6 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                            emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 900] = 64
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 932] = mem[128]
                                                            mem[_2003 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                            if ceil32(mem[128]) > mem[128]:
                                                                mem[mem[128] + _2003 + (6 * ceil32(return_data.size)) + 964] = 0
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x12b8603f with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=mem[128], data=mem[_2003 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[128])])
                                                    else:
                                                        _1963 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1963] = 26
                                                        mem[_1963 + 32] = 'SafeMath: division by zero'
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
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_1988 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_1988 + ceil32(return_data.size) + 100] = 0
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
                                                        _3154 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_3154] = 30
                                                        mem[_3154 + 32] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        call distributionPoolAddress with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3184 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_3184] = 30
                                                        mem[_3184 + 32] = 'SafeMath: subtraction overflow'
                                                        if 0 > balanceOf[this.address] * rewardsFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * rewardsFee / 100 < 0:
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not distributionPoolAddress:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _3228 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3228] = 38
                                                        mem[_3228 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3228 + 70 len 26]
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
                                                            _3330 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3330] = 26
                                                            mem[_3330 + 32] = 'SafeMath: division by zero'
                                                            _3354 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3354] = 26
                                                            mem[_3354 + 32] = 'SafeMath: division by zero'
                                                            _3366 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3366] = 30
                                                            mem[_3366 + 32] = 'SafeMath: subtraction overflow'
                                                            _3387 = mem[64]
                                                            mem[mem[64]] = 2
                                                            mem[64] = mem[64] + 96
                                                            mem[_3387 + 32 len 64] = call.data[calldata.size len 64]
                                                            if 0 >= mem[_3387]:
                                                                revert with 0, 50
                                                            mem[_3387 + 32] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_3387 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _3387 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 1 >= mem[_3387]:
                                                                revert with 0, 50
                                                            mem[_3387 + 64] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = 0
                                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                                            mem[_3387 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_3387 + ceil32(return_data.size) + 100] = 0
                                                            mem[_3387 + ceil32(return_data.size) + 132] = 0
                                                            mem[_3387 + ceil32(return_data.size) + 164] = 160
                                                            mem[_3387 + ceil32(return_data.size) + 260] = mem[_3387]
                                                            idx = 0
                                                            s = _3387 + ceil32(return_data.size) + 292
                                                            t = _3387 + 32
                                                            while idx < mem[_3387]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, 160, address(this.address), block.timestamp, mem[_3387 + ceil32(return_data.size) + 260 len (32 * mem[_3387]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_3387 + ceil32(return_data.size) + 96] = 30
                                                            mem[_3387 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
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
                                                            mem[_3387 + ceil32(return_data.size) + 228] = 0
                                                            mem[_3387 + ceil32(return_data.size) + 260] = 0
                                                            mem[_3387 + ceil32(return_data.size) + 292] = 0
                                                            mem[_3387 + ceil32(return_data.size) + 324] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                 gas gas_remaining wei
                                                                args this.address, 0, 0, 0, 0, block.timestamp
                                                            mem[_3387 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                0,
                                                            mem[_3387 + (2 * ceil32(return_data.size)) + 160] = 2
                                                            mem[_3387 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_3387 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _3387 + (4 * ceil32(return_data.size)) + 256
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[_3387 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 292] = 0
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 324] = 160
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 420] = 2
                                                            idx = 0
                                                            s = _3387 + (4 * ceil32(return_data.size)) + 452
                                                            t = _3387 + (2 * ceil32(return_data.size)) + 192
                                                            while idx < mem[_3387 + (2 * ceil32(return_data.size)) + 160]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3387 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_3387 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            uint8(stor25.field_0) = 0
                                                            if not msg.sender:
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 260] = 32
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 292] = 37
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer from the zero ad'
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 356] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _3387 + (4 * ceil32(return_data.size)) + 256
                                                                   len (5 * ceil32(return_data.size)) + 132
                                                            if not this.address:
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 260] = 32
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 292] = 35
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer to the zero addr'
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 356] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                                revert with memory
                                                                  from _3387 + (4 * ceil32(return_data.size)) + 256
                                                                   len (5 * ceil32(return_data.size)) + 132
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 256] = 38
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 356] = 32
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 388] = 38
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 420 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 458] = 0
                                                                revert with memory
                                                                  from _3387 + (4 * ceil32(return_data.size)) + 352
                                                                   len (5 * ceil32(return_data.size)) + 132
                                                            if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                            if balanceOf[this.address] > !ext_call.return_data[0]:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 356] = 32
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 388] = 27
                                                                mem[_3387 + (4 * ceil32(return_data.size)) + 420] = 'SafeMath: addition overflow'
                                                                revert with memory
                                                                  from _3387 + (4 * ceil32(return_data.size)) + 352
                                                                   len (5 * ceil32(return_data.size)) + 100
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                            emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 352] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 356] = msg.sender
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 388] = 64
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 420] = mem[128]
                                                            mem[_3387 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                            if ceil32(mem[128]) > mem[128]:
                                                                mem[mem[128] + _3387 + (4 * ceil32(return_data.size)) + 452] = 0
                                                            require ext_code.size(nodeRewardManagerAddress)
                                                            call nodeRewardManagerAddress.0x12b8603f with:
                                                                 gas gas_remaining wei
                                                                args mem[_3387 + (4 * ceil32(return_data.size)) + 356 len ceil32(mem[128]) + (5 * ceil32(return_data.size)) + 96]
                                                        else:
                                                            if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                                revert with 0, 17
                                                            if not balanceOf[this.address]:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            _3348 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3348] = 26
                                                            mem[_3348 + 32] = 'SafeMath: division by zero'
                                                            _3360 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3360] = 26
                                                            mem[_3360 + 32] = 'SafeMath: division by zero'
                                                            _3372 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_3372] = 30
                                                            mem[_3372 + 32] = 'SafeMath: subtraction overflow'
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                                revert with 0, 17
                                                            _3436 = mem[64]
                                                            mem[mem[64]] = 2
                                                            mem[64] = mem[64] + 96
                                                            mem[_3436 + 32 len 64] = call.data[calldata.size len 64]
                                                            if 0 >= mem[_3436]:
                                                                revert with 0, 50
                                                            mem[_3436 + 32] = this.address
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                    gas gas_remaining wei
                                                            mem[_3436 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _3436 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 1 >= mem[_3436]:
                                                                revert with 0, 50
                                                            mem[_3436 + 64] = ext_call.return_data[12 len 20]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: approve from the zero address'
                                                            if not uniswapV2RouterAddress:
                                                                revert with 0, 'ERC20: approve to the zero address'
                                                            mem[0] = uniswapV2RouterAddress
                                                            mem[32] = sha3(address(this.address), 1)
                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            allowance[address(this.address)][stor14].field_255 = 0
                                                            emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                            mem[_3436 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                            mem[_3436 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                            mem[_3436 + ceil32(return_data.size) + 132] = 0
                                                            mem[_3436 + ceil32(return_data.size) + 164] = 160
                                                            mem[_3436 + ceil32(return_data.size) + 260] = mem[_3436]
                                                            idx = 0
                                                            s = _3436 + ceil32(return_data.size) + 292
                                                            t = _3436 + 32
                                                            while idx < mem[_3436]:
                                                                mem[s] = mem[t + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[_3436 + ceil32(return_data.size) + 196] = this.address
                                                            mem[_3436 + ceil32(return_data.size) + 228] = block.timestamp
                                                            require ext_code.size(uniswapV2RouterAddress)
                                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _3436 + ceil32(return_data.size) + (32 * mem[_3436]) + -mem[64] + 288]
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
                                                            call nodeRewardManagerAddress.0x12b8603f with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=mem[128], data=mem[_4794 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
