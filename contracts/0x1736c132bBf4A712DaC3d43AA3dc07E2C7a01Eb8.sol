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
address nodeRewardManagementAddress;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address futurUsePoolAddress;
address distributionPoolAddress;
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
uint256 antiWhale;
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

function antiWhale() {
    return antiWhale
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function swapTokensAmount() {
    return swapTokensAmount
}

function nodeRewardManagement() {
    return nodeRewardManagementAddress
}

function cashoutFee() {
    return cashoutFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
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

function sub_709c6b8b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    antiWhale = arg1
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

function updateRewardsWall(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    distributionPoolAddress = arg1
}

function changeSwapLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor24.field_8) = Mask(248, 0, arg1)
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor27[address(arg1)] = uint8(arg2)
}

function getNodePrice() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.nodePrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getClaimTime() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.claimTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRewardPerNode() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.rewardPerNode() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getGasDistri() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.gasForDistribution() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDistriCount() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.lastDistributionCount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalRewardStaked() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.totalRewardStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalNodesCreated() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.totalNodesCreated() with:
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
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.autoDistri() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function manualBuyback(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'insufficient ETH balance'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeGasDistri(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._changeGasDistri(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeNodePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._changeNodePrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeClaimTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._changeClaimTime(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeRewardPerNode(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._changeRewardPerNode(uint256 arg1) with:
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
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._changeAutoDistri(bool arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._getRewardAmountOf(address arg1) with:
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
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._distributeRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The PancakeSwap pair cannot be moddified'
    stor28[address(arg1)] = uint8(arg2)
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

function sub_8933fff8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function sub_75aa4ad9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    futurFee = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    rewardsFee = mem[160]
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    liquidityPoolFee = mem[192]
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    cashoutFee = mem[224]
    if 4 >= ('cd', 4).length:
        revert with 0, 50
    stor23 = mem[256]
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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

function sub_47a0ed50(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress:
        revert with 0, 'You can only set pair once !'
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.factory() with:
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
    stor28[ext_call.return_data[12 len 20]] = 1
    emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
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
    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if arg2 > 10^18 * antiWhale:
        if stor28[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You are not permitted to transfer more than 100,000 tokens'
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
    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if arg3 > 10^18 * antiWhale:
        if stor28[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You are not permitted to transfer more than 100,000 tokens'
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
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._isNodeOwner(address arg1) with:
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
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._getNodesNames(address arg1) with:
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
        mem[(2 * ceil32(return_data.size)) + _13 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[mem[64] + _13 + 64] = 0
    return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
}

function getNodesCreatime() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._isNodeOwner(address arg1) with:
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
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._getNodesCreationTime(address arg1) with:
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
        mem[(2 * ceil32(return_data.size)) + _13 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[mem[64] + _13 + 64] = 0
    return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
}

function getNodesRewards() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._isNodeOwner(address arg1) with:
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
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._getNodesRewardAvailable(address arg1) with:
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
        mem[(2 * ceil32(return_data.size)) + _13 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[mem[64] + _13 + 64] = 0
    return Array(len=_13, data=mem[mem[64] + 64 len ceil32(_13)])
}

function getNodesLastClaims() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._isNodeOwner(address arg1) with:
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
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._getNodesLastClaimTime(address arg1) with:
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
        mem[(2 * ceil32(return_data.size)) + _13 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len ceil32(_13)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[mem[64] + _13 + 64] = 0
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
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
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
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
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
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._cashoutAllNodesReward(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
    if not uint8(stor24.field_8):
        if not distributionPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if ext_call.return_data[0] > 10^18 * antiWhale:
            if stor28[stor17]:
                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
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
            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if ext_call.return_data[0] > 10^18 * antiWhale:
                if stor28[stor17]:
                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
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
                mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
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
                _229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_229] = 30
                mem[_229 + 32] = 'SafeMath: subtraction overflow'
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
                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[0] <= 10^18 * antiWhale:
                    _255 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_255] = 38
                    mem[_255 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if ext_call.return_data[0] > balanceOf[stor17]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_255 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                else:
                    mem[0] = distributionPoolAddress
                    mem[32] = 28
                    if stor28[stor17]:
                        revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    _261 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_261] = 38
                    mem[_261 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if ext_call.return_data[0] > balanceOf[stor17]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_261 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                ('le', ('ext_call.return_data', 0, 32), ('stor', ('map', ('stor', ('name', 'stor17', 17)), ('name', 'balanceOf', 0))))
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
                mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
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
                _228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_228] = 30
                mem[_228 + 32] = 'SafeMath: subtraction overflow'
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
                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) <= 10^18 * antiWhale:
                    _252 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_252] = 38
                    mem[_252 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_252 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                else:
                    mem[0] = distributionPoolAddress
                    mem[32] = 28
                    if stor28[stor17]:
                        revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    _258 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_258] = 38
                    mem[_258 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_258 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                ('le', ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('mul', ('ext_call.return_data', 0, 32), ('stor', ('name', 'cashoutFee', 22))), 100))), ('stor', ('map', ('stor', ('name', 'stor17', 17)), ('name', 'balanceOf', 0))))
                if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                    revert with 0, 17
                balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
                if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                    revert with 0, 17
                if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
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
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if not uint8(stor24.field_8):
        if not distributionPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if ext_call.return_data[0] > 10^18 * antiWhale:
            if stor28[stor17]:
                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
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
            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if ext_call.return_data[0] > 10^18 * antiWhale:
                if stor28[stor17]:
                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
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
                mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
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
                _229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_229] = 30
                mem[_229 + 32] = 'SafeMath: subtraction overflow'
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
                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[0] <= 10^18 * antiWhale:
                    _255 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_255] = 38
                    mem[_255 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if ext_call.return_data[0] > balanceOf[stor17]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_255 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                else:
                    mem[0] = distributionPoolAddress
                    mem[32] = 28
                    if stor28[stor17]:
                        revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    _261 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_261] = 38
                    mem[_261 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if ext_call.return_data[0] > balanceOf[stor17]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_261 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                ('le', ('ext_call.return_data', 0, 32), ('stor', ('map', ('stor', ('name', 'stor17', 17)), ('name', 'balanceOf', 0))))
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
                mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
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
                _228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_228] = 30
                mem[_228 + 32] = 'SafeMath: subtraction overflow'
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
                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) <= 10^18 * antiWhale:
                    _252 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_252] = 38
                    mem[_252 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_252 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                else:
                    mem[0] = distributionPoolAddress
                    mem[32] = 28
                    if stor28[stor17]:
                        revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    _258 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_258] = 38
                    mem[_258 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_258 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                ('le', ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('mul', ('ext_call.return_data', 0, 32), ('stor', ('name', 'cashoutFee', 22))), 100))), ('stor', ('map', ('stor', ('name', 'stor17', 17)), ('name', 'balanceOf', 0))))
                if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                    revert with 0, 17
                balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
                if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                    revert with 0, 17
                if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x75aa4ad9(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x49bd5a5e(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x1cdd3be3(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x13114a9d(?????) > uint32(call.func_hash) >> 224:
                        if uint32(call.func_hash) >> 224 != name():
                            if uint32(call.func_hash) >> 224 != updateRewardsFee(uint256 arg1):
                                if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                                    require updateFuturWall(address arg1) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require cd[4] == address(cd[4])
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    futurUsePoolAddress = address(cd[4])
                                require not msg.value
                                require calldata.size - 4 >= 64
                                require cd[4] == address(cd[4])
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(msg.sender)][address(cd[4])].field_0 = cd[36]
                                emit Approval(cd[36], msg.sender, address(cd[4]));
                                return 1
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
                                mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
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
                            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
                    if unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalFees
                    if uint32(call.func_hash) >> 224 != unknown_0x138a634a(?????):
                        if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return uniswapV2RouterAddress
                        if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return totalSupply
                        require unknown_0x19165587(?????) == uint32(call.func_hash) >> 224
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
                        if not ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]:
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
                    require ext_code.size(nodeRewardManagementAddress)
                    staticcall nodeRewardManagementAddress._isNodeOwner(address arg1) with:
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
                    require ext_code.size(nodeRewardManagementAddress)
                    staticcall nodeRewardManagementAddress._getNodesNames(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _400 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _462 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _400 + _462 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_462)] = mem[ceil32(return_data.size) + _400 + 160 len ceil32(_462)]
                    if ceil32(_462) > _462:
                        mem[(2 * ceil32(return_data.size)) + _462 + 160] = 0
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _462
                    mem[mem[64] + 64 len ceil32(_462)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_462)]
                    if ceil32(_462) > _462:
                        mem[mem[64] + _462 + 64] = 0
                    return Array(len=_462, data=mem[mem[64] + 64 len ceil32(_462)])
                if unknown_0x3a98ef39(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x1cdd3be3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor27[cd[4]])
                    if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                        if unknown_0x2bb14e1d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return rewardsFee
                        if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 18
                        require unknown_0x39509351(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if allowance[msg.sender][address(cd[4])].field_0 > !cd[36]:
                            revert with 0, 17
                        if allowance[msg.sender][address(cd[4])].field_0 + cd[36] < allowance[msg.sender][address(cd[4])].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(msg.sender)][address(cd[4])].field_0 = allowance[msg.sender][address(cd[4])].field_0 + cd[36]
                        emit Approval((allowance[msg.sender][address(cd[4])].field_0 + cd[36]), msg.sender, address(cd[4]));
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[36]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if stor27[address(cd[4])]:
                            revert with 0, 'Blacklisted address'
                        if stor27[address(cd[36])]:
                            revert with 0, 'Blacklisted address'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[36]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if cd[68] > 10^18 * antiWhale:
                            if stor28[address(cd[4])]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                        if cd[68] > balanceOf[address(cd[4])]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                        if balanceOf[address(cd[4])] < cd[68]:
                            revert with 0, 17
                        balanceOf[address(cd[4])] -= cd[68]
                        if balanceOf[address(cd[36])] > !cd[68]:
                            revert with 0, 17
                        if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[36])] += cd[68]
                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        if cd[68] > allowance[address(cd[4])][msg.sender].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                            revert with 0, 17
                        if not address(cd[4]):
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                        emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                    return 1
                if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalShares
                if unknown_0x406072a9(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    return released[address(cd[4])][address(cd[36])]
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
                    if unknown_0x47a0ed50(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if uniswapV2PairAddress:
                            revert with 0, 'You can only set pair once !'
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.factory() with:
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
                        stor28[ext_call.return_data[12 len 20]] = 1
                        emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
                    else:
                        require unknown_0x48b75044(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        if not shares[address(cd[36])]:
                            revert with 0, 'PaymentSplitter: account has no shares'
                        mem[132] = this.address
                        require ext_code.size(address(cd[4]))
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
                        if not ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]:
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
                if unknown_0x65b8dbc0(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x54f12f1f(?????) <= uint32(call.func_hash) >> 224:
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
                        if unknown_0x59640ed9(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress._changeGasDistri(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[4]
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
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress._isNodeOwner(address arg1) with:
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
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress._getNodesRewardAvailable(address arg1) with:
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
                        _509 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                        mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                        require _468 + _509 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_509)] = mem[ceil32(return_data.size) + _468 + 160 len ceil32(_509)]
                        if ceil32(_509) > _509:
                            mem[(2 * ceil32(return_data.size)) + _509 + 160] = 0
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _509
                        mem[mem[64] + 64 len ceil32(_509)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_509)]
                        if ceil32(_509) > _509:
                            mem[mem[64] + _509 + 64] = 0
                        return Array(len=_509, data=mem[mem[64] + 64 len ceil32(_509)])
                    if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return uniswapV2PairAddress
                    if unknown_0x4dacf3f5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return antiWhale
                    if unknown_0x4dc9b819(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress.totalRewardStaked() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
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
                    require ext_code.size(nodeRewardManagementAddress)
                    call nodeRewardManagementAddress._cashoutAllNodesReward(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
                    if not uint8(stor24.field_8):
                        if not distributionPoolAddress:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if ext_call.return_data[0] > 10^18 * antiWhale:
                            if stor28[stor17]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
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
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if ext_call.return_data[0] > 10^18 * antiWhale:
                                if stor28[stor17]:
                                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
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
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
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
                                mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
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
                                _2117 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2117] = 30
                                mem[_2117 + 32] = 'SafeMath: subtraction overflow'
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
                                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if ext_call.return_data[0] <= 10^18 * antiWhale:
                                    _2355 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2355] = 38
                                    mem[_2355 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[stor17]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2355 + 70 len 26]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                else:
                                    mem[0] = distributionPoolAddress
                                    mem[32] = 28
                                    if stor28[stor17]:
                                        revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                    _2367 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2367] = 38
                                    mem[_2367 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[stor17]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2367 + 70 len 26]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                ('le', ('ext_call.return_data', 0, 32), ('stor', ('map', ('stor', ('name', 'stor17', 17)), ('name', 'balanceOf', 0))))
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
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
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
                                mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
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
                                _2116 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2116] = 30
                                mem[_2116 + 32] = 'SafeMath: subtraction overflow'
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
                                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) <= 10^18 * antiWhale:
                                    _2352 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2352] = 38
                                    mem[_2352 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2352 + 70 len 26]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                else:
                                    mem[0] = distributionPoolAddress
                                    mem[32] = 28
                                    if stor28[stor17]:
                                        revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                    _2364 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2364] = 38
                                    mem[_2364 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2364 + 70 len 26]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                ('le', ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('mul', ('ext_call.return_data', 0, 32), ('stor', ('name', 'cashoutFee', 22))), 100))), ('stor', ('map', ('stor', ('name', 'stor17', 17)), ('name', 'balanceOf', 0))))
                                if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                                    revert with 0, 17
                                balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
                                if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                                    revert with 0, 17
                                if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                                emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
                else:
                    if unknown_0x6d9ae0be(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x6d9ae0be(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return cashoutFee
                        if unknown_0x6f4a2cd0(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress._distributeRewards() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
                        if unknown_0x709c6b8b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            antiWhale = cd[4]
                        else:
                            if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                return balanceOf[address(cd[4])]
                            require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            emit OwnershipTransferred(owner, 0);
                            owner = 0
                    else:
                        if unknown_0x65b8dbc0(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            emit UpdateUniswapV2Router(address(cd[4]), uniswapV2RouterAddress);
                            uniswapV2RouterAddress = address(cd[4])
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).factory() with:
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
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0x65bfe430(?????):
                                if unknown_0x6770474b(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    swapTokensAmount = cd[4]
                                else:
                                    if uint32(call.func_hash) >> 224 != unknown_0x6815a91c(?????):
                                        require unknown_0x697e2f8e(?????) == uint32(call.func_hash) >> 224
                                        require not msg.value
                                        return nodeRewardManagementAddress
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    cashoutFee = cd[4]
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
                                mem[164] = cd[4]
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, cd[4]
                                mem[128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'CSHT: You don't have enough reward to cash out'
                                if not uint8(stor24.field_8):
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if ext_call.return_data[0] > 10^18 * antiWhale:
                                        if stor28[stor17]:
                                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
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
                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                            if stor28[stor17]:
                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
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
                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
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
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
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
                                            _2124 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2124] = 30
                                            mem[_2124 + 32] = 'SafeMath: subtraction overflow'
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
                                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if ext_call.return_data[0] <= 10^18 * antiWhale:
                                                _2361 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2361] = 38
                                                mem[_2361 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if ext_call.return_data[0] > balanceOf[stor17]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2361 + 70 len 26]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                            else:
                                                mem[0] = distributionPoolAddress
                                                mem[32] = 28
                                                if stor28[stor17]:
                                                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                _2373 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2373] = 38
                                                mem[_2373 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if ext_call.return_data[0] > balanceOf[stor17]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2373 + 70 len 26]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                            ('le', ('ext_call.return_data', 0, 32), ('stor', ('map', ('stor', ('name', 'stor17', 17)), ('name', 'balanceOf', 0))))
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
                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
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
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
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
                                            _2123 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2123] = 30
                                            mem[_2123 + 32] = 'SafeMath: subtraction overflow'
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
                                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) <= 10^18 * antiWhale:
                                                _2358 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2358] = 38
                                                mem[_2358 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2358 + 70 len 26]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                            else:
                                                mem[0] = distributionPoolAddress
                                                mem[32] = 28
                                                if stor28[stor17]:
                                                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                _2370 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2370] = 38
                                                mem[_2370 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2370 + 70 len 26]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                            ('le', ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('mul', ('ext_call.return_data', 0, 32), ('stor', ('name', 'cashoutFee', 22))), 100))), ('stor', ('map', ('stor', ('name', 'stor17', 17)), ('name', 'balanceOf', 0))))
                                            if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                                                revert with 0, 17
                                            balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
                                            if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                                                revert with 0, 17
                                            if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                                            emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
        else:
            if unknown_0xab574761(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xda41b333(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xc5ca7d6d(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0xc5ca7d6d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return distributionPoolAddress
                        if unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return shares[address(cd[4])]
                        if unknown_0xd0f77474(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == bool(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress._changeAutoDistri(bool arg1) with:
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
                            require unknown_0xd8929342(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == bool(cd[36])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor27[address(cd[4])] = uint8(bool(cd[36]))
                    if unknown_0xab574761(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return futurFee
                    if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor28[cd[4]])
                    if unknown_0xb96392c1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if uint32(call.func_hash) >> 224 != unknown_0xbdf24a53(?????):
                        require unknown_0xc480512e(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if eth.balance(this.address) < cd[4]:
                            revert with 0, 'insufficient ETH balance'
                        call msg.sender with:
                           value cd[4] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'SENDER CAN'T BE ZERO'
                    mem[132] = msg.sender
                    require ext_code.size(nodeRewardManagementAddress)
                    staticcall nodeRewardManagementAddress._isNodeOwner(address arg1) with:
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
                    require ext_code.size(nodeRewardManagementAddress)
                    staticcall nodeRewardManagementAddress._getNodesCreationTime(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _479 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _520 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _479 + _520 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_520)] = mem[ceil32(return_data.size) + _479 + 160 len ceil32(_520)]
                    if ceil32(_520) > _520:
                        mem[(2 * ceil32(return_data.size)) + _520 + 160] = 0
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _520
                    mem[mem[64] + 64 len ceil32(_520)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_520)]
                    if ceil32(_520) > _520:
                        mem[mem[64] + _520 + 64] = 0
                    return Array(len=_520, data=mem[mem[64] + 64 len ceil32(_520)])
                if unknown_0xf2fde38b(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, address(cd[4]));
                        owner = address(cd[4])
                    if unknown_0xf5a07256(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress.claimTime() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xf74c9934(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xf7b9f943(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress.gasForDistribution() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    require unknown_0xf9afc763(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require ext_code.size(nodeRewardManagementAddress)
                    staticcall nodeRewardManagementAddress.autoDistri() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return bool(ext_call.return_data[0])
                if unknown_0xda41b333(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(nodeRewardManagementAddress)
                    staticcall nodeRewardManagementAddress.lastDistributionCount() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0xdb3ad6b5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(nodeRewardManagementAddress)
                    staticcall nodeRewardManagementAddress.rewardPerNode() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    return allowance[address(cd[4])][address(cd[36])].field_0
                if unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalReleased
                require unknown_0xee1afdbf(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if not msg.sender:
                    revert with 0, 'SENDER CAN'T BE ZERO'
                mem[132] = msg.sender
                require ext_code.size(nodeRewardManagementAddress)
                staticcall nodeRewardManagementAddress._isNodeOwner(address arg1) with:
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
                require ext_code.size(nodeRewardManagementAddress)
                staticcall nodeRewardManagementAddress._getNodesLastClaimTime(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _499 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _537 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _499 + _537 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_537)] = mem[ceil32(return_data.size) + _499 + 160 len ceil32(_537)]
                if ceil32(_537) > _537:
                    mem[(2 * ceil32(return_data.size)) + _537 + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _537
                mem[mem[64] + 64 len ceil32(_537)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_537)]
                if ceil32(_537) > _537:
                    mem[mem[64] + _537 + 64] = 0
                return Array(len=_537, data=mem[mem[64] + 64 len ceil32(_537)])
            if unknown_0x8f0ba4ca(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x88c41d7c(?????) <= uint32(call.func_hash) >> 224:
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
                        if uint32(call.func_hash) >> 224 != unknown_0x8933fff8(?????):
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
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x75aa4ad9(?????):
                        if unknown_0x7b770392(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress._changeRewardPerNode(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if unknown_0x8013858b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress._changeNodePrice(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require unknown_0x823349b3(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress.totalNodesCreated() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                    s = cd[4] + 36
                    t = 160
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[t] = cd[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if 0 >= ('cd', 4).length:
                        revert with 0, 50
                    futurFee = mem[160]
                    if 1 >= ('cd', 4).length:
                        revert with 0, 50
                    rewardsFee = mem[192]
                    if 2 >= ('cd', 4).length:
                        revert with 0, 50
                    liquidityPoolFee = mem[224]
                    if 3 >= ('cd', 4).length:
                        revert with 0, 50
                    cashoutFee = mem[256]
                    if 4 >= ('cd', 4).length:
                        revert with 0, 50
                    stor23 = mem[288]
            else:
                if unknown_0x9c82751c(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x9c82751c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress._changeClaimTime(uint256 arg1) with:
                             gas gas_remaining wei
                            args cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if cd[36] > allowance[msg.sender][address(cd[4])].field_0:
                            revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[197 len 27] >> 40, 0
                        if allowance[msg.sender][address(cd[4])].field_0 < cd[36]:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(msg.sender)][address(cd[4])].field_0 = allowance[msg.sender][address(cd[4])].field_0 - cd[36]
                        emit Approval((allowance[msg.sender][address(cd[4])].field_0 - cd[36]), msg.sender, address(cd[4]));
                    else:
                        if unknown_0xa5021a17(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require ext_code.size(nodeRewardManagementAddress)
                            staticcall nodeRewardManagementAddress.nodePrice() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        if unknown_0xa538ddf2(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return futurUsePoolAddress
                        require unknown_0xa9059cbb(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if stor27[address(msg.sender)]:
                            revert with 0, 'Blacklisted address'
                        if stor27[address(cd[4])]:
                            revert with 0, 'Blacklisted address'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if cd[36] > 10^18 * antiWhale:
                            if stor28[address(msg.sender)]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                        if cd[36] > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < cd[36]:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= cd[36]
                        if balanceOf[address(cd[4])] > !cd[36]:
                            revert with 0, 17
                        if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[4])] += cd[36]
                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                    return 1
                if uint32(call.func_hash) >> 224 != unknown_0x8f0ba4ca(?????):
                    if unknown_0x9349c47d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        distributionPoolAddress = address(cd[4])
                    if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
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
                        if uniswapV2PairAddress == address(cd[4]):
                            revert with 0, 'TKN: The PancakeSwap pair cannot be moddified'
                        stor28[address(cd[4])] = uint8(bool(cd[36]))
                        emit SetAutomatedMarketMakerPair(address(cd[4]), bool(cd[36]));
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
                            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
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
                        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require calldata.size > cd[4] + 35
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require cd[4] + ('cd', 4).length + 36 <= calldata.size
                mem[160 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                mem[('cd', 4).length + 160] = 0
                if ('cd', 4).length <= 3:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                if ('cd', 4).length >= 32:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                if not msg.sender:
                    revert with 0, 'NODE CREATION:  creation from the zero address'
                if stor27[address(msg.sender)]:
                    revert with 0, 'NODE CREATION: Blacklisted address'
                if futurUsePoolAddress == msg.sender:
                    revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                if distributionPoolAddress == msg.sender:
                    revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                require ext_code.size(nodeRewardManagementAddress)
                staticcall nodeRewardManagementAddress.nodePrice() with:
                        gas gas_remaining wei
                mem[ceil32(ceil32(('cd', 4).length)) + 129] = ext_call.return_data[0]
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
                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if ext_call.return_data[0] > 10^18 * antiWhale:
                        if stor28[address(msg.sender)]:
                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 199 len 26] >> 48,
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
                    require ext_code.size(nodeRewardManagementAddress)
                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                else:
                    if not uint8(stor24.field_8):
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if ext_call.return_data[0] > 10^18 * antiWhale:
                            if stor28[address(msg.sender)]:
                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 199 len 26] >> 48,
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
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    else:
                        if uint8(stor24.field_0):
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if ext_call.return_data[0] > 10^18 * antiWhale:
                                if stor28[address(msg.sender)]:
                                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 199 len 26] >> 48,
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
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                        else:
                            if owner == msg.sender:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if ext_call.return_data[0] > 10^18 * antiWhale:
                                    if stor28[address(msg.sender)]:
                                        revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 199 len 26] >> 48,
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
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                            else:
                                if stor28[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if ext_call.return_data[0] > 10^18 * antiWhale:
                                        if stor28[address(msg.sender)]:
                                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 199 len 26] >> 48,
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
                                    require ext_code.size(nodeRewardManagementAddress)
                                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                                else:
                                    uint8(stor24.field_0) = 1
                                    if balanceOf[this.address]:
                                        if balanceOf[this.address] and futurFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * futurFee / balanceOf[this.address] != futurFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = 26
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 161] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 193] = 2
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 225] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 289] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 257] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 293] = 32
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = 36
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 357] = 'ERC20: approve from the zero add'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 389] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289
                                               len ceil32(return_data.size) + 132
                                        if not uniswapV2RouterAddress:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 293] = 32
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = 34
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 357] = 'ERC20: approve to the zero addre'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 389] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289
                                               len ceil32(return_data.size) + 132
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * futurFee / 100
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289] = balanceOf[this.address] * futurFee / 100
                                        emit Approval(mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 293] = balanceOf[this.address] * futurFee / 100
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 357] = 160
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 453] = 2
                                        idx = 0
                                        s = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 485
                                        t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 225
                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 193]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 389] = this.address
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 421] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address] * futurFee / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 453 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 193]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289] = 30
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 321] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call futurUsePoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not balanceOf[this.address]:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 353] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 385] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 417] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 449] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481] = 2
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 513] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor14].field_0 = 0
                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 577] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 613] = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 645] = 160
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 2
                                            idx = 0
                                            s = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773
                                            t = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 513
                                            while idx < mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 677] = this.address
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 577] = 30
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 609] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641] = 30
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 673] = 'SafeMath: subtraction overflow'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not distributionPoolAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 0 > 10^18 * antiWhale:
                                                if stor28[address(this.address)]:
                                                    revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if 0 > balanceOf[address(this.address)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 775 len 26] >> 48,
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
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
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
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1413] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1445
                                                    t = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1445 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor24.field_0) = 0
                                                    if not msg.sender:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1253] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1285] = 37
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1317] = 'ERC20: transfer from the zero ad'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1349] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    if not this.address:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1253] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1285] = 35
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1317] = 'ERC20: transfer to the zero addr'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1349] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] > 10^18 * antiWhale:
                                                        if stor28[address(msg.sender)]:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1253] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1285] = 58
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1317] = 'You are not permitted to transfe'
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1349] = 'r more than 100,000 tokens'
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249
                                                               len (5 * ceil32(return_data.size)) + 132
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1345] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1349] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1381] = 38
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1413 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1451] = 0
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1345
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1345] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1349] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1381] = 27
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1413] = 'SafeMath: addition overflow'
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1345
                                                           len (5 * ceil32(return_data.size)) + 100
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1349] = msg.sender
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1381] = 64
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1413] = ('cd', 4).length
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1445 len ceil32(('cd', 4).length)] = mem[160 len ceil32(('cd', 4).length)]
                                                    if ceil32(('cd', 4).length) > ('cd', 4).length:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ('cd', 4).length + 1445] = 0
                                                    require ext_code.size(nodeRewardManagementAddress)
                                                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                         gas gas_remaining wei
                                                        args mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1349 len ceil32(('cd', 4).length) + (5 * ceil32(return_data.size)) + 96]
                                                else:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7524 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_7524] = 30
                                                    mem[_7524 + 32] = 'SafeMath: subtraction overflow'
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
                                                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                    _8106 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_8106 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_8106]:
                                                        revert with 0, 50
                                                    mem[_8106 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[_8106 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _8106 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_8106]:
                                                        revert with 0, 50
                                                    mem[_8106 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_8106 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[_8106 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                    mem[_8106 + ceil32(return_data.size) + 132] = 0
                                                    mem[_8106 + ceil32(return_data.size) + 164] = 160
                                                    mem[_8106 + ceil32(return_data.size) + 260] = mem[_8106]
                                                    idx = 0
                                                    s = _8106 + ceil32(return_data.size) + 292
                                                    t = _8106 + 32
                                                    while idx < mem[_8106]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_8106 + ceil32(return_data.size) + 260 len (32 * mem[_8106]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor24.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] > 10^18 * antiWhale:
                                                        if stor28[address(msg.sender)]:
                                                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                    mem[_8106 + ceil32(return_data.size) + 96] = 38
                                                    mem[_8106 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                    mem[_8106 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                    mem[_8106 + ceil32(return_data.size) + 196] = msg.sender
                                                    mem[_8106 + ceil32(return_data.size) + 228] = 64
                                                    mem[_8106 + ceil32(return_data.size) + 260] = mem[128]
                                                    mem[_8106 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[_8106 + ceil32(return_data.size) + mem[128] + 292] = 0
                                                    require ext_code.size(nodeRewardManagementAddress)
                                                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[_8106 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                            else:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if 0 > balanceOf[address(this.address)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 775 len 26] >> 48,
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
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7520 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_7520] = 30
                                                    mem[_7520 + 32] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        var251001 = 32
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
                                                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                    _8102 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_8102 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_8102]:
                                                        revert with 0, 50
                                                    mem[_8102 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[_8102 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _8102 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_8102]:
                                                        revert with 0, 50
                                                    mem[_8102 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_8102 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[_8102 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                    mem[_8102 + ceil32(return_data.size) + 132] = 0
                                                    mem[_8102 + ceil32(return_data.size) + 164] = 160
                                                    mem[_8102 + ceil32(return_data.size) + 260] = mem[_8102]
                                                    idx = 0
                                                    s = _8102 + ceil32(return_data.size) + 292
                                                    t = _8102 + 32
                                                    while idx < mem[_8102]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_8102 + ceil32(return_data.size) + 260 len (32 * mem[_8102]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor24.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] > 10^18 * antiWhale:
                                                        if stor28[address(msg.sender)]:
                                                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                    mem[_8102 + ceil32(return_data.size) + 96] = 38
                                                    mem[_8102 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                    mem[_8102 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                    mem[_8102 + ceil32(return_data.size) + 196] = msg.sender
                                                    mem[_8102 + ceil32(return_data.size) + 228] = 64
                                                    mem[_8102 + ceil32(return_data.size) + 260] = mem[128]
                                                    mem[_8102 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[_8102 + ceil32(return_data.size) + mem[128] + 292] = 0
                                                    require ext_code.size(nodeRewardManagementAddress)
                                                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[_8102 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                                else:
                                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address]:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7518 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_7518] = 30
                                                    mem[_7518 + 32] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        var257001 = 32
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
                                                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                    _8100 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_8100 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_8100]:
                                                        revert with 0, 50
                                                    mem[_8100 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[_8100 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _8100 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_8100]:
                                                        revert with 0, 50
                                                    mem[_8100 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_8100 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[_8100 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                    mem[_8100 + ceil32(return_data.size) + 132] = 0
                                                    mem[_8100 + ceil32(return_data.size) + 164] = 160
                                                    mem[_8100 + ceil32(return_data.size) + 260] = mem[_8100]
                                                    idx = 0
                                                    s = _8100 + ceil32(return_data.size) + 292
                                                    t = _8100 + 32
                                                    while idx < mem[_8100]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_8100 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_8100 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _8100 + ceil32(return_data.size) + (32 * mem[_8100]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor24.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] <= 10^18 * antiWhale:
                                                        _9884 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_9884] = 38
                                                        mem[_9884 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_9884 + 70 len 26]
                                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    else:
                                                        mem[0] = msg.sender
                                                        mem[32] = 28
                                                        if stor28[address(msg.sender)]:
                                                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                        _9956 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_9956] = 38
                                                        mem[_9956 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_9956 + 70 len 26]
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
                                                        mem[mem[64] + mem[128] + 100] = 0
                                                    require ext_code.size(nodeRewardManagementAddress)
                                                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                        else:
                                            if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not balanceOf[this.address]:
                                                revert with 0, 18
                                            if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 353] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 385] = 'SafeMath: division by zero'
                                            if not balanceOf[this.address] * rewardsFee / 100:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 417] = 26
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 449] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481] = 2
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 513] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                allowance[address(this.address)][stor14].field_0 = 0
                                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 577] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 613] = 0
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 645] = 160
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 2
                                                idx = 0
                                                s = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773
                                                t = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 513
                                                while idx < mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 677] = this.address
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 577] = 30
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 609] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 645] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 677] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 739] = 0
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641] = 30
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 673] = 'SafeMath: subtraction overflow'
                                                if 0 > balanceOf[this.address] * rewardsFee / 100:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 803] = 0
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if balanceOf[this.address] * rewardsFee / 100 < 0:
                                                    revert with 0, 17
                                                if not this.address:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 37
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'ERC20: transfer from the zero ad'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 132
                                                if not distributionPoolAddress:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 35
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'ERC20: transfer to the zero addr'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 132
                                                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                    revert with 0, 17
                                                if balanceOf[this.address] * rewardsFee / 100 <= 10^18 * antiWhale:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 38
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 775 len 26]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 907] = 0
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    if balanceOf[address(this.address)] < balanceOf[this.address] * rewardsFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(this.address)] -= balanceOf[this.address] * rewardsFee / 100
                                                    if balanceOf[stor17] > !(balanceOf[this.address] * rewardsFee / 100):
                                                        revert with 0, 17
                                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) < balanceOf[stor17]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 27
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: addition overflow'
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 100
                                                    balanceOf[stor17] += balanceOf[this.address] * rewardsFee / 100
                                                    emit Transfer((balanceOf[this.address] * rewardsFee / 100), this.address, distributionPoolAddress);
                                                    if not balanceOf[this.address]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            var257001 = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251] = 0
                                                            revert with 0, 
                                                                        'SafeMath: subtraction overflow',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251 len (9 * ceil32(return_data.size)) + 2]
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 
                                                                        'ERC20: approve from the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 
                                                                        'ERC20: approve to the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, 0, 0, 0, 0, block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1349 len 9 * ceil32(return_data.size)]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = 0
                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153 len (13 * ceil32(return_data.size)) + 96],
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1285] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1317] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445
                                                        t = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: transfer from the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if not this.address:
                                                            revert with 0, 
                                                                        'ERC20: transfer to the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 
                                                                            'You are not permitted to transfer more than 100,000 tokens',
                                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1451] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1451 len (17 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                            revert with 0, 
                                                                        'SafeMath: addition overflow',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len 17 * ceil32(return_data.size)]
                                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len ceil32(('cd', 4).length)] = mem[160 len ceil32(('cd', 4).length)]
                                                        if ceil32(('cd', 4).length) > ('cd', 4).length:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + ('cd', 4).length + 1445] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=('cd', 4).length, data=mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len (17 * ceil32(return_data.size)) + ceil32(('cd', 4).length)])
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 33
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: multiplication overflo'
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 901] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                               len (5 * ceil32(return_data.size)) + 132
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 997] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1029] = 30
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1061] = 'SafeMath: subtraction overflow'
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1091] = 0
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993
                                                               len (5 * ceil32(return_data.size)) + 100
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7508 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7508] = 30
                                                        mem[_7508 + 32] = 'SafeMath: subtraction overflow'
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
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                        _8092 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_8092 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_8092]:
                                                            revert with 0, 50
                                                        mem[_8092 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[_8092 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _8092 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_8092]:
                                                            revert with 0, 50
                                                        mem[_8092 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_8092 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[_8092 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_8092 + ceil32(return_data.size) + 132] = 0
                                                        mem[_8092 + ceil32(return_data.size) + 164] = 160
                                                        mem[_8092 + ceil32(return_data.size) + 260] = mem[_8092]
                                                        idx = 0
                                                        s = _8092 + ceil32(return_data.size) + 292
                                                        t = _8092 + 32
                                                        while idx < mem[_8092]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_8092 + ceil32(return_data.size) + 260 len (32 * mem[_8092]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                        mem[_8092 + ceil32(return_data.size) + 96] = 38
                                                        mem[_8092 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[_8092 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_8092 + ceil32(return_data.size) + 196] = msg.sender
                                                        mem[_8092 + ceil32(return_data.size) + 228] = 64
                                                        mem[_8092 + ceil32(return_data.size) + 260] = mem[128]
                                                        mem[_8092 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[_8092 + ceil32(return_data.size) + mem[128] + 292] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_8092 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                                else:
                                                    if stor28[address(this.address)]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 58
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'You are not permitted to transfe'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 'r more than 100,000 tokens'
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 38
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 775 len 26]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 907] = 0
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    if balanceOf[address(this.address)] < balanceOf[this.address] * rewardsFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(this.address)] -= balanceOf[this.address] * rewardsFee / 100
                                                    if balanceOf[stor17] > !(balanceOf[this.address] * rewardsFee / 100):
                                                        revert with 0, 17
                                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) < balanceOf[stor17]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 27
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: addition overflow'
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 100
                                                    balanceOf[stor17] += balanceOf[this.address] * rewardsFee / 100
                                                    emit Transfer((balanceOf[this.address] * rewardsFee / 100), this.address, distributionPoolAddress);
                                                    if not balanceOf[this.address]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251] = 0
                                                            revert with 0, 
                                                                        'SafeMath: subtraction overflow',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251 len (9 * ceil32(return_data.size)) + 2]
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 
                                                                        'ERC20: approve from the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 
                                                                        'ERC20: approve to the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, 0, 0, 0, 0, block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1349 len 9 * ceil32(return_data.size)]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = 0
                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153 len (13 * ceil32(return_data.size)) + 96],
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1285] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1317] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445
                                                        t = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: transfer from the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if not this.address:
                                                            revert with 0, 
                                                                        'ERC20: transfer to the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 
                                                                            'You are not permitted to transfer more than 100,000 tokens',
                                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1451] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1451 len (17 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                            revert with 0, 
                                                                        'SafeMath: addition overflow',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len 17 * ceil32(return_data.size)]
                                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len ceil32(('cd', 4).length)] = mem[160 len ceil32(('cd', 4).length)]
                                                        if ceil32(('cd', 4).length) > ('cd', 4).length:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + ('cd', 4).length + 1445] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=('cd', 4).length, data=mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len (17 * ceil32(return_data.size)) + ceil32(('cd', 4).length)])
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 33
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: multiplication overflo'
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 901] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                               len (5 * ceil32(return_data.size)) + 132
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 997] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1029] = 30
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1061] = 'SafeMath: subtraction overflow'
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1091] = 0
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993
                                                               len (5 * ceil32(return_data.size)) + 100
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7512 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7512] = 30
                                                        mem[_7512 + 32] = 'SafeMath: subtraction overflow'
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
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                        _8096 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_8096 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_8096]:
                                                            revert with 0, 50
                                                        mem[_8096 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[_8096 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _8096 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_8096]:
                                                            revert with 0, 50
                                                        mem[_8096 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_8096 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[_8096 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_8096 + ceil32(return_data.size) + 132] = 0
                                                        mem[_8096 + ceil32(return_data.size) + 164] = 160
                                                        mem[_8096 + ceil32(return_data.size) + 260] = mem[_8096]
                                                        idx = 0
                                                        s = _8096 + ceil32(return_data.size) + 292
                                                        t = _8096 + 32
                                                        while idx < mem[_8096]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_8096 + ceil32(return_data.size) + 260 len (32 * mem[_8096]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                        mem[_8096 + ceil32(return_data.size) + 96] = 38
                                                        mem[_8096 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[_8096 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_8096 + ceil32(return_data.size) + 196] = msg.sender
                                                        mem[_8096 + ceil32(return_data.size) + 228] = 64
                                                        mem[_8096 + ceil32(return_data.size) + 260] = mem[128]
                                                        mem[_8096 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[_8096 + ceil32(return_data.size) + mem[128] + 292] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_8096 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                            else:
                                                if balanceOf[this.address] * rewardsFee / 100 and stor23 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                                    revert with 0, 17
                                                if not balanceOf[this.address] * rewardsFee / 100:
                                                    revert with 0, 18
                                                if balanceOf[this.address] * rewardsFee / 100 * stor23 / balanceOf[this.address] * rewardsFee / 100 != stor23:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 417] = 26
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 449] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481] = 2
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 513] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor23 / 100
                                                emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor23 / 100), this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 577] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 581] = balanceOf[this.address] * rewardsFee / 100 * stor23 / 100
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 613] = 0
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 645] = 160
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 2
                                                idx = 0
                                                s = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773
                                                t = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 513
                                                while idx < mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 677] = this.address
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address] * rewardsFee / 100 * stor23 / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 577] = 30
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 609] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 645] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 677] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 739] = 0
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641] = 30
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 673] = 'SafeMath: subtraction overflow'
                                                if balanceOf[this.address] * rewardsFee / 100 * stor23 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 803] = 0
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor23 / 100:
                                                    revert with 0, 17
                                                if not this.address:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 37
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'ERC20: transfer from the zero ad'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 132
                                                if not distributionPoolAddress:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 35
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'ERC20: transfer to the zero addr'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 132
                                                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                    revert with 0, 17
                                                if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) <= 10^18 * antiWhale:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) > balanceOf[address(this.address)]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 38
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 775 len 26]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 907] = 0
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)
                                                    if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) < balanceOf[stor17]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 27
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: addition overflow'
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 100
                                                    balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)
                                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)), this.address, distributionPoolAddress);
                                                    if not balanceOf[this.address]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7500 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7500] = 30
                                                        mem[_7500 + 32] = 'SafeMath: subtraction overflow'
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
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                        _8086 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_8086 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_8086]:
                                                            revert with 0, 50
                                                        mem[_8086 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[_8086 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _8086 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_8086]:
                                                            revert with 0, 50
                                                        mem[_8086 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_8086 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[_8086 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_8086 + ceil32(return_data.size) + 132] = 0
                                                        mem[_8086 + ceil32(return_data.size) + 164] = 160
                                                        mem[_8086 + ceil32(return_data.size) + 260] = mem[_8086]
                                                        idx = 0
                                                        s = _8086 + ceil32(return_data.size) + 292
                                                        t = _8086 + 32
                                                        while idx < mem[_8086]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_8086 + ceil32(return_data.size) + 260 len (32 * mem[_8086]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                        mem[_8086 + ceil32(return_data.size) + 96] = 38
                                                        mem[_8086 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[_8086 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_8086 + ceil32(return_data.size) + 196] = msg.sender
                                                        mem[_8086 + ceil32(return_data.size) + 228] = 64
                                                        mem[_8086 + ceil32(return_data.size) + 260] = mem[128]
                                                        mem[_8086 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[_8086 + ceil32(return_data.size) + mem[128] + 292] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_8086 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 33
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: multiplication overflo'
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 901] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                               len (5 * ceil32(return_data.size)) + 132
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 997] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1029] = 30
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1061] = 'SafeMath: subtraction overflow'
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1091] = 0
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993
                                                               len (5 * ceil32(return_data.size)) + 100
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7498 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7498] = 30
                                                        mem[_7498 + 32] = 'SafeMath: subtraction overflow'
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
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                        _8084 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_8084 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_8084]:
                                                            revert with 0, 50
                                                        mem[_8084 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[_8084 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _8084 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_8084]:
                                                            revert with 0, 50
                                                        mem[_8084 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_8084 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[_8084 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_8084 + ceil32(return_data.size) + 132] = 0
                                                        mem[_8084 + ceil32(return_data.size) + 164] = 160
                                                        mem[_8084 + ceil32(return_data.size) + 260] = mem[_8084]
                                                        idx = 0
                                                        s = _8084 + ceil32(return_data.size) + 292
                                                        t = _8084 + 32
                                                        while idx < mem[_8084]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_8084 + ceil32(return_data.size) + 260 len (32 * mem[_8084]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                        mem[_8084 + ceil32(return_data.size) + 96] = 38
                                                        mem[_8084 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[_8084 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_8084 + ceil32(return_data.size) + 196] = msg.sender
                                                        mem[_8084 + ceil32(return_data.size) + 228] = 64
                                                        mem[_8084 + ceil32(return_data.size) + 260] = mem[128]
                                                        mem[_8084 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[_8084 + ceil32(return_data.size) + mem[128] + 292] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_8084 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                                else:
                                                    if stor28[address(this.address)]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 58
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'You are not permitted to transfe'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 'r more than 100,000 tokens'
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) > balanceOf[address(this.address)]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 38
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 775 len 26]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 907] = 0
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)
                                                    if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) < balanceOf[stor17]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 27
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: addition overflow'
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 100
                                                    balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)
                                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)), this.address, distributionPoolAddress);
                                                    if not balanceOf[this.address]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251] = 0
                                                            revert with 0, 
                                                                        'SafeMath: subtraction overflow',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251 len (9 * ceil32(return_data.size)) + 2]
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 
                                                                        'ERC20: approve from the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 
                                                                        'ERC20: approve to the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, 0, 0, 0, 0, block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1349 len 9 * ceil32(return_data.size)]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = 0
                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153 len (13 * ceil32(return_data.size)) + 96],
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1285] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1317] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445
                                                        t = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: transfer from the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if not this.address:
                                                            revert with 0, 
                                                                        'ERC20: transfer to the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 
                                                                            'You are not permitted to transfer more than 100,000 tokens',
                                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1451] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1451 len (17 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                            revert with 0, 
                                                                        'SafeMath: addition overflow',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len 17 * ceil32(return_data.size)]
                                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len ceil32(('cd', 4).length)] = mem[160 len ceil32(('cd', 4).length)]
                                                        if ceil32(('cd', 4).length) > ('cd', 4).length:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + ('cd', 4).length + 1445] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=('cd', 4).length, data=mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len (17 * ceil32(return_data.size)) + ceil32(('cd', 4).length)])
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 33
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: multiplication overflo'
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 901] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                               len (5 * ceil32(return_data.size)) + 132
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 997] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1029] = 30
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1061] = 'SafeMath: subtraction overflow'
                                                            var238001 = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1091] = 0
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993
                                                               len (5 * ceil32(return_data.size)) + 100
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7502 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7502] = 30
                                                        mem[_7502 + 32] = 'SafeMath: subtraction overflow'
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
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                        _8088 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_8088 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_8088]:
                                                            revert with 0, 50
                                                        mem[_8088 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[_8088 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _8088 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_8088]:
                                                            revert with 0, 50
                                                        mem[_8088 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_8088 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[_8088 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_8088 + ceil32(return_data.size) + 132] = 0
                                                        mem[_8088 + ceil32(return_data.size) + 164] = 160
                                                        mem[_8088 + ceil32(return_data.size) + 260] = mem[_8088]
                                                        idx = 0
                                                        s = _8088 + ceil32(return_data.size) + 292
                                                        t = _8088 + 32
                                                        while idx < mem[_8088]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_8088 + ceil32(return_data.size) + 260 len (32 * mem[_8088]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                        mem[_8088 + ceil32(return_data.size) + 96] = 38
                                                        mem[_8088 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[_8088 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_8088 + ceil32(return_data.size) + 196] = msg.sender
                                                        mem[_8088 + ceil32(return_data.size) + 228] = 64
                                                        mem[_8088 + ceil32(return_data.size) + 260] = mem[128]
                                                        mem[_8088 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[_8088 + ceil32(return_data.size) + mem[128] + 292] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_8088 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                    else:
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = 26
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 161] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 193] = 2
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 225] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 289] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 257] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 293] = 32
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = 36
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 357] = 'ERC20: approve from the zero add'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 389] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289
                                               len ceil32(return_data.size) + 132
                                        if not uniswapV2RouterAddress:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 293] = 32
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = 34
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 357] = 'ERC20: approve to the zero addre'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 389] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289
                                               len ceil32(return_data.size) + 132
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289] = 0
                                        emit Approval(mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 293] = 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 357] = 160
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 453] = 2
                                        idx = 0
                                        s = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 485
                                        t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 225
                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 193]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 389] = this.address
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 421] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 453 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 193]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 289] = 30
                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 321] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call futurUsePoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not balanceOf[this.address]:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 353] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 385] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 417] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 449] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481] = 2
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 513] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor14].field_0 = 0
                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 577] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 613] = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 645] = 160
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 2
                                            idx = 0
                                            s = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773
                                            t = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 513
                                            while idx < mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 677] = this.address
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 577] = 30
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 609] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 645] = 32
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 677] = 30
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 'SafeMath: subtraction overflow'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 739] = 0
                                                revert with memory
                                                  from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641
                                                   len (5 * ceil32(return_data.size)) + 100
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641] = 30
                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 673] = 'SafeMath: subtraction overflow'
                                            if not this.address:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 37
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'ERC20: transfer from the zero ad'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                   len (5 * ceil32(return_data.size)) + 132
                                            if not distributionPoolAddress:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 35
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'ERC20: transfer to the zero addr'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                   len (5 * ceil32(return_data.size)) + 132
                                            if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 0 > 10^18 * antiWhale:
                                                if stor28[address(this.address)]:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 58
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'You are not permitted to transfe'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 'r more than 100,000 tokens'
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 132
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if 0 > balanceOf[address(this.address)]:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 38
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 775 len 26]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 907] = 0
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                       len (5 * ceil32(return_data.size)) + 132
                                                if balanceOf[address(this.address)] < 0:
                                                    revert with 0, 17
                                                if balanceOf[stor17] > -1:
                                                    revert with 0, 17
                                                if balanceOf[stor17] < balanceOf[stor17]:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 27
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: addition overflow'
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                       len (5 * ceil32(return_data.size)) + 100
                                                balanceOf[stor17] = balanceOf[stor17]
                                                emit Transfer(0, this.address, distributionPoolAddress);
                                                if balanceOf[this.address]:
                                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address]:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 33
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: multiplication overflo'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 901] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 997] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1029] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1061] = 'SafeMath: subtraction overflow'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1091] = 0
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993
                                                           len (5 * ceil32(return_data.size)) + 100
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251] = 0
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251 len (9 * ceil32(return_data.size)) + 2]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 
                                                                    'ERC20: approve from the zero address',
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 
                                                                    'ERC20: approve to the zero address',
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                    allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                    emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1349 len 9 * ceil32(return_data.size)]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153 len (13 * ceil32(return_data.size)) + 96],
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1285] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1317] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445
                                                    t = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor24.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 
                                                                    'ERC20: transfer from the zero address',
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                    if not this.address:
                                                        revert with 0, 
                                                                    'ERC20: transfer to the zero address',
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] > 10^18 * antiWhale:
                                                        if stor28[address(msg.sender)]:
                                                            revert with 0, 
                                                                        'You are not permitted to transfer more than 100,000 tokens',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1451] = 0
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1451 len (17 * ceil32(return_data.size)) + 26]
                                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len 17 * ceil32(return_data.size)]
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len ceil32(('cd', 4).length)] = mem[160 len ceil32(('cd', 4).length)]
                                                    if ceil32(('cd', 4).length) > ('cd', 4).length:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + ('cd', 4).length + 1445] = 0
                                                    require ext_code.size(nodeRewardManagementAddress)
                                                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=('cd', 4).length, data=mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len (17 * ceil32(return_data.size)) + ceil32(('cd', 4).length)])
                                                else:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251] = 0
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251 len (9 * ceil32(return_data.size)) + 2]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 
                                                                    'ERC20: approve from the zero address',
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 
                                                                    'ERC20: approve to the zero address',
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, 0, 0, 0, 0, block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1349 len 9 * ceil32(return_data.size)]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = 0
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153 len (13 * ceil32(return_data.size)) + 96],
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1285] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1317] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445
                                                    t = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1349] = this.address
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]) + -mem[64] + 1441]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor24.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] <= 10^18 * antiWhale:
                                                        _9929 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_9929] = 38
                                                        mem[_9929 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_9929 + 70 len 26]
                                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    else:
                                                        mem[0] = msg.sender
                                                        mem[32] = 28
                                                        if stor28[address(msg.sender)]:
                                                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                        _10001 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_10001] = 38
                                                        mem[_10001 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_10001 + 70 len 26]
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
                                                        mem[mem[64] + mem[128] + 100] = 0
                                                    require ext_code.size(nodeRewardManagementAddress)
                                                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                            else:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if 0 > balanceOf[address(this.address)]:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 38
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 775 len 26]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 907] = 0
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                       len (5 * ceil32(return_data.size)) + 132
                                                if balanceOf[address(this.address)] < 0:
                                                    revert with 0, 17
                                                if balanceOf[stor17] > -1:
                                                    revert with 0, 17
                                                if balanceOf[stor17] < balanceOf[stor17]:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 27
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: addition overflow'
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                       len (5 * ceil32(return_data.size)) + 100
                                                balanceOf[stor17] = balanceOf[stor17]
                                                emit Transfer(0, this.address, distributionPoolAddress);
                                                if balanceOf[this.address]:
                                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address]:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 33
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: multiplication overflo'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 901] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 997] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1029] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1061] = 'SafeMath: subtraction overflow'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1091] = 0
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993
                                                           len (5 * ceil32(return_data.size)) + 100
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        var251001 = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251] = 0
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251 len (9 * ceil32(return_data.size)) + 2]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 
                                                                    'ERC20: approve from the zero address',
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 
                                                                    'ERC20: approve to the zero address',
                                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                    allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                    emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1349 len 9 * ceil32(return_data.size)]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153 len (13 * ceil32(return_data.size)) + 96],
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1285] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1317] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445
                                                    t = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1349] = this.address
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]) + -mem[64] + 1441]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor24.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] <= 10^18 * antiWhale:
                                                        _9920 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_9920] = 38
                                                        mem[_9920 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_9920 + 70 len 26]
                                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    else:
                                                        mem[0] = msg.sender
                                                        mem[32] = 28
                                                        if stor28[address(msg.sender)]:
                                                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                        _9992 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_9992] = 38
                                                        mem[_9992 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_9992 + 70 len 26]
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
                                                        mem[mem[64] + mem[128] + 100] = 0
                                                    require ext_code.size(nodeRewardManagementAddress)
                                                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                                else:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7549 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_7549] = 30
                                                    mem[_7549 + 32] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        var245001 = 32
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
                                                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                    _8126 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_8126 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_8126]:
                                                        revert with 0, 50
                                                    mem[_8126 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[_8126 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _8126 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_8126]:
                                                        revert with 0, 50
                                                    mem[_8126 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_8126 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[_8126 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                    mem[_8126 + ceil32(return_data.size) + 132] = 0
                                                    mem[_8126 + ceil32(return_data.size) + 164] = 160
                                                    mem[_8126 + ceil32(return_data.size) + 260] = mem[_8126]
                                                    idx = 0
                                                    s = _8126 + ceil32(return_data.size) + 292
                                                    t = _8126 + 32
                                                    while idx < mem[_8126]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_8126 + ceil32(return_data.size) + 260 len (32 * mem[_8126]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor24.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                        revert with 0, 17
                                                    if ext_call.return_data[0] > 10^18 * antiWhale:
                                                        if stor28[address(msg.sender)]:
                                                            revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                    mem[_8126 + ceil32(return_data.size) + 96] = 38
                                                    mem[_8126 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                    mem[_8126 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                    mem[_8126 + ceil32(return_data.size) + 196] = msg.sender
                                                    mem[_8126 + ceil32(return_data.size) + 228] = 64
                                                    mem[_8126 + ceil32(return_data.size) + 260] = mem[128]
                                                    mem[_8126 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[_8126 + ceil32(return_data.size) + mem[128] + 292] = 0
                                                    require ext_code.size(nodeRewardManagementAddress)
                                                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[_8126 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                        else:
                                            if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not balanceOf[this.address]:
                                                revert with 0, 18
                                            if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 353] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 385] = 'SafeMath: division by zero'
                                            if not balanceOf[this.address] * rewardsFee / 100:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 417] = 26
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 449] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481] = 2
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 513] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                allowance[address(this.address)][stor14].field_0 = 0
                                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 577] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 613] = 0
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 645] = 160
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 2
                                                idx = 0
                                                s = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773
                                                t = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 513
                                                while idx < mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 677] = this.address
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 577] = 30
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 609] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 645] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 677] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 739] = 0
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641] = 30
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 673] = 'SafeMath: subtraction overflow'
                                                if 0 > balanceOf[this.address] * rewardsFee / 100:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 803] = 0
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if balanceOf[this.address] * rewardsFee / 100 < 0:
                                                    revert with 0, 17
                                                if not this.address:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 37
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'ERC20: transfer from the zero ad'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 132
                                                if not distributionPoolAddress:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 35
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'ERC20: transfer to the zero addr'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 132
                                                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                    revert with 0, 17
                                                if balanceOf[this.address] * rewardsFee / 100 <= 10^18 * antiWhale:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 38
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 775 len 26]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 907] = 0
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    if balanceOf[address(this.address)] < balanceOf[this.address] * rewardsFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(this.address)] -= balanceOf[this.address] * rewardsFee / 100
                                                    if balanceOf[stor17] > !(balanceOf[this.address] * rewardsFee / 100):
                                                        revert with 0, 17
                                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) < balanceOf[stor17]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 27
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: addition overflow'
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 100
                                                    balanceOf[stor17] += balanceOf[this.address] * rewardsFee / 100
                                                    emit Transfer((balanceOf[this.address] * rewardsFee / 100), this.address, distributionPoolAddress);
                                                    if not balanceOf[this.address]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            var251001 = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251] = 0
                                                            revert with 0, 
                                                                        'SafeMath: subtraction overflow',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251 len (9 * ceil32(return_data.size)) + 2]
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 
                                                                        'ERC20: approve from the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 
                                                                        'ERC20: approve to the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, 0, 0, 0, 0, block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1349 len 9 * ceil32(return_data.size)]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = 0
                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153 len (13 * ceil32(return_data.size)) + 96],
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1285] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1317] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445
                                                        t = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: transfer from the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if not this.address:
                                                            revert with 0, 
                                                                        'ERC20: transfer to the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 
                                                                            'You are not permitted to transfer more than 100,000 tokens',
                                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1451] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1451 len (17 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                            revert with 0, 
                                                                        'SafeMath: addition overflow',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len 17 * ceil32(return_data.size)]
                                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len ceil32(('cd', 4).length)] = mem[160 len ceil32(('cd', 4).length)]
                                                        if ceil32(('cd', 4).length) > ('cd', 4).length:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + ('cd', 4).length + 1445] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=('cd', 4).length, data=mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len (17 * ceil32(return_data.size)) + ceil32(('cd', 4).length)])
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 33
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: multiplication overflo'
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 901] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                               len (5 * ceil32(return_data.size)) + 132
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 997] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1029] = 30
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1061] = 'SafeMath: subtraction overflow'
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1091] = 0
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993
                                                               len (5 * ceil32(return_data.size)) + 100
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7537 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7537] = 30
                                                        mem[_7537 + 32] = 'SafeMath: subtraction overflow'
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
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                        _8116 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_8116 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_8116]:
                                                            revert with 0, 50
                                                        mem[_8116 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[_8116 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _8116 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_8116]:
                                                            revert with 0, 50
                                                        mem[_8116 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_8116 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[_8116 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_8116 + ceil32(return_data.size) + 132] = 0
                                                        mem[_8116 + ceil32(return_data.size) + 164] = 160
                                                        mem[_8116 + ceil32(return_data.size) + 260] = mem[_8116]
                                                        idx = 0
                                                        s = _8116 + ceil32(return_data.size) + 292
                                                        t = _8116 + 32
                                                        while idx < mem[_8116]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_8116 + ceil32(return_data.size) + 260 len (32 * mem[_8116]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                        mem[_8116 + ceil32(return_data.size) + 96] = 38
                                                        mem[_8116 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[_8116 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_8116 + ceil32(return_data.size) + 196] = msg.sender
                                                        mem[_8116 + ceil32(return_data.size) + 228] = 64
                                                        mem[_8116 + ceil32(return_data.size) + 260] = mem[128]
                                                        mem[_8116 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[_8116 + ceil32(return_data.size) + mem[128] + 292] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_8116 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                                else:
                                                    if stor28[address(this.address)]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 58
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773] = 'You are not permitted to transfe'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 'r more than 100,000 tokens'
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 38
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 775 len 26]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 907] = 0
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    if balanceOf[address(this.address)] < balanceOf[this.address] * rewardsFee / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(this.address)] -= balanceOf[this.address] * rewardsFee / 100
                                                    if balanceOf[stor17] > !(balanceOf[this.address] * rewardsFee / 100):
                                                        revert with 0, 17
                                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) < balanceOf[stor17]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 27
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: addition overflow'
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 100
                                                    balanceOf[stor17] += balanceOf[this.address] * rewardsFee / 100
                                                    emit Transfer((balanceOf[this.address] * rewardsFee / 100), this.address, distributionPoolAddress);
                                                    if not balanceOf[this.address]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251] = 0
                                                            revert with 0, 
                                                                        'SafeMath: subtraction overflow',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1251 len (9 * ceil32(return_data.size)) + 2]
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 
                                                                        'ERC20: approve from the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 
                                                                        'ERC20: approve to the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, 0, 0, 0, 0, block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1349 len 9 * ceil32(return_data.size)]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = 0
                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153 len (13 * ceil32(return_data.size)) + 96],
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1249] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1285] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1317] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445
                                                        t = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1413 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: transfer from the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if not this.address:
                                                            revert with 0, 
                                                                        'ERC20: transfer to the zero address',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 
                                                                            'You are not permitted to transfer more than 100,000 tokens',
                                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1451] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1451 len (17 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                            revert with 0, 
                                                                        'SafeMath: addition overflow',
                                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len 17 * ceil32(return_data.size)]
                                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len ceil32(('cd', 4).length)] = mem[160 len ceil32(('cd', 4).length)]
                                                        if ceil32(('cd', 4).length) > ('cd', 4).length:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + ('cd', 4).length + 1445] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=('cd', 4).length, data=mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 1445 len (17 * ceil32(return_data.size)) + ceil32(('cd', 4).length)])
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 837] = 33
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: multiplication overflo'
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 901] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801
                                                               len (5 * ceil32(return_data.size)) + 132
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 997] = 32
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1029] = 30
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1061] = 'SafeMath: subtraction overflow'
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1091] = 0
                                                            revert with memory
                                                              from ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993
                                                               len (5 * ceil32(return_data.size)) + 100
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7541 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7541] = 30
                                                        mem[_7541 + 32] = 'SafeMath: subtraction overflow'
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
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                        _8120 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_8120 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_8120]:
                                                            revert with 0, 50
                                                        mem[_8120 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[_8120 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _8120 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_8120]:
                                                            revert with 0, 50
                                                        mem[_8120 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_8120 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[_8120 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_8120 + ceil32(return_data.size) + 132] = 0
                                                        mem[_8120 + ceil32(return_data.size) + 164] = 160
                                                        mem[_8120 + ceil32(return_data.size) + 260] = mem[_8120]
                                                        idx = 0
                                                        s = _8120 + ceil32(return_data.size) + 292
                                                        t = _8120 + 32
                                                        while idx < mem[_8120]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_8120 + ceil32(return_data.size) + 260 len (32 * mem[_8120]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                        mem[_8120 + ceil32(return_data.size) + 96] = 38
                                                        mem[_8120 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[_8120 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_8120 + ceil32(return_data.size) + 196] = msg.sender
                                                        mem[_8120 + ceil32(return_data.size) + 228] = 64
                                                        mem[_8120 + ceil32(return_data.size) + 260] = mem[128]
                                                        mem[_8120 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[_8120 + ceil32(return_data.size) + mem[128] + 292] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_8120 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                            else:
                                                if balanceOf[this.address] * rewardsFee / 100 and stor23 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                                    revert with 0, 17
                                                if not balanceOf[this.address] * rewardsFee / 100:
                                                    revert with 0, 18
                                                if balanceOf[this.address] * rewardsFee / 100 * stor23 / balanceOf[this.address] * rewardsFee / 100 != stor23:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 417] = 26
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 449] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481] = 2
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 513] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor23 / 100
                                                emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor23 / 100), this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 577] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 581] = balanceOf[this.address] * rewardsFee / 100 * stor23 / 100
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 613] = 0
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 645] = 160
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741] = 2
                                                idx = 0
                                                s = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 773
                                                t = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 513
                                                while idx < mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 677] = this.address
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 709] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address] * rewardsFee / 100 * stor23 / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 741 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 481]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 577] = 30
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 609] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 641] = 30
                                                mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 673] = 'SafeMath: subtraction overflow'
                                                if balanceOf[this.address] * rewardsFee / 100 * stor23 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor23 / 100:
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not distributionPoolAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                    revert with 0, 17
                                                if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) > 10^18 * antiWhale:
                                                    if stor28[address(this.address)]:
                                                        revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) > balanceOf[address(this.address)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 775 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)
                                                    if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) < balanceOf[stor17]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)
                                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)), this.address, distributionPoolAddress);
                                                    if not balanceOf[this.address]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
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
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, 0, 0, 0, 0, block.timestamp
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                            0,
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1445
                                                        t = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185
                                                        while idx < 2:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1445 len 64]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
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
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=('cd', 4).length, data=mem[160 len ceil32(('cd', 4).length)])
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            var232001 = 32
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
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
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1153] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1317] = 160
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1445
                                                        t = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1185
                                                        while idx < 2:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1445 len 64]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] > 10^18 * antiWhale:
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1249] = 38
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1281 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1345] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1349] = msg.sender
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1381] = 64
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1413] = mem[128]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1445 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + mem[128] + 1445] = 0
                                                        require ext_code.size(nodeRewardManagementAddress)
                                                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 1445 len ceil32(mem[128])])
                                                else:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) > balanceOf[address(this.address)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 775 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)
                                                    if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) < balanceOf[stor17]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)
                                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)), this.address, distributionPoolAddress);
                                                    if not balanceOf[this.address]:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7529 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7529] = 30
                                                        mem[_7529 + 32] = 'SafeMath: subtraction overflow'
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
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                        _8110 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_8110 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_8110]:
                                                            revert with 0, 50
                                                        mem[_8110 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[_8110 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _8110 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_8110]:
                                                            revert with 0, 50
                                                        mem[_8110 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_8110 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[_8110 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_8110 + ceil32(return_data.size) + 132] = 0
                                                        mem[_8110 + ceil32(return_data.size) + 164] = 160
                                                        mem[_8110 + ceil32(return_data.size) + 260] = mem[_8110]
                                                        idx = 0
                                                        s = _8110 + ceil32(return_data.size) + 292
                                                        t = _8110 + 32
                                                        while idx < mem[_8110]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_8110 + ceil32(return_data.size) + 196] = this.address
                                                        mem[_8110 + ceil32(return_data.size) + 228] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _8110 + ceil32(return_data.size) + (32 * mem[_8110]) + -mem[64] + 288]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] <= 10^18 * antiWhale:
                                                            _9899 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_9899] = 38
                                                            mem[_9899 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_9899 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                        else:
                                                            mem[0] = msg.sender
                                                            mem[32] = 28
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                            _9971 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_9971] = 38
                                                            mem[_9971 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_9971 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1089] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1157] = 160
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                        idx = 0
                                                        s = ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1285
                                                        t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 1025
                                                        while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1189] = this.address
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 993]) + -mem[64] + 1281]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7527 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7527] = 30
                                                        mem[_7527 + 32] = 'SafeMath: subtraction overflow'
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
                                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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
                                                        _8108 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_8108 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_8108]:
                                                            revert with 0, 50
                                                        mem[_8108 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[_8108 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _8108 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_8108]:
                                                            revert with 0, 50
                                                        mem[_8108 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_8108 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[_8108 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_8108 + ceil32(return_data.size) + 132] = 0
                                                        mem[_8108 + ceil32(return_data.size) + 164] = 160
                                                        mem[_8108 + ceil32(return_data.size) + 260] = mem[_8108]
                                                        idx = 0
                                                        s = _8108 + ceil32(return_data.size) + 292
                                                        t = _8108 + 32
                                                        while idx < mem[_8108]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_8108 + ceil32(return_data.size) + 196] = this.address
                                                        mem[_8108 + ceil32(return_data.size) + 228] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _8108 + ceil32(return_data.size) + (32 * mem[_8108]) + -mem[64] + 288]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor24.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if antiWhale > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 0, 17
                                                        if ext_call.return_data[0] <= 10^18 * antiWhale:
                                                            _9896 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_9896] = 38
                                                            mem[_9896 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_9896 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                        else:
                                                            mem[0] = msg.sender
                                                            mem[32] = 28
                                                            if stor28[address(msg.sender)]:
                                                                revert with 0, 'You are not permitted to transfer more than 100,000 tokens'
                                                            _9968 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_9968] = 38
                                                            mem[_9968 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_9968 + 70 len 26]
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
                                                        mem[mem[64] + mem[128] + 100] = 0
                                                    require ext_code.size(nodeRewardManagementAddress)
                                                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
