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
address sub_2a607841Address;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 futurFee;
uint256 totalFees;
uint256 cashoutFee;
uint256 sub_f5981949;
uint8 stor25;
uint8 stor25; offset 8
uint256 stor25; offset 8
uint256 swapTokensAmount;
uint256 maxTx;
uint8 stor28;
mapping of uint8 stor29;
mapping of uint8 stor30;
mapping of uint8 stor31;

function _isSuper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor31[arg1])
}

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
    return bool(stor29[arg1])
}

function sub_2a607841(?) {
    return sub_2a607841Address
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

function maxTx() {
    return maxTx
}

function nodeRewardManager() {
    return nodeRewardManagerAddress
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
    return bool(stor30[arg1])
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

function sub_f5981949(?) {
    return sub_f5981949
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateMaxTx(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTx = arg1
}

function updateCashoutFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cashoutFee = arg1
}

function updateRwSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f5981949 = arg1
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor28:
        revert with 0, 'Trading is already open'
    stor28 = 1
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

function sub_c9a34468(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor31[address(arg1)] = uint8(bool(arg2))
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29[address(arg1)] = uint8(arg2)
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

function sub_b5f8b729(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Amount too low'
    if not distributionPoolAddress:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg1:
        revert with 0, 17
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[stor17] > !arg1:
        revert with 0, 17
    if balanceOf[stor17] + arg1 < balanceOf[stor17]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor17] += arg1
    emit Transfer(arg1, 0, distributionPoolAddress);
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
    if arg2 == bool(stor30[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor30[address(arg1)] = uint8(arg2)
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

function sub_e3e0df29(?) {
    require calldata.size - 4 >= 32
    mem[164] = arg1
    require ext_code.size(0x8f37980d44f7487851346f4a5e5114d6b03dcf0a)
    call 0x8f37980d44f7487851346f4a5e5114d6b03dcf0a.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not distributionPoolAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if arg1 > balanceOf[stor17]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                    0
    if balanceOf[stor17] < arg1:
        revert with 0, 17
    balanceOf[stor17] -= arg1
    if balanceOf[msg.sender] > !arg1:
        revert with 0, 17
    if balanceOf[msg.sender] + arg1 < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + arg1
    emit Transfer(arg1, distributionPoolAddress, msg.sender);
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor29[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor29[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if owner != msg.sender:
        if owner != arg1:
            if msg.sender != this.address:
                if arg1 != this.address:
                    if not stor31[address(msg.sender)]:
                        if not stor31[address(arg1)]:
                            if uniswapV2PairAddress != arg1:
                                if uniswapV2RouterAddress != arg1:
                                    if not stor28:
                                        if uniswapV2PairAddress == msg.sender:
                                            stor29[address(arg1)] = 1
                                    else:
                                        if arg2 > !balanceOf[address(arg1)]:
                                            revert with 0, 17
                                        if arg2 + balanceOf[address(arg1)] < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 + balanceOf[address(arg1)] > maxTx:
                                            revert with 0, 'Transfer amount too high'
                                        if not stor28:
                                            if uniswapV2PairAddress == msg.sender:
                                                stor29[address(arg1)] = 1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor29[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor29[address(arg2)]:
        revert with 0, 'Blacklisted address'
    if owner != arg1:
        if owner != arg2:
            if arg1 != this.address:
                if arg2 != this.address:
                    if not stor31[address(arg1)]:
                        if not stor31[address(arg2)]:
                            if uniswapV2PairAddress != arg2:
                                if uniswapV2RouterAddress != arg2:
                                    if not stor28:
                                        if uniswapV2PairAddress == arg1:
                                            stor29[address(arg2)] = 1
                                    else:
                                        if arg3 > !balanceOf[address(arg2)]:
                                            revert with 0, 17
                                        if arg3 + balanceOf[address(arg2)] < arg3:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg3 + balanceOf[address(arg2)] > maxTx:
                                            revert with 0, 'Transfer amount too high'
                                        if not stor28:
                                            if uniswapV2PairAddress == arg1:
                                                stor29[address(arg2)] = 1
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT:  creation from the zero address'
    if stor29[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0xa6e15cc4 with:
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
    call nodeRewardManagerAddress.0x6edb7002 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cashoutAll() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT:  creation from the zero address'
    if stor29[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x619a635e with:
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
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[ceil32(return_data.size) + 160] = 38
                mem[ceil32(return_data.size) + 192 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if 0 > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 230 len 26] >> 48,
                                0
                if balanceOf[stor17] < 0:
                    revert with 0, 17
                if balanceOf[this.address] > -1:
                    revert with 0, 17
                if balanceOf[this.address] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address]
                emit Transfer(0, distributionPoolAddress, this.address);
                mem[ceil32(return_data.size) + 256] = 2
                mem[ceil32(return_data.size) + 288] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(2 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 36
                    mem[(2 * ceil32(return_data.size)) + 420] = 'ERC20: approve from the zero add'
                    mem[(2 * ceil32(return_data.size)) + 452] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 352
                       len ceil32(return_data.size) + 132
                if not uniswapV2RouterAddress:
                    mem[(2 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 34
                    mem[(2 * ceil32(return_data.size)) + 420] = 'ERC20: approve to the zero addre'
                    mem[(2 * ceil32(return_data.size)) + 452] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 352
                       len ceil32(return_data.size) + 132
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor14].field_0 = 0
                mem[(2 * ceil32(return_data.size)) + 352] = 0
                emit Approval(mem[(2 * ceil32(return_data.size)) + 352 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                mem[(2 * ceil32(return_data.size)) + 352] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 356] = 0
                mem[(2 * ceil32(return_data.size)) + 388] = 0
                mem[(2 * ceil32(return_data.size)) + 420] = 160
                mem[(2 * ceil32(return_data.size)) + 516] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 548
                t = ceil32(return_data.size) + 288
                while idx < mem[ceil32(return_data.size) + 256]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 452] = this.address
                mem[(2 * ceil32(return_data.size)) + 484] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 608]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _213 = mem[64]
                mem[64] = mem[64] + 64
                mem[_213] = 30
                mem[_213 + 32] = 'SafeMath: subtraction overflow'
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
                _231 = mem[64]
                mem[64] = mem[64] + 96
                mem[_231] = 38
                mem[_231 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_231 + 70 len 26]
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
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[ceil32(return_data.size) + 160] = 38
                mem[ceil32(return_data.size) + 192 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] * cashoutFee / 100 > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 230 len 26] >> 48,
                                0
                if balanceOf[stor17] < ext_call.return_data[0] * cashoutFee / 100:
                    revert with 0, 17
                balanceOf[stor17] -= ext_call.return_data[0] * cashoutFee / 100
                if balanceOf[this.address] > !(ext_call.return_data[0] * cashoutFee / 100):
                    revert with 0, 17
                if balanceOf[this.address] + (ext_call.return_data[0] * cashoutFee / 100) < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address] + (ext_call.return_data[0] * cashoutFee / 100)
                emit Transfer((ext_call.return_data[0] * cashoutFee / 100), distributionPoolAddress, this.address);
                mem[ceil32(return_data.size) + 256] = 2
                mem[ceil32(return_data.size) + 288] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(2 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 36
                    mem[(2 * ceil32(return_data.size)) + 420] = 'ERC20: approve from the zero add'
                    mem[(2 * ceil32(return_data.size)) + 452] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 352
                       len ceil32(return_data.size) + 132
                if not uniswapV2RouterAddress:
                    mem[(2 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 34
                    mem[(2 * ceil32(return_data.size)) + 420] = 'ERC20: approve to the zero addre'
                    mem[(2 * ceil32(return_data.size)) + 452] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 352
                       len ceil32(return_data.size) + 132
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * cashoutFee / 100
                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0] * cashoutFee / 100
                emit Approval(mem[(2 * ceil32(return_data.size)) + 352 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                mem[(2 * ceil32(return_data.size)) + 352] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * cashoutFee / 100
                mem[(2 * ceil32(return_data.size)) + 388] = 0
                mem[(2 * ceil32(return_data.size)) + 420] = 160
                mem[(2 * ceil32(return_data.size)) + 516] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 548
                t = ceil32(return_data.size) + 288
                while idx < mem[ceil32(return_data.size) + 256]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 452] = this.address
                mem[(2 * ceil32(return_data.size)) + 484] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 608]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _212 = mem[64]
                mem[64] = mem[64] + 64
                mem[_212] = 30
                mem[_212 + 32] = 'SafeMath: subtraction overflow'
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
                _228 = mem[64]
                mem[64] = mem[64] + 96
                mem[_228] = 38
                mem[_228 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_228 + 70 len 26]
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
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x8743ef6d(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x48b75044(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x19165587(?????) > uint32(call.func_hash) >> 224:
                    if _isSuper(address arg1) > uint32(call.func_hash) >> 224:
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
                        if uint32(call.func_hash) >> 224 != getRewardAmount():
                            require updateFuturWall(address arg1) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            futurUsePoolAddress = address(arg1)
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
                    if _isSuper(address arg1) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor31[arg1])
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
                    _457 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _514 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _457 + _514 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_514)] = mem[ceil32(return_data.size) + _457 + 160 len ceil32(_514)]
                    if ceil32(_514) <= _514:
                        _2465 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _514
                        mem[mem[64] + 64 len ceil32(_514)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_514)]
                        if ceil32(_514) <= _514:
                            return Array(len=_514, data=mem[mem[64] + 64 len ceil32(_514)])
                        mem[_514 + mem[64] + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_514) + _2465 + -mem[64] + 64
                    mem[_514 + (2 * ceil32(return_data.size)) + 160] = 0
                    _2466 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _514
                    mem[mem[64] + 64 len ceil32(_514)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_514)]
                    if ceil32(_514) <= _514:
                        return Array(len=_514, data=mem[mem[64] + 64 len ceil32(_514)])
                    mem[_514 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_514) + _2466 + -mem[64] + 64
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
                    return bool(stor29[arg1])
                if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                    if unknown_0x2a607841(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_2a607841Address
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
                if stor29[address(arg1)]:
                    revert with 0, 'Blacklisted address'
                if stor29[address(arg2)]:
                    revert with 0, 'Blacklisted address'
                if owner != address(arg1):
                    if owner != address(arg2):
                        if address(arg1) != this.address:
                            if address(arg2) != this.address:
                                if not stor31[address(arg1)]:
                                    if not stor31[address(arg2)]:
                                        if uniswapV2PairAddress != address(arg2):
                                            if uniswapV2RouterAddress != address(arg2):
                                                if not stor28:
                                                    if uniswapV2PairAddress == address(arg1):
                                                        stor29[address(arg2)] = 1
                                                else:
                                                    if arg3 > !balanceOf[address(arg2)]:
                                                        revert with 0, 17
                                                    if arg3 + balanceOf[address(arg2)] < arg3:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if arg3 + balanceOf[address(arg2)] > maxTx:
                                                        revert with 0, 'Transfer amount too high'
                                                    if not stor28:
                                                        if uniswapV2PairAddress == address(arg1):
                                                            stor29[address(arg2)] = 1
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
            if unknown_0x65bfe430(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x70a08231(?????) <= uint32(call.func_hash) >> 224:
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
                        if unknown_0x7437681e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return maxTx
                        if unknown_0x7628b3d7(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return nodeRewardManagerAddress
                        if unknown_0x7b770392(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagerAddress)
                            call nodeRewardManagerAddress.0xc6faedc8 with:
                                 gas gas_remaining wei
                                args arg1
                        else:
                            require unknown_0x8013858b(?????) == uint32(call.func_hash) >> 224
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
                    if uint32(call.func_hash) >> 224 != unknown_0x65bfe430(?????):
                        if unknown_0x6770474b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            swapTokensAmount = arg1
                        if unknown_0x6815a91c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            cashoutFee = arg1
                        if unknown_0x6d9ae0be(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return cashoutFee
                        require unknown_0x6f4a2cd0(?????) == uint32(call.func_hash) >> 224
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
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not msg.sender:
                        revert with 0, 'CSHT:  creation from the zero address'
                    if stor29[address(msg.sender)]:
                        revert with 0, 'MANIA CSHT: Blacklisted address'
                    if futurUsePoolAddress == msg.sender:
                        revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                    if distributionPoolAddress == msg.sender:
                        revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
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
                                _2612 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2612] = 30
                                mem[_2612 + 32] = 'SafeMath: subtraction overflow'
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
                                _2786 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2786] = 38
                                mem[_2786 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] > balanceOf[stor17]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2786 + 70 len 26]
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
                                _2611 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2611] = 30
                                mem[_2611 + 32] = 'SafeMath: subtraction overflow'
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
                                _2783 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2783] = 38
                                mem[_2783 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2783 + 70 len 26]
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
                if unknown_0x583bd7a6(?????) <= uint32(call.func_hash) >> 224:
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
                        if unknown_0x5f1c3182(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return swapTokensAmount
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
                        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
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
                    _463 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _516 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _463 + _516 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_516)] = mem[ceil32(return_data.size) + _463 + 160 len ceil32(_516)]
                    if ceil32(_516) <= _516:
                        _2529 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _516
                        mem[mem[64] + 64 len ceil32(_516)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_516)]
                        if ceil32(_516) <= _516:
                            return Array(len=_516, data=mem[mem[64] + 64 len ceil32(_516)])
                        mem[_516 + mem[64] + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_516) + _2529 + -mem[64] + 64
                    mem[_516 + (2 * ceil32(return_data.size)) + 160] = 0
                    _2530 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _516
                    mem[mem[64] + 64 len ceil32(_516)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_516)]
                    if ceil32(_516) <= _516:
                        return Array(len=_516, data=mem[mem[64] + 64 len ceil32(_516)])
                    mem[_516 + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_516) + _2530 + -mem[64] + 64
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
                    if uint32(call.func_hash) >> 224 != unknown_0x54557973(?????):
                        require unknown_0x54f12f1f(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return liquidityPoolFee
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'MANIA CSHT:  creation from the zero address'
                    if stor29[address(msg.sender)]:
                        revert with 0, 'MANIA CSHT: Blacklisted address'
                    if futurUsePoolAddress == msg.sender:
                        revert with 0, 'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
                    if distributionPoolAddress == msg.sender:
                        revert with 0, 'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
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
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[ceil32(return_data.size) + 192] = 38
                                mem[ceil32(return_data.size) + 224 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if 0 > balanceOf[stor17]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 262 len 26] >> 48,
                                                0
                                if balanceOf[stor17] < 0:
                                    revert with 0, 17
                                if balanceOf[this.address] > -1:
                                    revert with 0, 17
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address]
                                emit Transfer(0, distributionPoolAddress, this.address);
                                mem[ceil32(return_data.size) + 288] = 2
                                mem[ceil32(return_data.size) + 320] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 352] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                                    mem[(2 * ceil32(return_data.size)) + 420] = 36
                                    mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: approve from the zero add'
                                    mem[(2 * ceil32(return_data.size)) + 484] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 384
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                                    mem[(2 * ceil32(return_data.size)) + 420] = 34
                                    mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: approve to the zero addre'
                                    mem[(2 * ceil32(return_data.size)) + 484] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 384
                                       len ceil32(return_data.size) + 132
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor14].field_0 = 0
                                mem[(2 * ceil32(return_data.size)) + 384] = 0
                                emit Approval(mem[(2 * ceil32(return_data.size)) + 384 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 388] = 0
                                mem[(2 * ceil32(return_data.size)) + 420] = 0
                                mem[(2 * ceil32(return_data.size)) + 452] = 160
                                mem[(2 * ceil32(return_data.size)) + 548] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 580
                                t = ceil32(return_data.size) + 320
                                while idx < mem[ceil32(return_data.size) + 288]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 484] = this.address
                                mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 640]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2610 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2610] = 30
                                mem[_2610 + 32] = 'SafeMath: subtraction overflow'
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
                                _2780 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2780] = 38
                                mem[_2780 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] > balanceOf[stor17]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2780 + 70 len 26]
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
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[ceil32(return_data.size) + 192] = 38
                                mem[ceil32(return_data.size) + 224 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] * cashoutFee / 100 > balanceOf[stor17]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 262 len 26] >> 48,
                                                0
                                if balanceOf[stor17] < ext_call.return_data[0] * cashoutFee / 100:
                                    revert with 0, 17
                                balanceOf[stor17] -= ext_call.return_data[0] * cashoutFee / 100
                                if balanceOf[this.address] > !(ext_call.return_data[0] * cashoutFee / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] + (ext_call.return_data[0] * cashoutFee / 100) < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address] + (ext_call.return_data[0] * cashoutFee / 100)
                                emit Transfer((ext_call.return_data[0] * cashoutFee / 100), distributionPoolAddress, this.address);
                                mem[ceil32(return_data.size) + 288] = 2
                                mem[ceil32(return_data.size) + 320] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 352] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                                    mem[(2 * ceil32(return_data.size)) + 420] = 36
                                    mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: approve from the zero add'
                                    mem[(2 * ceil32(return_data.size)) + 484] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 384
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                                    mem[(2 * ceil32(return_data.size)) + 420] = 34
                                    mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: approve to the zero addre'
                                    mem[(2 * ceil32(return_data.size)) + 484] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 384
                                       len ceil32(return_data.size) + 132
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * cashoutFee / 100
                                mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0] * cashoutFee / 100
                                emit Approval(mem[(2 * ceil32(return_data.size)) + 384 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] * cashoutFee / 100
                                mem[(2 * ceil32(return_data.size)) + 420] = 0
                                mem[(2 * ceil32(return_data.size)) + 452] = 160
                                mem[(2 * ceil32(return_data.size)) + 548] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 580
                                t = ceil32(return_data.size) + 320
                                while idx < mem[ceil32(return_data.size) + 288]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 484] = this.address
                                mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 640]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2609 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2609] = 30
                                mem[_2609 + 32] = 'SafeMath: subtraction overflow'
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
                                _2777 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2777] = 38
                                mem[_2777 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2777 + 70 len 26]
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
            if unknown_0xc2d0ffca(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xdd62ed3e(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xd0f77474(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0xc2d0ffca(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            maxTx = arg1
                        else:
                            if unknown_0xc5ca7d6d(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return distributionPoolAddress
                            if unknown_0xc9567bf9(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if stor28:
                                    revert with 0, 'Trading is already open'
                                stor28 = 1
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0xc9a34468(?????):
                                    require unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require arg1 == address(arg1)
                                    return shares[address(arg1)]
                                require not msg.value
                                require calldata.size - 4 >= 64
                                require arg1 == address(arg1)
                                require arg2 == bool(arg2)
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                stor31[address(arg1)] = uint8(bool(arg2))
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
                        stor29[address(arg1)] = uint8(bool(arg2))
                    if unknown_0xda41b333(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.0xfb10d6fb with:
                                gas gas_remaining wei
                    else:
                        require unknown_0xdb3ad6b5(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.0x613ff46f with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0xf5981949(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf5981949(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_f5981949
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
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)].field_0
                if unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalReleased
                if unknown_0xe3e0df29(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    mem[196] = arg1
                    require ext_code.size(0x8f37980d44f7487851346f4a5e5114d6b03dcf0a)
                    call 0x8f37980d44f7487851346f4a5e5114d6b03dcf0a.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, 57005, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not distributionPoolAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg1 > balanceOf[stor17]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 198 len 26] >> 48,
                                    0
                    if balanceOf[stor17] < arg1:
                        revert with 0, 17
                    balanceOf[stor17] -= arg1
                    if balanceOf[msg.sender] > !arg1:
                        revert with 0, 17
                    if balanceOf[msg.sender] + arg1 < balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + arg1
                    emit Transfer(arg1, distributionPoolAddress, msg.sender);
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
                _508 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _553 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _508 + _553 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_553)] = mem[ceil32(return_data.size) + _508 + 160 len ceil32(_553)]
                if ceil32(_553) > _553:
                    mem[_553 + (2 * ceil32(return_data.size)) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _553
                mem[mem[64] + 64 len ceil32(_553)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_553)]
                if ceil32(_553) > _553:
                    mem[_553 + mem[64] + 64] = 0
                return Array(len=_553, data=mem[mem[64] + 64 len ceil32(_553)])
            if unknown_0x9c82751c(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xa9059cbb(?????) > uint32(call.func_hash) >> 224:
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
                    if unknown_0xa0a8fe65(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.0xb8527aef with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if uint32(call.func_hash) >> 224 != unknown_0xa457c2d7(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xa5021a17(?????):
                            require unknown_0xa538ddf2(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return futurUsePoolAddress
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.0xf1fec2b8 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
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
                    return 1
                if unknown_0xa9059cbb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if stor29[address(msg.sender)]:
                        revert with 0, 'Blacklisted address'
                    if stor29[address(arg1)]:
                        revert with 0, 'Blacklisted address'
                    if owner != msg.sender:
                        if owner != address(arg1):
                            if msg.sender != this.address:
                                if address(arg1) != this.address:
                                    if not stor31[address(msg.sender)]:
                                        if not stor31[address(arg1)]:
                                            if uniswapV2PairAddress != address(arg1):
                                                if uniswapV2RouterAddress != address(arg1):
                                                    if not stor28:
                                                        if uniswapV2PairAddress == msg.sender:
                                                            stor29[address(arg1)] = 1
                                                    else:
                                                        if arg2 > !balanceOf[address(arg1)]:
                                                            revert with 0, 17
                                                        if arg2 + balanceOf[address(arg1)] < arg2:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if arg2 + balanceOf[address(arg1)] > maxTx:
                                                            revert with 0, 'Transfer amount too high'
                                                        if not stor28:
                                                            if uniswapV2PairAddress == msg.sender:
                                                                stor29[address(arg1)] = 1
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
                if unknown_0xab574761(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return futurFee
                if unknown_0xb5f8b729(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg1 <= 0:
                        revert with 0, 'Amount too low'
                    if not distributionPoolAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !arg1:
                        revert with 0, 17
                    if totalSupply + arg1 < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1
                    if balanceOf[stor17] > !arg1:
                        revert with 0, 17
                    if balanceOf[stor17] + arg1 < balanceOf[stor17]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor17] += arg1
                    emit Transfer(arg1, 0, distributionPoolAddress);
                if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor30[arg1])
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
                require unknown_0xbdf24a53(?????) == uint32(call.func_hash) >> 224
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
                _551 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _592 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _551 + _592 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_592)] = mem[ceil32(return_data.size) + _551 + 160 len ceil32(_592)]
                if ceil32(_592) > _592:
                    mem[_592 + (2 * ceil32(return_data.size)) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _592
                mem[mem[64] + 64 len ceil32(_592)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_592)]
                if ceil32(_592) > _592:
                    mem[_592 + mem[64] + 64] = 0
                return Array(len=_592, data=mem[mem[64] + 64 len ceil32(_592)])
            if unknown_0x8f0ba4ca(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8743ef6d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(nodeRewardManagerAddress)
                    call nodeRewardManagerAddress.0x88fe6553 with:
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
                        if uint32(call.func_hash) >> 224 != unknown_0x8bc9c7b0(?????):
                            require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return owner
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_f5981949 = arg1
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
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x8f0ba4ca(?????):
                    if unknown_0x9349c47d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        distributionPoolAddress = address(arg1)
                    else:
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
                        require unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if uniswapV2PairAddress == address(arg1):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'TKN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
                        if bool(arg2) == bool(stor30[address(arg1)]):
                            revert with 0, 'TKN: Automated market maker pair is already set to that value'
                        stor30[address(arg1)] = uint8(bool(arg2))
                        emit SetAutomatedMarketMakerPair(address(arg1), bool(arg2));
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
                    if stor29[address(msg.sender)]:
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
                                    if stor30[address(msg.sender)]:
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
                                            _2613 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2613] = 30
                                            mem[_2613 + 32] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call futurUsePoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not balanceOf[this.address]:
                                                _2759 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2759] = 26
                                                mem[_2759 + 32] = 'SafeMath: division by zero'
                                                _2823 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2823] = 26
                                                mem[_2823 + 32] = 'SafeMath: division by zero'
                                                _2871 = mem[64]
                                                mem[mem[64]] = 2
                                                mem[64] = mem[64] + 96
                                                mem[_2871 + 32 len 64] = call.data[calldata.size len 64]
                                                if 0 >= mem[_2871]:
                                                    revert with 0, 50
                                                mem[_2871 + 32] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[_2871 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2871 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if 1 >= mem[_2871]:
                                                    revert with 0, 50
                                                mem[_2871 + 64] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = 0
                                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                                mem[_2871 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[_2871 + ceil32(return_data.size) + 100] = 0
                                                mem[_2871 + ceil32(return_data.size) + 132] = 0
                                                mem[_2871 + ceil32(return_data.size) + 164] = 160
                                                mem[_2871 + ceil32(return_data.size) + 260] = mem[_2871]
                                                idx = 0
                                                s = _2871 + ceil32(return_data.size) + 292
                                                t = _2871 + 32
                                                while idx < mem[_2871]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, 160, address(this.address), block.timestamp, mem[_2871 + ceil32(return_data.size) + 260 len (32 * mem[_2871]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2871 + ceil32(return_data.size) + 96] = 30
                                                mem[_2871 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2871 + ceil32(return_data.size) + 160] = 30
                                                mem[_2871 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not distributionPoolAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                mem[_2871 + ceil32(return_data.size) + 224] = 38
                                                mem[_2871 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if 0 > balanceOf[address(this.address)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2871 + ceil32(return_data.size) + 294 len 26] >> 48,
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
                                                    mem[_2871 + ceil32(return_data.size) + 320] = 26
                                                    mem[_2871 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                    mem[_2871 + ceil32(return_data.size) + 384] = 26
                                                    mem[_2871 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                    mem[_2871 + ceil32(return_data.size) + 448] = 30
                                                    mem[_2871 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                    mem[_2871 + ceil32(return_data.size) + 512] = 2
                                                    mem[_2871 + ceil32(return_data.size) + 544] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_2871 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _2871 + (2 * ceil32(return_data.size)) + 608
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[_2871 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 612] = 0
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 644] = 0
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 676] = 160
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 772] = 2
                                                    idx = 0
                                                    s = _2871 + (2 * ceil32(return_data.size)) + 804
                                                    t = _2871 + ceil32(return_data.size) + 544
                                                    while idx < mem[_2871 + ceil32(return_data.size) + 512]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_2871 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_2871 + ceil32(return_data.size) + 512]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 608] = 30
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 676] = 32
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 708] = 30
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 770] = 0
                                                        revert with memory
                                                          from _2871 + (2 * ceil32(return_data.size)) + 672
                                                           len ceil32(return_data.size) + 100
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 676] = 32
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 708] = 36
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from _2871 + (2 * ceil32(return_data.size)) + 672
                                                           len ceil32(return_data.size) + 132
                                                    if not uniswapV2RouterAddress:
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 676] = 32
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 708] = 34
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from _2871 + (2 * ceil32(return_data.size)) + 672
                                                           len ceil32(return_data.size) + 132
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 708] = 0
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 740] = 0
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 772] = 0
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 804] = sub_2a607841Address
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args mem[_2871 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 672] = 0
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 704] = 0
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 736] = 0
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        mem[_2871 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 672] = 2
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _2871 + (6 * ceil32(return_data.size)) + 768
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 804] = 0
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 836] = 160
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 932] = 2
                                                    idx = 0
                                                    s = _2871 + (6 * ceil32(return_data.size)) + 964
                                                    t = _2871 + (4 * ceil32(return_data.size)) + 704
                                                    while idx < mem[_2871 + (4 * ceil32(return_data.size)) + 672]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 868] = this.address
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _2871 + (6 * ceil32(return_data.size)) + (32 * mem[_2871 + (4 * ceil32(return_data.size)) + 672]) + -mem[64] + 960]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor25.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _6272 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_6272] = 38
                                                    mem[_6272 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_6272 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                else:
                                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address]:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    mem[_2871 + ceil32(return_data.size) + 320] = 26
                                                    mem[_2871 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                    mem[_2871 + ceil32(return_data.size) + 384] = 26
                                                    mem[_2871 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                    mem[_2871 + ceil32(return_data.size) + 448] = 30
                                                    mem[_2871 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    mem[_2871 + ceil32(return_data.size) + 512] = 2
                                                    mem[_2871 + ceil32(return_data.size) + 544] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_2871 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _2871 + (2 * ceil32(return_data.size)) + 608
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[_2871 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 644] = 0
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 676] = 160
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 772] = 2
                                                    idx = 0
                                                    s = _2871 + (2 * ceil32(return_data.size)) + 804
                                                    t = _2871 + ceil32(return_data.size) + 544
                                                    while idx < mem[_2871 + ceil32(return_data.size) + 512]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_2871 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_2871 + ceil32(return_data.size) + 512]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 608] = 30
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 676] = 32
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 708] = 30
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 770] = 0
                                                        revert with memory
                                                          from _2871 + (2 * ceil32(return_data.size)) + 672
                                                           len ceil32(return_data.size) + 100
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 676] = 32
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 708] = 36
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from _2871 + (2 * ceil32(return_data.size)) + 672
                                                           len ceil32(return_data.size) + 132
                                                    if not uniswapV2RouterAddress:
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 676] = 32
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 708] = 34
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                        mem[_2871 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from _2871 + (2 * ceil32(return_data.size)) + 672
                                                           len ceil32(return_data.size) + 132
                                                    allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                    emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 740] = 0
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 772] = 0
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 804] = sub_2a607841Address
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args mem[_2871 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                    mem[_2871 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 672] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 704] = 0
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 736] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        mem[_2871 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 672] = 2
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _2871 + (6 * ceil32(return_data.size)) + 768
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[_2871 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 804] = 0
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 836] = 160
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 932] = 2
                                                    idx = 0
                                                    s = _2871 + (6 * ceil32(return_data.size)) + 964
                                                    t = _2871 + (4 * ceil32(return_data.size)) + 704
                                                    while idx < mem[_2871 + (4 * ceil32(return_data.size)) + 672]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 868] = this.address
                                                    mem[_2871 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _2871 + (6 * ceil32(return_data.size)) + (32 * mem[_2871 + (4 * ceil32(return_data.size)) + 672]) + -mem[64] + 960]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor25.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _6269 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_6269] = 38
                                                    mem[_6269 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_6269 + 70 len 26]
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
                                                call nodeRewardManagerAddress.0x12b8603f with:
                                                     gas gas_remaining wei
                                                    args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                            else:
                                                if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                                    revert with 0, 17
                                                if not balanceOf[this.address]:
                                                    revert with 0, 18
                                                if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _2809 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2809] = 26
                                                mem[_2809 + 32] = 'SafeMath: division by zero'
                                                if not balanceOf[this.address] * rewardsFee / 100:
                                                    _2865 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2865] = 26
                                                    mem[_2865 + 32] = 'SafeMath: division by zero'
                                                    _2889 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_2889 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_2889]:
                                                        revert with 0, 50
                                                    mem[_2889 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_2889 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _2889 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_2889]:
                                                        revert with 0, 50
                                                    mem[_2889 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[_2889 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_2889 + ceil32(return_data.size) + 100] = 0
                                                    mem[_2889 + ceil32(return_data.size) + 132] = 0
                                                    mem[_2889 + ceil32(return_data.size) + 164] = 160
                                                    mem[_2889 + ceil32(return_data.size) + 260] = mem[_2889]
                                                    idx = 0
                                                    s = _2889 + ceil32(return_data.size) + 292
                                                    t = _2889 + 32
                                                    while idx < mem[_2889]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_2889 + ceil32(return_data.size) + 260 len (32 * mem[_2889]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_2889 + ceil32(return_data.size) + 96] = 30
                                                    mem[_2889 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    call distributionPoolAddress with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_2889 + ceil32(return_data.size) + 160] = 30
                                                    mem[_2889 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                    if 0 > balanceOf[this.address] * rewardsFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[this.address] * rewardsFee / 100 < 0:
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not distributionPoolAddress:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    mem[_2889 + ceil32(return_data.size) + 224] = 38
                                                    mem[_2889 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2889 + ceil32(return_data.size) + 294 len 26] >> 48,
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
                                                        mem[_2889 + ceil32(return_data.size) + 320] = 26
                                                        mem[_2889 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                        mem[_2889 + ceil32(return_data.size) + 384] = 26
                                                        mem[_2889 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                        mem[_2889 + ceil32(return_data.size) + 448] = 30
                                                        mem[_2889 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                        mem[_2889 + ceil32(return_data.size) + 512] = 2
                                                        mem[_2889 + ceil32(return_data.size) + 544] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_2889 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2889 + (2 * ceil32(return_data.size)) + 608
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_2889 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 612] = 0
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 644] = 0
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 676] = 160
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 772] = 2
                                                        idx = 0
                                                        s = _2889 + (2 * ceil32(return_data.size)) + 804
                                                        t = _2889 + ceil32(return_data.size) + 544
                                                        while idx < mem[_2889 + ceil32(return_data.size) + 512]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _2889 + (2 * ceil32(return_data.size)) + (32 * mem[_2889 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5408 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_5408] = 30
                                                        mem[_5408 + 32] = 'SafeMath: subtraction overflow'
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
                                                        mem[mem[64] + 132] = sub_2a607841Address
                                                        mem[mem[64] + 164] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, 0, 0, 0, sub_2a607841Address, block.timestamp
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
                                                        _5687 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_5687 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_5687]:
                                                            revert with 0, 50
                                                        mem[_5687 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_5687 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _5687 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_5687]:
                                                            revert with 0, 50
                                                        mem[_5687 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_5687 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_5687 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_5687 + ceil32(return_data.size) + 132] = 0
                                                        mem[_5687 + ceil32(return_data.size) + 164] = 160
                                                        mem[_5687 + ceil32(return_data.size) + 260] = mem[_5687]
                                                        idx = 0
                                                        s = _5687 + ceil32(return_data.size) + 292
                                                        t = _5687 + 32
                                                        while idx < mem[_5687]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_5687 + ceil32(return_data.size) + 260 len (32 * mem[_5687]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        mem[_5687 + ceil32(return_data.size) + 96] = 38
                                                        mem[_5687 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[_5687 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_5687 + ceil32(return_data.size) + 196] = msg.sender
                                                        mem[_5687 + ceil32(return_data.size) + 228] = 64
                                                        mem[_5687 + ceil32(return_data.size) + 260] = mem[128]
                                                        mem[_5687 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[mem[128] + _5687 + ceil32(return_data.size) + 292] = 0
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x12b8603f with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_5687 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        mem[_2889 + ceil32(return_data.size) + 320] = 26
                                                        mem[_2889 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                        mem[_2889 + ceil32(return_data.size) + 384] = 26
                                                        mem[_2889 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                        mem[_2889 + ceil32(return_data.size) + 448] = 30
                                                        mem[_2889 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[_2889 + ceil32(return_data.size) + 512] = 2
                                                        mem[_2889 + ceil32(return_data.size) + 544] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_2889 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2889 + (2 * ceil32(return_data.size)) + 608
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_2889 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 644] = 0
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 676] = 160
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 772] = 2
                                                        idx = 0
                                                        s = _2889 + (2 * ceil32(return_data.size)) + 804
                                                        t = _2889 + ceil32(return_data.size) + 544
                                                        while idx < mem[_2889 + ceil32(return_data.size) + 512]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                        mem[_2889 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _2889 + (2 * ceil32(return_data.size)) + (32 * mem[_2889 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5407 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_5407] = 30
                                                        mem[_5407 + 32] = 'SafeMath: subtraction overflow'
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
                                                        mem[mem[64] + 132] = sub_2a607841Address
                                                        mem[mem[64] + 164] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, sub_2a607841Address, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        mem[mem[64] + 32] = 0
                                                        mem[mem[64] + 64] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                                        mem[0] = this.address
                                                        mem[32] = 0
                                                        _5685 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_5685 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_5685]:
                                                            revert with 0, 50
                                                        mem[_5685 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_5685 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _5685 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_5685]:
                                                            revert with 0, 50
                                                        mem[_5685 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_5685 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_5685 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_5685 + ceil32(return_data.size) + 132] = 0
                                                        mem[_5685 + ceil32(return_data.size) + 164] = 160
                                                        mem[_5685 + ceil32(return_data.size) + 260] = mem[_5685]
                                                        idx = 0
                                                        s = _5685 + ceil32(return_data.size) + 292
                                                        t = _5685 + 32
                                                        while idx < mem[_5685]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_5685 + ceil32(return_data.size) + 260 len (32 * mem[_5685]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        mem[_5685 + ceil32(return_data.size) + 96] = 38
                                                        mem[_5685 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[_5685 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_5685 + ceil32(return_data.size) + 196] = msg.sender
                                                        mem[_5685 + ceil32(return_data.size) + 228] = 64
                                                        mem[_5685 + ceil32(return_data.size) + 260] = mem[128]
                                                        mem[_5685 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[mem[128] + _5685 + ceil32(return_data.size) + 292] = 0
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x12b8603f with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_5685 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                                else:
                                                    if balanceOf[this.address] * rewardsFee / 100 and sub_f5981949 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address] * rewardsFee / 100:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / balanceOf[this.address] * rewardsFee / 100 != sub_f5981949:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    _2883 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2883] = 26
                                                    mem[_2883 + 32] = 'SafeMath: division by zero'
                                                    _2903 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_2903 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_2903]:
                                                        revert with 0, 50
                                                    mem[_2903 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_2903 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _2903 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_2903]:
                                                        revert with 0, 50
                                                    mem[_2903 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100
                                                    emit Approval((balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100), this.address, uniswapV2RouterAddress);
                                                    mem[_2903 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_2903 + ceil32(return_data.size) + 100] = balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100
                                                    mem[_2903 + ceil32(return_data.size) + 132] = 0
                                                    mem[_2903 + ceil32(return_data.size) + 164] = 160
                                                    mem[_2903 + ceil32(return_data.size) + 260] = mem[_2903]
                                                    idx = 0
                                                    s = _2903 + ceil32(return_data.size) + 292
                                                    t = _2903 + 32
                                                    while idx < mem[_2903]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100, 0, 160, address(this.address), block.timestamp, mem[_2903 + ceil32(return_data.size) + 260 len (32 * mem[_2903]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_2903 + ceil32(return_data.size) + 96] = 30
                                                    mem[_2903 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    call distributionPoolAddress with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_2903 + ceil32(return_data.size) + 160] = 30
                                                    mem[_2903 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100:
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not distributionPoolAddress:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    mem[_2903 + ceil32(return_data.size) + 224] = 38
                                                    mem[_2903 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100) > balanceOf[address(this.address)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2903 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100)
                                                    if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100) < balanceOf[stor17]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100)
                                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100)), this.address, distributionPoolAddress);
                                                    if not balanceOf[this.address]:
                                                        mem[_2903 + ceil32(return_data.size) + 320] = 26
                                                        mem[_2903 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                        mem[_2903 + ceil32(return_data.size) + 384] = 26
                                                        mem[_2903 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                        mem[_2903 + ceil32(return_data.size) + 448] = 30
                                                        mem[_2903 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                        mem[_2903 + ceil32(return_data.size) + 512] = 2
                                                        mem[_2903 + ceil32(return_data.size) + 544] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_2903 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2903 + (2 * ceil32(return_data.size)) + 608
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_2903 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 612] = 0
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 644] = 0
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 676] = 160
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 772] = 2
                                                        idx = 0
                                                        s = _2903 + (2 * ceil32(return_data.size)) + 804
                                                        t = _2903 + ceil32(return_data.size) + 544
                                                        while idx < mem[_2903 + ceil32(return_data.size) + 512]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _2903 + (2 * ceil32(return_data.size)) + (32 * mem[_2903 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5406 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_5406] = 30
                                                        mem[_5406 + 32] = 'SafeMath: subtraction overflow'
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
                                                        mem[mem[64] + 132] = sub_2a607841Address
                                                        mem[mem[64] + 164] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, 0, 0, 0, sub_2a607841Address, block.timestamp
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
                                                        _5683 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_5683 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_5683]:
                                                            revert with 0, 50
                                                        mem[_5683 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_5683 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _5683 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_5683]:
                                                            revert with 0, 50
                                                        mem[_5683 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_5683 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_5683 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_5683 + ceil32(return_data.size) + 132] = 0
                                                        mem[_5683 + ceil32(return_data.size) + 164] = 160
                                                        mem[_5683 + ceil32(return_data.size) + 260] = mem[_5683]
                                                        idx = 0
                                                        s = _5683 + ceil32(return_data.size) + 292
                                                        t = _5683 + 32
                                                        while idx < mem[_5683]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_5683 + ceil32(return_data.size) + 196] = this.address
                                                        mem[_5683 + ceil32(return_data.size) + 228] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _5683 + ceil32(return_data.size) + (32 * mem[_5683]) + -mem[64] + 288]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _6260 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_6260] = 38
                                                        mem[_6260 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_6260 + 70 len 26]
                                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        mem[_2903 + ceil32(return_data.size) + 320] = 26
                                                        mem[_2903 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                        mem[_2903 + ceil32(return_data.size) + 384] = 26
                                                        mem[_2903 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                        mem[_2903 + ceil32(return_data.size) + 448] = 30
                                                        mem[_2903 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[_2903 + ceil32(return_data.size) + 512] = 2
                                                        mem[_2903 + ceil32(return_data.size) + 544] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_2903 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2903 + (2 * ceil32(return_data.size)) + 608
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_2903 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 644] = 0
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 676] = 160
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 772] = 2
                                                        idx = 0
                                                        s = _2903 + (2 * ceil32(return_data.size)) + 804
                                                        t = _2903 + ceil32(return_data.size) + 544
                                                        while idx < mem[_2903 + ceil32(return_data.size) + 512]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                        mem[_2903 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _2903 + (2 * ceil32(return_data.size)) + (32 * mem[_2903 + ceil32(return_data.size) + 512]) + -mem[64] + 800]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5405 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_5405] = 30
                                                        mem[_5405 + 32] = 'SafeMath: subtraction overflow'
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
                                                        mem[mem[64] + 132] = sub_2a607841Address
                                                        mem[mem[64] + 164] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, sub_2a607841Address, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        mem[mem[64] + 32] = 0
                                                        mem[mem[64] + 64] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                                        mem[0] = this.address
                                                        mem[32] = 0
                                                        _5681 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_5681 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_5681]:
                                                            revert with 0, 50
                                                        mem[_5681 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_5681 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _5681 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_5681]:
                                                            revert with 0, 50
                                                        mem[_5681 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_5681 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_5681 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_5681 + ceil32(return_data.size) + 132] = 0
                                                        mem[_5681 + ceil32(return_data.size) + 164] = 160
                                                        mem[_5681 + ceil32(return_data.size) + 260] = mem[_5681]
                                                        idx = 0
                                                        s = _5681 + ceil32(return_data.size) + 292
                                                        t = _5681 + 32
                                                        while idx < mem[_5681]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_5681 + ceil32(return_data.size) + 196] = this.address
                                                        mem[_5681 + ceil32(return_data.size) + 228] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _5681 + ceil32(return_data.size) + (32 * mem[_5681]) + -mem[64] + 288]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _6257 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_6257] = 38
                                                        mem[_6257 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_6257 + 70 len 26]
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
                                                    call nodeRewardManagerAddress.0x12b8603f with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
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
                                            _2614 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2614] = 30
                                            mem[_2614 + 32] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call futurUsePoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not balanceOf[this.address]:
                                                _2760 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2760] = 26
                                                mem[_2760 + 32] = 'SafeMath: division by zero'
                                                _2824 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2824] = 26
                                                mem[_2824 + 32] = 'SafeMath: division by zero'
                                                _2873 = mem[64]
                                                mem[mem[64]] = 2
                                                mem[64] = mem[64] + 96
                                                mem[_2873 + 32 len 64] = call.data[calldata.size len 64]
                                                if 0 >= mem[_2873]:
                                                    revert with 0, 50
                                                mem[_2873 + 32] = this.address
                                                require ext_code.size(uniswapV2RouterAddress)
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[_2873 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2873 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if 1 >= mem[_2873]:
                                                    revert with 0, 50
                                                mem[_2873 + 64] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = 0
                                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                                mem[_2873 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[_2873 + ceil32(return_data.size) + 100] = 0
                                                mem[_2873 + ceil32(return_data.size) + 132] = 0
                                                mem[_2873 + ceil32(return_data.size) + 164] = 160
                                                mem[_2873 + ceil32(return_data.size) + 260] = mem[_2873]
                                                idx = 0
                                                s = _2873 + ceil32(return_data.size) + 292
                                                t = _2873 + 32
                                                while idx < mem[_2873]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_2873 + ceil32(return_data.size) + 196] = this.address
                                                mem[_2873 + ceil32(return_data.size) + 228] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _2873 + ceil32(return_data.size) + (32 * mem[_2873]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4058 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4058] = 30
                                                mem[_4058 + 32] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4088 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4088] = 30
                                                mem[_4088 + 32] = 'SafeMath: subtraction overflow'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not distributionPoolAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                _4134 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4134] = 38
                                                mem[_4134 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if 0 > balanceOf[address(this.address)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4134 + 70 len 26]
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
                                                    _4252 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4252] = 26
                                                    mem[_4252 + 32] = 'SafeMath: division by zero'
                                                    _4264 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4264] = 26
                                                    mem[_4264 + 32] = 'SafeMath: division by zero'
                                                    _4276 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4276] = 30
                                                    mem[_4276 + 32] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    _4341 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_4341 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_4341]:
                                                        revert with 0, 50
                                                    mem[_4341 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_4341 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _4341 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_4341]:
                                                        revert with 0, 50
                                                    mem[_4341 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                    mem[_4341 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_4341 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[_4341 + ceil32(return_data.size) + 132] = 0
                                                    mem[_4341 + ceil32(return_data.size) + 164] = 160
                                                    mem[_4341 + ceil32(return_data.size) + 260] = mem[_4341]
                                                    idx = 0
                                                    s = _4341 + ceil32(return_data.size) + 292
                                                    t = _4341 + 32
                                                    while idx < mem[_4341]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_4341 + ceil32(return_data.size) + 260 len (32 * mem[_4341]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_4341 + ceil32(return_data.size) + 96] = 30
                                                    mem[_4341 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
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
                                                    mem[_4341 + ceil32(return_data.size) + 228] = 0
                                                    mem[_4341 + ceil32(return_data.size) + 260] = 0
                                                    mem[_4341 + ceil32(return_data.size) + 292] = sub_2a607841Address
                                                    mem[_4341 + ceil32(return_data.size) + 324] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, sub_2a607841Address, block.timestamp
                                                    mem[_4341 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                                    mem[_4341 + (2 * ceil32(return_data.size)) + 160] = 2
                                                    mem[_4341 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_4341 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _4341 + (4 * ceil32(return_data.size)) + 256
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[_4341 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 292] = 0
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 324] = 160
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 420] = 2
                                                    idx = 0
                                                    s = _4341 + (4 * ceil32(return_data.size)) + 452
                                                    t = _4341 + (2 * ceil32(return_data.size)) + 192
                                                    while idx < mem[_4341 + (2 * ceil32(return_data.size)) + 160]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_4341 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_4341 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor25.field_0) = 0
                                                    if not msg.sender:
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 260] = 32
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 292] = 37
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer from the zero ad'
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 356] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from _4341 + (4 * ceil32(return_data.size)) + 256
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    if not this.address:
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 260] = 32
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 292] = 35
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer to the zero addr'
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 356] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from _4341 + (4 * ceil32(return_data.size)) + 256
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 256] = 38
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 356] = 32
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 388] = 38
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 420 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 458] = 0
                                                        revert with memory
                                                          from _4341 + (4 * ceil32(return_data.size)) + 352
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 356] = 32
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 388] = 27
                                                        mem[_4341 + (4 * ceil32(return_data.size)) + 420] = 'SafeMath: addition overflow'
                                                        revert with memory
                                                          from _4341 + (4 * ceil32(return_data.size)) + 352
                                                           len (5 * ceil32(return_data.size)) + 100
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 352] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 356] = msg.sender
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 388] = 64
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 420] = mem[128]
                                                    mem[_4341 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[mem[128] + _4341 + (4 * ceil32(return_data.size)) + 452] = 0
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x12b8603f with:
                                                         gas gas_remaining wei
                                                        args mem[_4341 + (4 * ceil32(return_data.size)) + 356 len ceil32(mem[128]) + (5 * ceil32(return_data.size)) + 96]
                                                else:
                                                    _4234 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4234] = 26
                                                    mem[_4234 + 32] = 'SafeMath: division by zero'
                                                    _4258 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4258] = 26
                                                    mem[_4258 + 32] = 'SafeMath: division by zero'
                                                    _4270 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4270] = 30
                                                    mem[_4270 + 32] = 'SafeMath: subtraction overflow'
                                                    _4293 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_4293 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_4293]:
                                                        revert with 0, 50
                                                    mem[_4293 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_4293 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _4293 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_4293]:
                                                        revert with 0, 50
                                                    mem[_4293 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[_4293 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_4293 + ceil32(return_data.size) + 100] = 0
                                                    mem[_4293 + ceil32(return_data.size) + 132] = 0
                                                    mem[_4293 + ceil32(return_data.size) + 164] = 160
                                                    mem[_4293 + ceil32(return_data.size) + 260] = mem[_4293]
                                                    idx = 0
                                                    s = _4293 + ceil32(return_data.size) + 292
                                                    t = _4293 + 32
                                                    while idx < mem[_4293]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4293 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_4293 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4293 + ceil32(return_data.size) + (32 * mem[_4293]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5416 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5416] = 30
                                                    mem[_5416 + 32] = 'SafeMath: subtraction overflow'
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
                                                    mem[mem[64] + 132] = sub_2a607841Address
                                                    mem[mem[64] + 164] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, 0, 0, 0, sub_2a607841Address, block.timestamp
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
                                                    _5703 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_5703 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_5703]:
                                                        revert with 0, 50
                                                    mem[_5703 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_5703 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _5703 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_5703]:
                                                        revert with 0, 50
                                                    mem[_5703 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_5703 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_5703 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                    mem[_5703 + ceil32(return_data.size) + 132] = 0
                                                    mem[_5703 + ceil32(return_data.size) + 164] = 160
                                                    mem[_5703 + ceil32(return_data.size) + 260] = mem[_5703]
                                                    idx = 0
                                                    s = _5703 + ceil32(return_data.size) + 292
                                                    t = _5703 + 32
                                                    while idx < mem[_5703]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_5703 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_5703 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _5703 + ceil32(return_data.size) + (32 * mem[_5703]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor25.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _6290 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_6290] = 38
                                                    mem[_6290 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_6290 + 70 len 26]
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
                                                    call nodeRewardManagerAddress.0x12b8603f with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                            else:
                                                if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                                    revert with 0, 17
                                                if not balanceOf[this.address]:
                                                    revert with 0, 18
                                                if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _2810 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2810] = 26
                                                mem[_2810 + 32] = 'SafeMath: division by zero'
                                                if balanceOf[this.address] * rewardsFee / 100:
                                                    if balanceOf[this.address] * rewardsFee / 100 and sub_f5981949 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address] * rewardsFee / 100:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / balanceOf[this.address] * rewardsFee / 100 != sub_f5981949:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    _2885 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2885] = 26
                                                    mem[_2885 + 32] = 'SafeMath: division by zero'
                                                    _2906 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_2906 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_2906]:
                                                        revert with 0, 50
                                                    mem[_2906 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_2906 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _2906 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_2906]:
                                                        revert with 0, 50
                                                    mem[_2906 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100
                                                    emit Approval((balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100), this.address, uniswapV2RouterAddress);
                                                    mem[_2906 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_2906 + ceil32(return_data.size) + 100] = balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100
                                                    mem[_2906 + ceil32(return_data.size) + 132] = 0
                                                    mem[_2906 + ceil32(return_data.size) + 164] = 160
                                                    mem[_2906 + ceil32(return_data.size) + 260] = mem[_2906]
                                                    idx = 0
                                                    s = _2906 + ceil32(return_data.size) + 292
                                                    t = _2906 + 32
                                                    while idx < mem[_2906]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100, 0, 160, address(this.address), block.timestamp, mem[_2906 + ceil32(return_data.size) + 260 len (32 * mem[_2906]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_2906 + ceil32(return_data.size) + 96] = 30
                                                    mem[_2906 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    call distributionPoolAddress with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_2906 + ceil32(return_data.size) + 160] = 30
                                                    mem[_2906 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100:
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not distributionPoolAddress:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    mem[_2906 + ceil32(return_data.size) + 224] = 38
                                                    mem[_2906 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100) > balanceOf[address(this.address)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2906 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100)
                                                    if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100) < balanceOf[stor17]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100)
                                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * sub_f5981949 / 100)), this.address, distributionPoolAddress);
                                                    if not balanceOf[this.address]:
                                                        mem[_2906 + ceil32(return_data.size) + 320] = 26
                                                        mem[_2906 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                        mem[_2906 + ceil32(return_data.size) + 384] = 26
                                                        mem[_2906 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                        mem[_2906 + ceil32(return_data.size) + 448] = 30
                                                        mem[_2906 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                        mem[_2906 + ceil32(return_data.size) + 512] = 2
                                                        mem[_2906 + ceil32(return_data.size) + 544] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_2906 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2906 + (2 * ceil32(return_data.size)) + 608
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_2906 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 612] = 0
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 644] = 0
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 676] = 160
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 772] = 2
                                                        idx = 0
                                                        s = _2906 + (2 * ceil32(return_data.size)) + 804
                                                        t = _2906 + ceil32(return_data.size) + 544
                                                        while idx < mem[_2906 + ceil32(return_data.size) + 512]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, 160, address(this.address), block.timestamp, mem[_2906 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_2906 + ceil32(return_data.size) + 512]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 608] = 30
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 708] = 30
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 770] = 0
                                                            revert with memory
                                                              from _2906 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 100
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 708] = 36
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from _2906 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 132
                                                        if not uniswapV2RouterAddress:
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 708] = 34
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from _2906 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 132
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 708] = 0
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 740] = 0
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 772] = 0
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 804] = sub_2a607841Address
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args mem[_2906 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 672] = 0
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 704] = 0
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 736] = 0
                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                            mem[_2906 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 672] = 2
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2906 + (6 * ceil32(return_data.size)) + 768
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 804] = 0
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 836] = 160
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 932] = 2
                                                        idx = 0
                                                        s = _2906 + (6 * ceil32(return_data.size)) + 964
                                                        t = _2906 + (4 * ceil32(return_data.size)) + 704
                                                        while idx < mem[_2906 + (4 * ceil32(return_data.size)) + 672]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_2906 + (6 * ceil32(return_data.size)) + 932 len (32 * mem[_2906 + (4 * ceil32(return_data.size)) + 672]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: transfer from the zero address',
                                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                        if not this.address:
                                                            revert with 0, 
                                                                        'ERC20: transfer to the zero address',
                                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 768] = 38
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[_2906 + (6 * ceil32(return_data.size)) + 970] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 970 len (9 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow', mem[_2906 + (6 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 900] = 64
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 932] = mem[128]
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[mem[128] + _2906 + (6 * ceil32(return_data.size)) + 964] = 0
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x12b8603f with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_2906 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[128])])
                                                    else:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        mem[_2906 + ceil32(return_data.size) + 320] = 26
                                                        mem[_2906 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                        mem[_2906 + ceil32(return_data.size) + 384] = 26
                                                        mem[_2906 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                        mem[_2906 + ceil32(return_data.size) + 448] = 30
                                                        mem[_2906 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        mem[_2906 + ceil32(return_data.size) + 512] = 2
                                                        mem[_2906 + ceil32(return_data.size) + 544] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_2906 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2906 + (2 * ceil32(return_data.size)) + 608
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_2906 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 644] = 0
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 676] = 160
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 772] = 2
                                                        idx = 0
                                                        s = _2906 + (2 * ceil32(return_data.size)) + 804
                                                        t = _2906 + ceil32(return_data.size) + 544
                                                        while idx < mem[_2906 + ceil32(return_data.size) + 512]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_2906 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_2906 + ceil32(return_data.size) + 512]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 608] = 30
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 708] = 30
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 770] = 0
                                                            revert with memory
                                                              from _2906 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 100
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 708] = 36
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from _2906 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 132
                                                        if not uniswapV2RouterAddress:
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 676] = 32
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 708] = 34
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                            mem[_2906 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                            revert with memory
                                                              from _2906 + (2 * ceil32(return_data.size)) + 672
                                                               len ceil32(return_data.size) + 132
                                                        allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                        emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 740] = 0
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 772] = 0
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 804] = sub_2a607841Address
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args mem[_2906 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                        mem[_2906 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 672] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 704] = 0
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 736] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                            mem[_2906 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 672] = 2
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2906 + (6 * ceil32(return_data.size)) + 768
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_2906 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 804] = 0
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 836] = 160
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 932] = 2
                                                        idx = 0
                                                        s = _2906 + (6 * ceil32(return_data.size)) + 964
                                                        t = _2906 + (4 * ceil32(return_data.size)) + 704
                                                        while idx < mem[_2906 + (4 * ceil32(return_data.size)) + 672]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 868] = this.address
                                                        mem[_2906 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _2906 + (6 * ceil32(return_data.size)) + (32 * mem[_2906 + (4 * ceil32(return_data.size)) + 672]) + -mem[64] + 960]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _6275 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_6275] = 38
                                                        mem[_6275 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_6275 + 70 len 26]
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
                                                        call nodeRewardManagerAddress.0x12b8603f with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                                else:
                                                    _2866 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2866] = 26
                                                    mem[_2866 + 32] = 'SafeMath: division by zero'
                                                    _2891 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_2891 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_2891]:
                                                        revert with 0, 50
                                                    mem[_2891 + 32] = this.address
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_2891 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _2891 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_2891]:
                                                        revert with 0, 50
                                                    mem[_2891 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[_2891 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_2891 + ceil32(return_data.size) + 100] = 0
                                                    mem[_2891 + ceil32(return_data.size) + 132] = 0
                                                    mem[_2891 + ceil32(return_data.size) + 164] = 160
                                                    mem[_2891 + ceil32(return_data.size) + 260] = mem[_2891]
                                                    idx = 0
                                                    s = _2891 + ceil32(return_data.size) + 292
                                                    t = _2891 + 32
                                                    while idx < mem[_2891]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_2891 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_2891 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _2891 + ceil32(return_data.size) + (32 * mem[_2891]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4057 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4057] = 30
                                                    mem[_4057 + 32] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    call distributionPoolAddress with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4087 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4087] = 30
                                                    mem[_4087 + 32] = 'SafeMath: subtraction overflow'
                                                    if 0 > balanceOf[this.address] * rewardsFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[this.address] * rewardsFee / 100 < 0:
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not distributionPoolAddress:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _4131 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4131] = 38
                                                    mem[_4131 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4131 + 70 len 26]
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
                                                    if balanceOf[this.address]:
                                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not balanceOf[this.address]:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        _4251 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_4251] = 26
                                                        mem[_4251 + 32] = 'SafeMath: division by zero'
                                                        _4263 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_4263] = 26
                                                        mem[_4263 + 32] = 'SafeMath: division by zero'
                                                        _4275 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_4275] = 30
                                                        mem[_4275 + 32] = 'SafeMath: subtraction overflow'
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                            revert with 0, 17
                                                        _4339 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_4339 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_4339]:
                                                            revert with 0, 50
                                                        mem[_4339 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_4339 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _4339 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_4339]:
                                                            revert with 0, 50
                                                        mem[_4339 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                        mem[_4339 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_4339 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                        mem[_4339 + ceil32(return_data.size) + 132] = 0
                                                        mem[_4339 + ceil32(return_data.size) + 164] = 160
                                                        mem[_4339 + ceil32(return_data.size) + 260] = mem[_4339]
                                                        idx = 0
                                                        s = _4339 + ceil32(return_data.size) + 292
                                                        t = _4339 + 32
                                                        while idx < mem[_4339]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_4339 + ceil32(return_data.size) + 260 len (32 * mem[_4339]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_4339 + ceil32(return_data.size) + 96] = 30
                                                        mem[_4339 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
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
                                                        mem[_4339 + ceil32(return_data.size) + 228] = 0
                                                        mem[_4339 + ceil32(return_data.size) + 260] = 0
                                                        mem[_4339 + ceil32(return_data.size) + 292] = sub_2a607841Address
                                                        mem[_4339 + ceil32(return_data.size) + 324] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, sub_2a607841Address, block.timestamp
                                                        mem[_4339 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                                        mem[_4339 + (2 * ceil32(return_data.size)) + 160] = 2
                                                        mem[_4339 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_4339 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _4339 + (4 * ceil32(return_data.size)) + 256
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[_4339 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_4339 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_4339 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                                        mem[_4339 + (4 * ceil32(return_data.size)) + 292] = 0
                                                        mem[_4339 + (4 * ceil32(return_data.size)) + 324] = 160
                                                        mem[_4339 + (4 * ceil32(return_data.size)) + 420] = 2
                                                        idx = 0
                                                        s = _4339 + (4 * ceil32(return_data.size)) + 452
                                                        t = _4339 + (2 * ceil32(return_data.size)) + 192
                                                        while idx < mem[_4339 + (2 * ceil32(return_data.size)) + 160]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_4339 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                        mem[_4339 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _4339 + (4 * ceil32(return_data.size)) + (32 * mem[_4339 + (2 * ceil32(return_data.size)) + 160]) + -mem[64] + 448]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _6281 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_6281] = 38
                                                        mem[_6281 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_6281 + 70 len 26]
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
                                                        call nodeRewardManagerAddress.0x12b8603f with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[mem[64] + 100 len ceil32(mem[128])])
                                                    else:
                                                        _4233 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_4233] = 26
                                                        mem[_4233 + 32] = 'SafeMath: division by zero'
                                                        _4257 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_4257] = 26
                                                        mem[_4257 + 32] = 'SafeMath: division by zero'
                                                        _4269 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_4269] = 30
                                                        mem[_4269 + 32] = 'SafeMath: subtraction overflow'
                                                        _4290 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_4290 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_4290]:
                                                            revert with 0, 50
                                                        mem[_4290 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_4290 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _4290 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_4290]:
                                                            revert with 0, 50
                                                        mem[_4290 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                        mem[_4290 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_4290 + ceil32(return_data.size) + 100] = 0
                                                        mem[_4290 + ceil32(return_data.size) + 132] = 0
                                                        mem[_4290 + ceil32(return_data.size) + 164] = 160
                                                        mem[_4290 + ceil32(return_data.size) + 260] = mem[_4290]
                                                        idx = 0
                                                        s = _4290 + ceil32(return_data.size) + 292
                                                        t = _4290 + 32
                                                        while idx < mem[_4290]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[_4290 + ceil32(return_data.size) + 196] = this.address
                                                        mem[_4290 + ceil32(return_data.size) + 228] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _4290 + ceil32(return_data.size) + (32 * mem[_4290]) + -mem[64] + 288]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5414 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_5414] = 30
                                                        mem[_5414 + 32] = 'SafeMath: subtraction overflow'
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
                                                        mem[mem[64] + 132] = sub_2a607841Address
                                                        mem[mem[64] + 164] = block.timestamp
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                             gas gas_remaining wei
                                                            args this.address, 0, 0, 0, sub_2a607841Address, block.timestamp
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
                                                        _5699 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        mem[_5699 + 32 len 64] = call.data[calldata.size len 64]
                                                        if 0 >= mem[_5699]:
                                                            revert with 0, 50
                                                        mem[_5699 + 32] = this.address
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                                gas gas_remaining wei
                                                        mem[_5699 + 96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _5699 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 1 >= mem[_5699]:
                                                            revert with 0, 50
                                                        mem[_5699 + 64] = ext_call.return_data[12 len 20]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: approve from the zero address'
                                                        if not uniswapV2RouterAddress:
                                                            revert with 0, 'ERC20: approve to the zero address'
                                                        mem[0] = uniswapV2RouterAddress
                                                        mem[32] = sha3(address(this.address), 1)
                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                        mem[_5699 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[_5699 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                        mem[_5699 + ceil32(return_data.size) + 132] = 0
                                                        mem[_5699 + ceil32(return_data.size) + 164] = 160
                                                        mem[_5699 + ceil32(return_data.size) + 260] = mem[_5699]
                                                        idx = 0
                                                        s = _5699 + ceil32(return_data.size) + 292
                                                        t = _5699 + 32
                                                        while idx < mem[_5699]:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(uniswapV2RouterAddress)
                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_5699 + ceil32(return_data.size) + 260 len (32 * mem[_5699]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        uint8(stor25.field_0) = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        mem[_5699 + ceil32(return_data.size) + 96] = 38
                                                        mem[_5699 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                        mem[_5699 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                        mem[_5699 + ceil32(return_data.size) + 196] = msg.sender
                                                        mem[_5699 + ceil32(return_data.size) + 228] = 64
                                                        mem[_5699 + ceil32(return_data.size) + 260] = mem[128]
                                                        mem[_5699 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                        if ceil32(mem[128]) > mem[128]:
                                                            mem[mem[128] + _5699 + ceil32(return_data.size) + 292] = 0
                                                        require ext_code.size(nodeRewardManagerAddress)
                                                        call nodeRewardManagerAddress.0x12b8603f with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=mem[128], data=mem[_5699 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
