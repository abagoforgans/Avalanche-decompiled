contract main {




// =====================  Runtime code  =====================


#
#  - sub_c0b37af3(?)
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
address stakingPoolAddress;
address deadWalletAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 futurFee;
uint256 totalFees;
uint256 cashoutFee;
uint256 stor25;
uint8 stor26;
uint8 stor26; offset 8
uint256 stor26; offset 8
uint256 swapTokensAmount;
array of uint256 stor28;
mapping of uint8 stor29;
mapping of uint8 stor30;
mapping of uint8 stor31;
uint8 stor32;
uint256 maxTxAmount;
array of struct sub_2403bd77;
uint256 stor35;

function _isExcluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor30[arg1])
}

function stakingPool() {
    return stakingPoolAddress
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

function sub_2403bd77(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_2403bd77[arg1].field_0
    return sub_2403bd77[arg1][arg2].field_0, 
           sub_2403bd77[arg1][arg2].field_256,
           sub_2403bd77[arg1][arg2].field_512,
           sub_2403bd77[arg1][arg2].field_768
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

function deadWallet() {
    return deadWalletAddress
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= payee.length:
        revert with 0, 50
    return payee[arg1]
}

function maxTxAmount() {
    return maxTxAmount
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
    stor25 = arg1
}

function updateCashoutFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cashoutFee = arg1
}

function changeMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTxAmount = arg1
}

function updateSwapTokensAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAmount = arg1
}

function sub_e12e3ca5(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor32 = uint8(bool(arg1))
}

function updateFuturWall(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    futurUsePoolAddress = arg1
}

function updateStakingPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stakingPoolAddress = arg1
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
    nodeRewardManagementAddress = arg1
}

function changeSwapLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor26.field_8) = Mask(248, 0, arg1)
}

function setIsExcluded(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor30[address(arg1)] = uint8(arg2)
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29[address(arg1)] = uint8(arg2)
}

function sub_94471c42(?) {
    staticcall nodeRewardManagementAddress.0xb433a12 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNodePrice() {
    staticcall nodeRewardManagementAddress.0xf1fec2b8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_642d7e6e(?) {
    staticcall nodeRewardManagementAddress.0xd754d433 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalRewardStaked() {
    staticcall nodeRewardManagementAddress.0x8a327eaa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalNodesCreated() {
    staticcall nodeRewardManagementAddress.0xb8527aef with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall nodeRewardManagementAddress.0x4491a7e4 with:
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

function sub_796f838e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0xfb89e2e4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_de89c0ca(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x2872e38c with:
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
    call nodeRewardManagementAddress.0xcece91eb with:
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
    staticcall nodeRewardManagementAddress.0x619a635e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function manualsend(uint256 arg1) {
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

function updateLiquidityFee(uint256 arg1) {
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

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor31[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor31[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
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

function getRewardAmount() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    staticcall nodeRewardManagementAddress.0x41ac82b0 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    staticcall nodeRewardManagementAddress.0x619a635e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function sub_a04ec539(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 34
    mem[64] = (32 * sub_2403bd77[address(arg1)].field_0) + 128
    mem[96] = sub_2403bd77[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < sub_2403bd77[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 34)
        _14 = mem[64]
        mem[64] = mem[64] + 128
        mem[_14] = sub_2403bd77[address(arg1)][idx].field_0
        mem[_14 + 32] = sub_2403bd77[address(arg1)][idx].field_256
        mem[_14 + 64] = sub_2403bd77[address(arg1)][idx].field_512
        mem[_14 + 96] = sub_2403bd77[address(arg1)][idx].field_768
        mem[s] = _14
        s = s + 32
        idx = idx + 1
        continue 
    _15 = mem[64]
    mem[mem[64]] = 32
    _16 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _16:
        _23 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_23 + 32]
        mem[t + 64] = mem[_23 + 64]
        mem[t + 96] = mem[_23 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _15 + (128 * _16) + -mem[64] + 64
}

function sub_5d512ac7(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != 30:
        revert with 0, 'Must have 30 items'
    stor28.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor28.length > idx:
            stor28[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor28[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor28.length > idx:
            stor28[idx] = 0
            idx = idx + 1
            continue 
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
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall uniswapV2RouterAddress.0x73b295c2 with:
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

function sub_3c33f9a7(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_2403bd77[msg.sender].field_0:
        revert with 0, 50
    if sub_2403bd77[msg.sender][arg1].field_256 > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not eligible to claim this position yet'
    if sub_2403bd77[msg.sender][arg1].field_512 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is nothing to claim from this position'
    sub_2403bd77[msg.sender][arg1].field_512 = 0
    if not stakingPoolAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if sub_2403bd77[msg.sender][arg1].field_512 > balanceOf[stor18]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[stor18] < sub_2403bd77[msg.sender][arg1].field_512:
        revert with 0, 17
    balanceOf[stor18] -= sub_2403bd77[msg.sender][arg1].field_512
    if balanceOf[msg.sender] > !sub_2403bd77[msg.sender][arg1].field_512:
        revert with 0, 17
    if balanceOf[msg.sender] + sub_2403bd77[msg.sender][arg1].field_512 < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + sub_2403bd77[msg.sender][arg1].field_512
    emit Transfer(sub_2403bd77[msg.sender][arg1].field_512, stakingPoolAddress, msg.sender);
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
                    if not stor30[address(msg.sender)]:
                        if not stor30[address(arg1)]:
                            if arg2 > maxTxAmount:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please transfer under the max transaction amount'
                            if stor32:
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
                    if not stor30[address(arg1)]:
                        if not stor30[address(arg2)]:
                            if arg3 > maxTxAmount:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please transfer under the max transaction amount'
                            if stor32:
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

function manualswap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = this.address
    staticcall uniswapV2RouterAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    if arg1 <= balanceOf[address(this.address)]:
        allowance[address(this.address)][stor14].field_0 = arg1
        emit Approval(arg1, this.address, uniswapV2RouterAddress);
        mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg1
        idx = 0
        s = ceil32(return_data.size) + 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    else:
        allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
        emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
        mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)]
        idx = 0
        s = ceil32(return_data.size) + 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3f7b97bb(?) {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    staticcall nodeRewardManagementAddress.0x41ac82b0 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0xc87aefa100000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    staticcall nodeRewardManagementAddress.0xc87aefa1 with:
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
    staticcall nodeRewardManagementAddress.0x41ac82b0 with:
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
    staticcall nodeRewardManagementAddress.0x4a389fae with:
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
    staticcall nodeRewardManagementAddress.0x41ac82b0 with:
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
    staticcall nodeRewardManagementAddress.0xc92819ce with:
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
    staticcall nodeRewardManagementAddress.0x41ac82b0 with:
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
    staticcall nodeRewardManagementAddress.0x5759fb02 with:
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
    if stor29[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    mem[100] = msg.sender
    staticcall nodeRewardManagementAddress.0x619a635e with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 26
        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 160] = 30
        mem[ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if not distributionPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not uint8(stor26.field_8):
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if ext_call.return_data[0] > balanceOf[stor17]:
                revert with 0, 
                            32,
                            38,
                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                            0
        else:
            if cashoutFee <= 0:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ext_call.return_data[0] > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                                0
            else:
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[ceil32(return_data.size) + 224] = 38
                mem[ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if 0 > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                                0
                if balanceOf[stor17] < 0:
                    revert with 0, 17
                if balanceOf[this.address] > -1:
                    revert with 0, 17
                if balanceOf[this.address] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address]
                emit Transfer(0, distributionPoolAddress, this.address);
                mem[ceil32(return_data.size) + 320] = 2
                mem[ceil32(return_data.size) + 352] = this.address
                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 416
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 384] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(2 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 420] = 32
                    mem[(2 * ceil32(return_data.size)) + 452] = 36
                    mem[(2 * ceil32(return_data.size)) + 484] = 'ERC20: approve from the zero add'
                    mem[(2 * ceil32(return_data.size)) + 516] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 416
                       len ceil32(return_data.size) + 132
                if not uniswapV2RouterAddress:
                    mem[(2 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 420] = 32
                    mem[(2 * ceil32(return_data.size)) + 452] = 34
                    mem[(2 * ceil32(return_data.size)) + 484] = 'ERC20: approve to the zero addre'
                    mem[(2 * ceil32(return_data.size)) + 516] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 416
                       len ceil32(return_data.size) + 132
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor14].field_0 = 0
                mem[(2 * ceil32(return_data.size)) + 416] = 0
                emit Approval(mem[(2 * ceil32(return_data.size)) + 416 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                mem[(2 * ceil32(return_data.size)) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 420] = 0
                mem[(2 * ceil32(return_data.size)) + 452] = 0
                mem[(2 * ceil32(return_data.size)) + 484] = 160
                mem[(2 * ceil32(return_data.size)) + 580] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 612
                t = ceil32(return_data.size) + 352
                while idx < mem[ceil32(return_data.size) + 320]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 516] = this.address
                mem[(2 * ceil32(return_data.size)) + 548] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 672]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _281 = mem[64]
                mem[64] = mem[64] + 64
                mem[_281] = 30
                mem[_281 + 32] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call futurUsePoolAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                _299 = mem[64]
                mem[64] = mem[64] + 96
                mem[_299] = 38
                mem[_299 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_299 + 70 len 26]
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
        mem[ceil32(return_data.size) + 160] = 30
        mem[ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] * cashoutFee / 100 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
            revert with 0, 17
        if not distributionPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not uint8(stor26.field_8):
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                revert with 0, 
                            32,
                            38,
                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                            0
        else:
            if cashoutFee <= 0:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                                0
            else:
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[ceil32(return_data.size) + 224] = 38
                mem[ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] * cashoutFee / 100 > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
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
                mem[ceil32(return_data.size) + 320] = 2
                mem[ceil32(return_data.size) + 352] = this.address
                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 416
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 384] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(2 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 420] = 32
                    mem[(2 * ceil32(return_data.size)) + 452] = 36
                    mem[(2 * ceil32(return_data.size)) + 484] = 'ERC20: approve from the zero add'
                    mem[(2 * ceil32(return_data.size)) + 516] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 416
                       len ceil32(return_data.size) + 132
                if not uniswapV2RouterAddress:
                    mem[(2 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 420] = 32
                    mem[(2 * ceil32(return_data.size)) + 452] = 34
                    mem[(2 * ceil32(return_data.size)) + 484] = 'ERC20: approve to the zero addre'
                    mem[(2 * ceil32(return_data.size)) + 516] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 416
                       len ceil32(return_data.size) + 132
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * cashoutFee / 100
                mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0] * cashoutFee / 100
                emit Approval(mem[(2 * ceil32(return_data.size)) + 416 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                mem[(2 * ceil32(return_data.size)) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] * cashoutFee / 100
                mem[(2 * ceil32(return_data.size)) + 452] = 0
                mem[(2 * ceil32(return_data.size)) + 484] = 160
                mem[(2 * ceil32(return_data.size)) + 580] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 612
                t = ceil32(return_data.size) + 352
                while idx < mem[ceil32(return_data.size) + 320]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 516] = this.address
                mem[(2 * ceil32(return_data.size)) + 548] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 672]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _280 = mem[64]
                mem[64] = mem[64] + 64
                mem[_280] = 30
                mem[_280 + 32] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call futurUsePoolAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                _296 = mem[64]
                mem[64] = mem[64] + 96
                mem[_296] = 38
                mem[_296 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_296 + 70 len 26]
                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
        ('le', ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('mul', ('ext_call.return_data', 0, 32), ('stor', ('name', 'cashoutFee', 24))), 100))), ('stor', ('map', ('stor', ('name', 'stor17', 17)), ('name', 'balanceOf', 0))))
        if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
            revert with 0, 17
        balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
        if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
            revert with 0, 17
        if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
        emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
    call nodeRewardManagementAddress.0x5c298b1c with:
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
    if stor29[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    mem[100] = msg.sender
    mem[132] = arg1
    staticcall nodeRewardManagementAddress.0xa6e15cc4 with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 26
        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 160] = 30
        mem[ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if not distributionPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not uint8(stor26.field_8):
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if ext_call.return_data[0] > balanceOf[stor17]:
                revert with 0, 
                            32,
                            38,
                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                            0
        else:
            if cashoutFee <= 0:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ext_call.return_data[0] > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                                0
            else:
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[ceil32(return_data.size) + 224] = 38
                mem[ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if 0 > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                                0
                if balanceOf[stor17] < 0:
                    revert with 0, 17
                if balanceOf[this.address] > -1:
                    revert with 0, 17
                if balanceOf[this.address] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address]
                emit Transfer(0, distributionPoolAddress, this.address);
                mem[ceil32(return_data.size) + 320] = 2
                mem[ceil32(return_data.size) + 352] = this.address
                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 416
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 384] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(2 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 420] = 32
                    mem[(2 * ceil32(return_data.size)) + 452] = 36
                    mem[(2 * ceil32(return_data.size)) + 484] = 'ERC20: approve from the zero add'
                    mem[(2 * ceil32(return_data.size)) + 516] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 416
                       len ceil32(return_data.size) + 132
                if not uniswapV2RouterAddress:
                    mem[(2 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 420] = 32
                    mem[(2 * ceil32(return_data.size)) + 452] = 34
                    mem[(2 * ceil32(return_data.size)) + 484] = 'ERC20: approve to the zero addre'
                    mem[(2 * ceil32(return_data.size)) + 516] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 416
                       len ceil32(return_data.size) + 132
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor14].field_0 = 0
                mem[(2 * ceil32(return_data.size)) + 416] = 0
                emit Approval(mem[(2 * ceil32(return_data.size)) + 416 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                mem[(2 * ceil32(return_data.size)) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 420] = 0
                mem[(2 * ceil32(return_data.size)) + 452] = 0
                mem[(2 * ceil32(return_data.size)) + 484] = 160
                mem[(2 * ceil32(return_data.size)) + 580] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 612
                t = ceil32(return_data.size) + 352
                while idx < mem[ceil32(return_data.size) + 320]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 516] = this.address
                mem[(2 * ceil32(return_data.size)) + 548] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 672]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _281 = mem[64]
                mem[64] = mem[64] + 64
                mem[_281] = 30
                mem[_281 + 32] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call futurUsePoolAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                _299 = mem[64]
                mem[64] = mem[64] + 96
                mem[_299] = 38
                mem[_299 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_299 + 70 len 26]
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
        mem[ceil32(return_data.size) + 160] = 30
        mem[ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] * cashoutFee / 100 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
            revert with 0, 17
        if not distributionPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not uint8(stor26.field_8):
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                revert with 0, 
                            32,
                            38,
                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                            0
        else:
            if cashoutFee <= 0:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                                0
            else:
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[ceil32(return_data.size) + 224] = 38
                mem[ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] * cashoutFee / 100 > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
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
                mem[ceil32(return_data.size) + 320] = 2
                mem[ceil32(return_data.size) + 352] = this.address
                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 416
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 384] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(2 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 420] = 32
                    mem[(2 * ceil32(return_data.size)) + 452] = 36
                    mem[(2 * ceil32(return_data.size)) + 484] = 'ERC20: approve from the zero add'
                    mem[(2 * ceil32(return_data.size)) + 516] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 416
                       len ceil32(return_data.size) + 132
                if not uniswapV2RouterAddress:
                    mem[(2 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 420] = 32
                    mem[(2 * ceil32(return_data.size)) + 452] = 34
                    mem[(2 * ceil32(return_data.size)) + 484] = 'ERC20: approve to the zero addre'
                    mem[(2 * ceil32(return_data.size)) + 516] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 416
                       len ceil32(return_data.size) + 132
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * cashoutFee / 100
                mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0] * cashoutFee / 100
                emit Approval(mem[(2 * ceil32(return_data.size)) + 416 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                mem[(2 * ceil32(return_data.size)) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] * cashoutFee / 100
                mem[(2 * ceil32(return_data.size)) + 452] = 0
                mem[(2 * ceil32(return_data.size)) + 484] = 160
                mem[(2 * ceil32(return_data.size)) + 580] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 612
                t = ceil32(return_data.size) + 352
                while idx < mem[ceil32(return_data.size) + 320]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 516] = this.address
                mem[(2 * ceil32(return_data.size)) + 548] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 672]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _280 = mem[64]
                mem[64] = mem[64] + 64
                mem[_280] = 30
                mem[_280 + 32] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call futurUsePoolAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                _296 = mem[64]
                mem[64] = mem[64] + 96
                mem[_296] = 38
                mem[_296 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_296 + 70 len 26]
                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
        ('le', ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('mul', ('ext_call.return_data', 0, 32), ('stor', ('name', 'cashoutFee', 24))), 100))), ('stor', ('map', ('stor', ('name', 'stor17', 17)), ('name', 'balanceOf', 0))))
        if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
            revert with 0, 17
        balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
        if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
            revert with 0, 17
        if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
        emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
    call nodeRewardManagementAddress.0x6edb7002 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function createNodeWithTokens(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
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
    if arg1.length >= 20:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if not msg.sender:
        revert with 0, 'NODE CREATION:  creation from the zero address'
    if stor29[address(msg.sender)]:
        revert with 0, 'NODE CREATION: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
    if distributionPoolAddress == msg.sender:
        revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
    staticcall nodeRewardManagementAddress.0xf1fec2b8 with:
            gas gas_remaining wei
    mem[ceil32(ceil32(arg1.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
        revert with 0, 'NODE CREATION: Balance too low for creation.'
    if balanceOf[address(this.address)] < swapTokensAmount:
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
        require ext_code.size(nodeRewardManagementAddress)
        call nodeRewardManagementAddress.0x90219732 with:
             gas gas_remaining wei
            args msg.sender, 96, 0, arg1.length, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
    else:
        if not uint8(stor26.field_8):
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
            require ext_code.size(nodeRewardManagementAddress)
            call nodeRewardManagementAddress.0x90219732 with:
                 gas gas_remaining wei
                args msg.sender, 96, 0, arg1.length, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
        else:
            if uint8(stor26.field_0):
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
                require ext_code.size(nodeRewardManagementAddress)
                call nodeRewardManagementAddress.0x90219732 with:
                     gas gas_remaining wei
                    args msg.sender, 96, 0, arg1.length, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
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
                    require ext_code.size(nodeRewardManagementAddress)
                    call nodeRewardManagementAddress.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, 96, 0, arg1.length, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                else:
                    if stor31[address(msg.sender)]:
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
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, 96, 0, arg1.length, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                    else:
                        uint8(stor26.field_0) = 1
                        if not balanceOf[address(this.address)]:
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = 26
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = 'SafeMath: division by zero'
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not distributionPoolAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = 38
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            if 0 > balanceOf[address(this.address)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 231 len 26] >> 48,
                                            0
                            if balanceOf[address(this.address)] < 0:
                                revert with 0, 17
                            if balanceOf[stor17] > -1:
                                revert with 0, 17
                            if balanceOf[stor17] < balanceOf[stor17]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor17] = balanceOf[stor17]
                            emit Transfer(0, this.address, distributionPoolAddress);
                            if not balanceOf[address(this.address)]:
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = 26
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 321] = 26
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 353] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 385] = 30
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 417] = 'SafeMath: subtraction overflow'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449] = 2
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 481] = this.address
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 545] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 513] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 549] = 32
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = 36
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = 'ERC20: approve from the zero add'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 549] = 32
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = 34
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = 'ERC20: approve to the zero addre'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545
                                       len ceil32(return_data.size) + 132
                                allowance[address(this.address)][stor14].field_0 = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0
                                emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 549] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = 160
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 741
                                t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 481
                                while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 677] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 30
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577] = 'SafeMath: subtraction overflow'
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
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 677] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 741] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 773] = block.timestamp
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, 0, 0, 0, 0, block.timestamp
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 609 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                    0,
                            else:
                                if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                    revert with 0, 17
                                if not balanceOf[address(this.address)]:
                                    revert with 0, 18
                                if balanceOf[address(this.address)] * liquidityPoolFee / balanceOf[address(this.address)] != liquidityPoolFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = 26
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 321] = 26
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 353] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 385] = 30
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 417] = 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2 > balanceOf[address(this.address)] * liquidityPoolFee / 100:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                    revert with 0, 17
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449] = 2
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 481] = this.address
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 545] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 513] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 549] = 32
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = 36
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = 'ERC20: approve from the zero add'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 549] = 32
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = 34
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = 'ERC20: approve to the zero addre'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545
                                       len ceil32(return_data.size) + 132
                                allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                allowance[address(this.address)][stor14].field_255 = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 549] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = 160
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 741
                                t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 481
                                while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 677] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 30
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor14].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 677] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 741] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 773] = block.timestamp
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 609 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 2
                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = this.address
                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 705
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                            emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 705] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 709] = balanceOf[address(this.address)]
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 741] = 0
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 773] = 160
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 869] = 2
                            idx = 0
                            s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 901
                            t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641
                            while idx < mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 869 len (32 * mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 867] = 0
                                revert with 0, 
                                            'SafeMath: subtraction overflow',
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 867 len (9 * ceil32(return_data.size)) + 2]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call distributionPoolAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor26.field_0) = 0
                            if not msg.sender:
                                revert with 0, 
                                            'ERC20: transfer from the zero address',
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 901 len 9 * ceil32(return_data.size)]
                            if not this.address:
                                revert with 0, 
                                            'ERC20: transfer to the zero address',
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 901 len 9 * ceil32(return_data.size)]
                            if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 971] = 0
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 971 len (9 * ceil32(return_data.size)) + 26]
                            if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                            if balanceOf[this.address] > !ext_call.return_data[0]:
                                revert with 0, 17
                            if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 965 len 9 * ceil32(return_data.size)]
                            balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                            emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 997 len ceil32(arg1.length)] = mem[128 len ceil32(arg1.length)]
                            if ceil32(arg1.length) > arg1.length:
                                mem[arg1.length + ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 997] = 0
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, 96, 0, arg1.length, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 997 len (9 * ceil32(return_data.size)) + ceil32(arg1.length)]
                        else:
                            if balanceOf[address(this.address)] and rewardsFee > -1 / balanceOf[address(this.address)]:
                                revert with 0, 17
                            if not balanceOf[address(this.address)]:
                                revert with 0, 18
                            if balanceOf[address(this.address)] * rewardsFee / balanceOf[address(this.address)] != rewardsFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = 26
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = 'SafeMath: division by zero'
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not distributionPoolAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = 38
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            if balanceOf[address(this.address)] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 231 len 26] >> 48,
                                            0
                            if balanceOf[address(this.address)] < balanceOf[address(this.address)] * rewardsFee / 100:
                                revert with 0, 17
                            balanceOf[address(this.address)] -= balanceOf[address(this.address)] * rewardsFee / 100
                            if balanceOf[stor17] > !(balanceOf[address(this.address)] * rewardsFee / 100):
                                revert with 0, 17
                            if balanceOf[stor17] + (balanceOf[address(this.address)] * rewardsFee / 100) < balanceOf[stor17]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor17] += balanceOf[address(this.address)] * rewardsFee / 100
                            emit Transfer((balanceOf[address(this.address)] * rewardsFee / 100), this.address, distributionPoolAddress);
                            if not balanceOf[address(this.address)]:
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = 26
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 321] = 26
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 353] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 385] = 30
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 417] = 'SafeMath: subtraction overflow'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449] = 2
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 481] = this.address
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 545] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 513] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 549] = 32
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = 36
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = 'ERC20: approve from the zero add'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 549] = 32
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = 34
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = 'ERC20: approve to the zero addre'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545
                                       len ceil32(return_data.size) + 132
                                allowance[address(this.address)][stor14].field_0 = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0
                                emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 549] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = 160
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 741
                                t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 481
                                while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 677] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 30
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577] = 'SafeMath: subtraction overflow'
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
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 677] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 741] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 773] = block.timestamp
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, 0, 0, 0, 0, block.timestamp
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 609 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                    0,
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 2
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = this.address
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 705
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 705] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 709] = balanceOf[address(this.address)]
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 741] = 0
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 773] = 160
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 869] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 901
                                t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641
                                while idx < mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 869 len (32 * mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 867] = 0
                                    revert with 0, 
                                                'SafeMath: subtraction overflow',
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 867 len (9 * ceil32(return_data.size)) + 2]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call distributionPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor26.field_0) = 0
                                if not msg.sender:
                                    revert with 0, 
                                                'ERC20: transfer from the zero address',
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 901 len 9 * ceil32(return_data.size)]
                                if not this.address:
                                    revert with 0, 
                                                'ERC20: transfer to the zero address',
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 901 len 9 * ceil32(return_data.size)]
                                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 971] = 0
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 971 len (9 * ceil32(return_data.size)) + 26]
                                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                if balanceOf[this.address] > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 965 len 9 * ceil32(return_data.size)]
                                balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 997 len ceil32(arg1.length)] = mem[128 len ceil32(arg1.length)]
                                if ceil32(arg1.length) > arg1.length:
                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 997] = 0
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, 96, 0, arg1.length, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 997 len (9 * ceil32(return_data.size)) + ceil32(arg1.length)]
                            else:
                                if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                    revert with 0, 17
                                if not balanceOf[address(this.address)]:
                                    revert with 0, 18
                                if balanceOf[address(this.address)] * liquidityPoolFee / balanceOf[address(this.address)] != liquidityPoolFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = 26
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 321] = 26
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 353] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 385] = 30
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 417] = 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2 > balanceOf[address(this.address)] * liquidityPoolFee / 100:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                    revert with 0, 17
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449] = 2
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 481] = this.address
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 545] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 513] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 549] = 32
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = 36
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = 'ERC20: approve from the zero add'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 549] = 32
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = 34
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = 'ERC20: approve to the zero addre'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545
                                       len ceil32(return_data.size) + 132
                                allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                allowance[address(this.address)][stor14].field_255 = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 549] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = 160
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 741
                                t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 481
                                while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 677] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = 30
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor14].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 677] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 741] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 773] = block.timestamp
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 609 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 2
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = this.address
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 705
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 705] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 709] = balanceOf[address(this.address)]
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 741] = 0
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 773] = 160
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 869] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 901
                                t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641
                                while idx < mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 805] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 837] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609]) + -mem[64] + 897]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _901 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_901] = 30
                                mem[_901 + 32] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call distributionPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor26.field_0) = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                _933 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_933] = 38
                                mem[_933 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_933 + 70 len 26]
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
                                mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 100] = mem[96]
                                mem[mem[64] + 132 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                if ceil32(mem[96]) > mem[96]:
                                    mem[mem[96] + mem[64] + 132] = 0
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, 96, 0, mem[96], mem[mem[64] + 132 len ceil32(mem[96])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x796f838e(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3f7b97bb(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x19165587(?????) > uint32(call.func_hash) >> 224:
                    if updateFuturWall(address arg1) <= uint32(call.func_hash) >> 224:
                        if updateFuturWall(address arg1) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            futurUsePoolAddress = address(cd[4])
                        if stakingPool() == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return stakingPoolAddress
                        if unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return totalFees
                        if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return uniswapV2RouterAddress
                        require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return totalSupply
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
                    if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
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
                    if uint32(call.func_hash) >> 224 != getRewardAmount():
                        require _isExcluded(address arg1) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor30[cd[4]])
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'SENDER CAN'T BE ZERO'
                    staticcall nodeRewardManagementAddress.0x41ac82b0 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NO NODE OWNER'
                    staticcall nodeRewardManagementAddress.0x619a635e with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x2bb14e1d(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x2bb14e1d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return rewardsFee
                    if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 18
                    if unknown_0x39509351(?????) == uint32(call.func_hash) >> 224:
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
                        return 1
                    if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalShares
                    require unknown_0x3c33f9a7(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if cd[4] >= sub_2403bd77[msg.sender].field_0:
                        revert with 0, 50
                    if sub_2403bd77[msg.sender][cd[4]].field_256 > block.timestamp:
                        revert with 0, 'You are not eligible to claim this position yet'
                    if sub_2403bd77[msg.sender][cd[4]].field_512 <= 0:
                        revert with 0, 'There is nothing to claim from this position'
                    sub_2403bd77[msg.sender][cd[4]].field_512 = 0
                    if not stakingPoolAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if sub_2403bd77[msg.sender][cd[4]].field_512 > balanceOf[stor18]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                    if balanceOf[stor18] < sub_2403bd77[msg.sender][cd[4]].field_512:
                        revert with 0, 17
                    balanceOf[stor18] -= sub_2403bd77[msg.sender][cd[4]].field_512
                    if balanceOf[msg.sender] > !sub_2403bd77[msg.sender][cd[4]].field_512:
                        revert with 0, 17
                    if balanceOf[msg.sender] + sub_2403bd77[msg.sender][cd[4]].field_512 < balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + sub_2403bd77[msg.sender][cd[4]].field_512
                    emit Transfer(sub_2403bd77[msg.sender][cd[4]].field_512, stakingPoolAddress, msg.sender);
                if unknown_0x19165587(?????) == uint32(call.func_hash) >> 224:
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
                if unknown_0x1ad34a4f(?????) == uint32(call.func_hash) >> 224:
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
                if unknown_0x1cdd3be3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor29[cd[4]])
                if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                    require unknown_0x2403bd77(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] < sub_2403bd77[cd[4]].field_0
                    return sub_2403bd77[cd[4]][cd[36]].field_0, 
                           sub_2403bd77[cd[4]][cd[36]].field_256,
                           sub_2403bd77[cd[4]][cd[36]].field_512,
                           sub_2403bd77[cd[4]][cd[36]].field_768
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[36]):
                    revert with 0, 'ERC20: transfer to the zero address'
                if stor29[address(cd[4])]:
                    revert with 0, 'Blacklisted address'
                if stor29[address(cd[36])]:
                    revert with 0, 'Blacklisted address'
                if owner != address(cd[4]):
                    if owner != address(cd[36]):
                        if address(cd[4]) != this.address:
                            if address(cd[36]) != this.address:
                                if not stor30[address(cd[4])]:
                                    if not stor30[address(cd[36])]:
                                        if cd[68] > maxTxAmount:
                                            revert with 0, 'Please transfer under the max transaction amount'
                                        if stor32:
                                            if uniswapV2PairAddress == address(cd[4]):
                                                stor29[address(cd[36])] = 1
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[36]):
                    revert with 0, 'ERC20: transfer to the zero address'
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
            if unknown_0x5f1c3182(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x54557973(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x3f7b97bb(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if not msg.sender:
                            revert with 0, 'SENDER CAN'T BE ZERO'
                        mem[132] = msg.sender
                        staticcall nodeRewardManagementAddress.0x41ac82b0 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'NO NODE OWNER'
                        mem[ceil32(return_data.size) + 128] = 0xc87aefa100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 132] = msg.sender
                        staticcall nodeRewardManagementAddress.0xc87aefa1 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _336 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                        require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                        require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                        _391 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                        mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                        require _336 + _391 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_391)] = mem[ceil32(return_data.size) + _336 + 160 len ceil32(_391)]
                        if ceil32(_391) > _391:
                            mem[_391 + (2 * ceil32(return_data.size)) + 160] = 0
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _391
                        mem[mem[64] + 64 len ceil32(_391)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_391)]
                        if ceil32(_391) > _391:
                            mem[_391 + mem[64] + 64] = 0
                        return Array(len=_391, data=mem[mem[64] + 64 len ceil32(_391)])
                    if unknown_0x406072a9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        return released[address(cd[4])][address(cd[36])]
                    if uint32(call.func_hash) >> 224 != unknown_0x48b75044(?????):
                        if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return uniswapV2PairAddress
                        require unknown_0x4dc9b819(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        staticcall nodeRewardManagementAddress.0x8a327eaa with:
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
                            Mask(248, 0, stor26.field_8) = Mask(248, 0, bool(cd[4]))
                        if uint32(call.func_hash) >> 224 != unknown_0x5b0d4674(?????):
                            require unknown_0x5d512ac7(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            if ('cd', 4).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 0, 65
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            s = 160
                            idx = cd[4] + 36
                            while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                                mem[s] = cd[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if ('cd', 4).length != 30:
                                revert with 0, 'Must have 30 items'
                            stor28.length = ('cd', 4).length
                            if not ('cd', 4).length:
                                idx = 0
                                while stor28.length > idx:
                                    stor28[idx] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 160
                                while (32 * ('cd', 4).length) + 160 > idx:
                                    stor28[s] = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                                while stor28.length > idx:
                                    stor28[idx] = 0
                                    idx = idx + 1
                                    continue 
                        require not msg.value
                        if not msg.sender:
                            revert with 0, 'SENDER CAN'T BE ZERO'
                        mem[132] = msg.sender
                        staticcall nodeRewardManagementAddress.0x41ac82b0 with:
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
                        staticcall nodeRewardManagementAddress.0x4a389fae with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _415 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                        require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                        require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                        _468 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                        mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                        require _415 + _468 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_468)] = mem[ceil32(return_data.size) + _415 + 160 len ceil32(_468)]
                        if ceil32(_468) > _468:
                            mem[_468 + (2 * ceil32(return_data.size)) + 160] = 0
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _468
                        mem[mem[64] + 64 len ceil32(_468)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_468)]
                        if ceil32(_468) > _468:
                            mem[_468 + mem[64] + 64] = 0
                        return Array(len=_468, data=mem[mem[64] + 64 len ceil32(_468)])
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
                    staticcall nodeRewardManagementAddress.0x619a635e with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 128] = 26
                        mem[ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 192] = 30
                        mem[ceil32(return_data.size) + 224] = 'SafeMath: subtraction overflow'
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < 0:
                            revert with 0, 17
                        if not distributionPoolAddress:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not uint8(stor26.field_8):
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if ext_call.return_data[0] > balanceOf[stor17]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                                            0
                        else:
                            if cashoutFee <= 0:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if ext_call.return_data[0] > balanceOf[stor17]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                                                0
                            else:
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[ceil32(return_data.size) + 256] = 38
                                mem[ceil32(return_data.size) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if 0 > balanceOf[stor17]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                                                0
                                if balanceOf[stor17] < 0:
                                    revert with 0, 17
                                if balanceOf[this.address] > -1:
                                    revert with 0, 17
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address]
                                emit Transfer(0, distributionPoolAddress, this.address);
                                mem[ceil32(return_data.size) + 352] = 2
                                mem[ceil32(return_data.size) + 384] = this.address
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 448] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 416] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[(2 * ceil32(return_data.size)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 452] = 32
                                    mem[(2 * ceil32(return_data.size)) + 484] = 36
                                    mem[(2 * ceil32(return_data.size)) + 516] = 'ERC20: approve from the zero add'
                                    mem[(2 * ceil32(return_data.size)) + 548] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 448
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[(2 * ceil32(return_data.size)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 452] = 32
                                    mem[(2 * ceil32(return_data.size)) + 484] = 34
                                    mem[(2 * ceil32(return_data.size)) + 516] = 'ERC20: approve to the zero addre'
                                    mem[(2 * ceil32(return_data.size)) + 548] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 448
                                       len ceil32(return_data.size) + 132
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor14].field_0 = 0
                                mem[(2 * ceil32(return_data.size)) + 448] = 0
                                emit Approval(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 452] = 0
                                mem[(2 * ceil32(return_data.size)) + 484] = 0
                                mem[(2 * ceil32(return_data.size)) + 516] = 160
                                mem[(2 * ceil32(return_data.size)) + 612] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 644
                                t = ceil32(return_data.size) + 384
                                while idx < mem[ceil32(return_data.size) + 352]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 548] = this.address
                                mem[(2 * ceil32(return_data.size)) + 580] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 704]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3090 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3090] = 30
                                mem[_3090 + 32] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call futurUsePoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                _3329 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3329] = 38
                                mem[_3329 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] > balanceOf[stor17]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3329 + 70 len 26]
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
                        mem[ceil32(return_data.size) + 192] = 30
                        mem[ceil32(return_data.size) + 224] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] * cashoutFee / 100 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                            revert with 0, 17
                        if not distributionPoolAddress:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not uint8(stor26.field_8):
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                                            0
                        else:
                            if cashoutFee <= 0:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                                                0
                            else:
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[ceil32(return_data.size) + 256] = 38
                                mem[ceil32(return_data.size) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] * cashoutFee / 100 > balanceOf[stor17]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
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
                                mem[ceil32(return_data.size) + 352] = 2
                                mem[ceil32(return_data.size) + 384] = this.address
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 448] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 416] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[(2 * ceil32(return_data.size)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 452] = 32
                                    mem[(2 * ceil32(return_data.size)) + 484] = 36
                                    mem[(2 * ceil32(return_data.size)) + 516] = 'ERC20: approve from the zero add'
                                    mem[(2 * ceil32(return_data.size)) + 548] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 448
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[(2 * ceil32(return_data.size)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 452] = 32
                                    mem[(2 * ceil32(return_data.size)) + 484] = 34
                                    mem[(2 * ceil32(return_data.size)) + 516] = 'ERC20: approve to the zero addre'
                                    mem[(2 * ceil32(return_data.size)) + 548] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 448
                                       len ceil32(return_data.size) + 132
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * cashoutFee / 100
                                mem[(2 * ceil32(return_data.size)) + 448] = ext_call.return_data[0] * cashoutFee / 100
                                emit Approval(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0] * cashoutFee / 100
                                mem[(2 * ceil32(return_data.size)) + 484] = 0
                                mem[(2 * ceil32(return_data.size)) + 516] = 160
                                mem[(2 * ceil32(return_data.size)) + 612] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 644
                                t = ceil32(return_data.size) + 384
                                while idx < mem[ceil32(return_data.size) + 352]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 548] = this.address
                                mem[(2 * ceil32(return_data.size)) + 580] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 704]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3089 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3089] = 30
                                mem[_3089 + 32] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call futurUsePoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                _3326 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3326] = 38
                                mem[_3326 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3326 + 70 len 26]
                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                        ('le', ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('mul', ('ext_call.return_data', 0, 32), ('stor', ('name', 'cashoutFee', 24))), 100))), ('stor', ('map', ('stor', ('name', 'stor17', 17)), ('name', 'balanceOf', 0))))
                        if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                            revert with 0, 17
                        balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
                        if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                            revert with 0, 17
                        if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) < balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                        emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
                    call nodeRewardManagementAddress.0x5c298b1c with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if unknown_0x677daa57(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x677daa57(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        maxTxAmount = cd[4]
                    else:
                        if unknown_0x6815a91c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            cashoutFee = cd[4]
                        else:
                            if unknown_0x697e2f8e(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return nodeRewardManagementAddress
                            if unknown_0x6d9ae0be(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return cashoutFee
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
                    if unknown_0x5f1c3182(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return swapTokensAmount
                    if unknown_0x642d7e6e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        staticcall nodeRewardManagementAddress.0xd754d433 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0x65b8dbc0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if uniswapV2RouterAddress == address(cd[4]):
                            revert with 0, 'TKN: The router already has that address'
                        emit UpdateUniswapV2Router(address(cd[4]), uniswapV2RouterAddress);
                        uniswapV2RouterAddress = address(cd[4])
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
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
                            if stor29[address(msg.sender)]:
                                revert with 0, 'MANIA CSHT: Blacklisted address'
                            if futurUsePoolAddress == msg.sender:
                                revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                            if distributionPoolAddress == msg.sender:
                                revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                            mem[132] = msg.sender
                            mem[164] = cd[4]
                            staticcall nodeRewardManagementAddress.0xa6e15cc4 with:
                                    gas gas_remaining wei
                                   args msg.sender, cd[4]
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'CSHT: You don't have enough reward to cash out'
                            if not ext_call.return_data[0]:
                                mem[ceil32(return_data.size) + 128] = 26
                                mem[ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 192] = 30
                                mem[ceil32(return_data.size) + 224] = 'SafeMath: subtraction overflow'
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not uint8(stor26.field_8):
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ext_call.return_data[0] > balanceOf[stor17]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                                                    0
                                else:
                                    if cashoutFee <= 0:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ext_call.return_data[0] > balanceOf[stor17]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                                                        0
                                    else:
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        mem[ceil32(return_data.size) + 256] = 38
                                        mem[ceil32(return_data.size) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if 0 > balanceOf[stor17]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                                                        0
                                        if balanceOf[stor17] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, distributionPoolAddress, this.address);
                                        mem[ceil32(return_data.size) + 352] = 2
                                        mem[ceil32(return_data.size) + 384] = this.address
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 448] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 448
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 416] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            mem[(2 * ceil32(return_data.size)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 452] = 32
                                            mem[(2 * ceil32(return_data.size)) + 484] = 36
                                            mem[(2 * ceil32(return_data.size)) + 516] = 'ERC20: approve from the zero add'
                                            mem[(2 * ceil32(return_data.size)) + 548] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 448
                                               len ceil32(return_data.size) + 132
                                        if not uniswapV2RouterAddress:
                                            mem[(2 * ceil32(return_data.size)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 452] = 32
                                            mem[(2 * ceil32(return_data.size)) + 484] = 34
                                            mem[(2 * ceil32(return_data.size)) + 516] = 'ERC20: approve to the zero addre'
                                            mem[(2 * ceil32(return_data.size)) + 548] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 448
                                               len ceil32(return_data.size) + 132
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        mem[(2 * ceil32(return_data.size)) + 448] = 0
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                        mem[(2 * ceil32(return_data.size)) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 452] = 0
                                        mem[(2 * ceil32(return_data.size)) + 484] = 0
                                        mem[(2 * ceil32(return_data.size)) + 516] = 160
                                        mem[(2 * ceil32(return_data.size)) + 612] = 2
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 644
                                        t = ceil32(return_data.size) + 384
                                        while idx < mem[ceil32(return_data.size) + 352]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 548] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 580] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 704]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3095 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3095] = 30
                                        mem[_3095 + 32] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call futurUsePoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not distributionPoolAddress:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _3335 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3335] = 38
                                        mem[_3335 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[stor17]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3335 + 70 len 26]
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
                                mem[ceil32(return_data.size) + 192] = 30
                                mem[ceil32(return_data.size) + 224] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] * cashoutFee / 100 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                                    revert with 0, 17
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not uint8(stor26.field_8):
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                                                    0
                                else:
                                    if cashoutFee <= 0:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                                                        0
                                    else:
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        mem[ceil32(return_data.size) + 256] = 38
                                        mem[ceil32(return_data.size) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] * cashoutFee / 100 > balanceOf[stor17]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
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
                                        mem[ceil32(return_data.size) + 352] = 2
                                        mem[ceil32(return_data.size) + 384] = this.address
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 448] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 448
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 416] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            mem[(2 * ceil32(return_data.size)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 452] = 32
                                            mem[(2 * ceil32(return_data.size)) + 484] = 36
                                            mem[(2 * ceil32(return_data.size)) + 516] = 'ERC20: approve from the zero add'
                                            mem[(2 * ceil32(return_data.size)) + 548] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 448
                                               len ceil32(return_data.size) + 132
                                        if not uniswapV2RouterAddress:
                                            mem[(2 * ceil32(return_data.size)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 452] = 32
                                            mem[(2 * ceil32(return_data.size)) + 484] = 34
                                            mem[(2 * ceil32(return_data.size)) + 516] = 'ERC20: approve to the zero addre'
                                            mem[(2 * ceil32(return_data.size)) + 548] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 448
                                               len ceil32(return_data.size) + 132
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * cashoutFee / 100
                                        mem[(2 * ceil32(return_data.size)) + 448] = ext_call.return_data[0] * cashoutFee / 100
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                        mem[(2 * ceil32(return_data.size)) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0] * cashoutFee / 100
                                        mem[(2 * ceil32(return_data.size)) + 484] = 0
                                        mem[(2 * ceil32(return_data.size)) + 516] = 160
                                        mem[(2 * ceil32(return_data.size)) + 612] = 2
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 644
                                        t = ceil32(return_data.size) + 384
                                        while idx < mem[ceil32(return_data.size) + 352]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 548] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 580] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 704]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3094 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3094] = 30
                                        mem[_3094 + 32] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call futurUsePoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not distributionPoolAddress:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _3332 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3332] = 38
                                        mem[_3332 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3332 + 70 len 26]
                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                ('le', ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('mul', ('ext_call.return_data', 0, 32), ('stor', ('name', 'cashoutFee', 24))), 100))), ('stor', ('map', ('stor', ('name', 'stor17', 17)), ('name', 'balanceOf', 0))))
                                if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                                    revert with 0, 17
                                balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
                                if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                                    revert with 0, 17
                                if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                                emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
                            call nodeRewardManagementAddress.0x6edb7002 with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
        else:
            if unknown_0xa538ddf2(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8e675663(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x88c41d7c(?????) <= uint32(call.func_hash) >> 224:
                        if uint32(call.func_hash) >> 224 != unknown_0x88c41d7c(?????):
                            if unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if cd[4] >= payee.length:
                                    revert with 0, 50
                                return payee[cd[4]]
                            if uint32(call.func_hash) >> 224 != unknown_0x8bc9c7b0(?????):
                                if unknown_0x8c0b5e22(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    return maxTxAmount
                                require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return owner
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor25 = cd[4]
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
                        if unknown_0x796f838e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.0xfb89e2e4 with:
                                 gas gas_remaining wei
                                args cd[4]
                        else:
                            if unknown_0x8013858b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.0xcece91eb with:
                                     gas gas_remaining wei
                                    args cd[4]
                            else:
                                if unknown_0x823349b3(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    staticcall nodeRewardManagementAddress.0xb8527aef with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    return ext_call.return_data[0]
                                if unknown_0x85141a77(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    return deadWalletAddress
                                require unknown_0x881dce60(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                mem[160] = this.address
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                if cd[4] <= balanceOf[address(this.address)]:
                                    allowance[address(this.address)][stor14].field_0 = cd[4]
                                    emit Approval(cd[4], this.address, uniswapV2RouterAddress);
                                    mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = cd[4]
                                    idx = 0
                                    s = ceil32(return_data.size) + 420
                                    t = 160
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args cd[4], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                else:
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                    emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                    mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = balanceOf[address(this.address)]
                                    idx = 0
                                    s = ceil32(return_data.size) + 420
                                    t = 160
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x9852595c(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return released[address(cd[4])]
                        if unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == bool(cd[36])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if bool(cd[36]) == bool(stor31[address(cd[4])]):
                                revert with 0, 'TKN: Automated market maker pair is already set to that value'
                            stor31[address(cd[4])] = uint8(bool(cd[36]))
                            emit SetAutomatedMarketMakerPair(address(cd[4]), bool(cd[36]));
                        if uint32(call.func_hash) >> 224 != unknown_0xa04ec539(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xa457c2d7(?????):
                                require unknown_0xa5021a17(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                staticcall nodeRewardManagementAddress.0xf1fec2b8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return ext_call.return_data[0]
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
                            return 1
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        mem[0] = address(cd[4])
                        mem[32] = 34
                        mem[64] = (32 * sub_2403bd77[address(cd[4])].field_0) + 160
                        mem[128] = sub_2403bd77[address(cd[4])].field_0
                        s = 160
                        idx = 0
                        while idx < sub_2403bd77[address(cd[4])].field_0:
                            mem[0] = sha3(address(cd[4]), 34)
                            _2827 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2827] = sub_2403bd77[address(cd[4])][idx].field_0
                            mem[_2827 + 32] = sub_2403bd77[address(cd[4])][idx].field_256
                            mem[_2827 + 64] = sub_2403bd77[address(cd[4])][idx].field_512
                            mem[_2827 + 96] = sub_2403bd77[address(cd[4])][idx].field_768
                            mem[s] = _2827
                            s = s + 32
                            idx = idx + 1
                            continue 
                        _2868 = mem[64]
                        mem[mem[64]] = 32
                        _2881 = mem[128]
                        mem[mem[64] + 32] = mem[128]
                        idx = 0
                        s = 160
                        t = mem[64] + 64
                        while idx < _2881:
                            _3967 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_3967 + 32]
                            mem[t + 64] = mem[_3967 + 64]
                            mem[t + 96] = mem[_3967 + 96]
                            idx = idx + 1
                            s = s + 32
                            t = t + 128
                            continue 
                        return memory
                          from mem[64]
                           len _2868 + (128 * _2881) + -mem[64] + 64
                    if unknown_0x8e675663(?????) == uint32(call.func_hash) >> 224:
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
                        if uint32(call.func_hash) >> 224 != unknown_0x8f0ba4ca(?????):
                            if unknown_0x9349c47d(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                distributionPoolAddress = address(cd[4])
                            if unknown_0x94471c42(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                staticcall nodeRewardManagementAddress.0xb433a12 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                            require unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224
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
                        require not msg.value
                        require calldata.size - 4 >= 32
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
                        if ('cd', 4).length <= 3:
                            revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                        if ('cd', 4).length >= 20:
                            revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                        if not msg.sender:
                            revert with 0, 'NODE CREATION:  creation from the zero address'
                        if stor29[address(msg.sender)]:
                            revert with 0, 'NODE CREATION: Blacklisted address'
                        if futurUsePoolAddress == msg.sender:
                            revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                        if distributionPoolAddress == msg.sender:
                            revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                        staticcall nodeRewardManagementAddress.0xf1fec2b8 with:
                                gas gas_remaining wei
                        mem[ceil32(ceil32(('cd', 4).length)) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                            revert with 0, 'NODE CREATION: Balance too low for creation.'
                        if balanceOf[address(this.address)] < swapTokensAmount:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
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
                            call nodeRewardManagementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, 96, 0, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], ext_call.return_data[('cd', 4).length + -ceil32(ceil32(('cd', 4).length)) + 31 len ceil32(('cd', 4).length) - ('cd', 4).length]
                        else:
                            if not uint8(stor26.field_8):
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
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
                                call nodeRewardManagementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, 96, 0, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], ext_call.return_data[('cd', 4).length + -ceil32(ceil32(('cd', 4).length)) + 31 len ceil32(('cd', 4).length) - ('cd', 4).length]
                            else:
                                if uint8(stor26.field_0):
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
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
                                    call nodeRewardManagementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, 96, 0, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], ext_call.return_data[('cd', 4).length + -ceil32(ceil32(('cd', 4).length)) + 31 len ceil32(('cd', 4).length) - ('cd', 4).length]
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
                                        call nodeRewardManagementAddress.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, 96, 0, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], ext_call.return_data[('cd', 4).length + -ceil32(ceil32(('cd', 4).length)) + 31 len ceil32(('cd', 4).length) - ('cd', 4).length]
                                    else:
                                        if stor31[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
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
                                            call nodeRewardManagementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 96, 0, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], ext_call.return_data[('cd', 4).length + -ceil32(ceil32(('cd', 4).length)) + 31 len ceil32(('cd', 4).length) - ('cd', 4).length]
                                        else:
                                            uint8(stor26.field_0) = 1
                                            if not balanceOf[address(this.address)]:
                                                mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = 26
                                                mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 161] = 'SafeMath: division by zero'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not distributionPoolAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 193] = 38
                                                mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 225 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if 0 > balanceOf[address(this.address)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                0
                                                if balanceOf[address(this.address)] < 0:
                                                    revert with 0, 17
                                                if balanceOf[stor17] > -1:
                                                    revert with 0, 17
                                                if balanceOf[stor17] < balanceOf[stor17]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor17] = balanceOf[stor17]
                                                emit Transfer(0, this.address, distributionPoolAddress);
                                                if not balanceOf[address(this.address)]:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 289] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 321] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 353] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 385] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 417] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 449] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513] = this.address
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 577] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 545] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 36
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve from the zero add'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                           len ceil32(return_data.size) + 132
                                                    if not uniswapV2RouterAddress:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 34
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve to the zero addre'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                           len ceil32(return_data.size) + 132
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0
                                                    emit Approval(mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 741] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 773
                                                    t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = this.address
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 709] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + -mem[64] + 833]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3099 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3099] = 30
                                                    mem[_3099 + 32] = 'SafeMath: subtraction overflow'
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
                                                    _3488 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_3488 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_3488]:
                                                        revert with 0, 50
                                                    mem[_3488 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[_3488 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3488 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_3488]:
                                                        revert with 0, 50
                                                    mem[_3488 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                    emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                    mem[_3488 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3488 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)]
                                                    mem[_3488 + ceil32(return_data.size) + 132] = 0
                                                    mem[_3488 + ceil32(return_data.size) + 164] = 160
                                                    mem[_3488 + ceil32(return_data.size) + 260] = mem[_3488]
                                                    idx = 0
                                                    s = _3488 + ceil32(return_data.size) + 292
                                                    t = _3488 + 32
                                                    while idx < mem[_3488]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_3488 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_3488 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _3488 + ceil32(return_data.size) + (32 * mem[_3488]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4068 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4068] = 30
                                                    mem[_4068 + 32] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    call distributionPoolAddress with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor26.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _4134 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4134] = 38
                                                    mem[_4134 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4134 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                else:
                                                    if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                                        revert with 0, 17
                                                    if not balanceOf[address(this.address)]:
                                                        revert with 0, 18
                                                    if balanceOf[address(this.address)] * liquidityPoolFee / balanceOf[address(this.address)] != liquidityPoolFee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 289] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 321] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 353] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 385] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 417] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 449] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2 > balanceOf[address(this.address)] * liquidityPoolFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513] = this.address
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 577] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 545] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 36
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve from the zero add'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                           len ceil32(return_data.size) + 132
                                                    if not uniswapV2RouterAddress:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 34
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve to the zero addre'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                           len ceil32(return_data.size) + 132
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                    emit Approval(mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 741] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 773
                                                    t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = this.address
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 709] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + -mem[64] + 833]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3098 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3098] = 30
                                                    mem[_3098 + 32] = 'SafeMath: subtraction overflow'
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
                                                    allowance[address(this.address)][stor14].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                    emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                    mem[mem[64] + 68] = 0
                                                    mem[mem[64] + 100] = 0
                                                    mem[mem[64] + 132] = 0
                                                    mem[mem[64] + 164] = block.timestamp
                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    mem[mem[64] + 32] = 0
                                                    mem[mem[64] + 64] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                                                    mem[0] = this.address
                                                    mem[32] = 0
                                                    _3486 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_3486 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_3486]:
                                                        revert with 0, 50
                                                    mem[_3486 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[_3486 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3486 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_3486]:
                                                        revert with 0, 50
                                                    mem[_3486 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                    emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                    mem[_3486 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3486 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)]
                                                    mem[_3486 + ceil32(return_data.size) + 132] = 0
                                                    mem[_3486 + ceil32(return_data.size) + 164] = 160
                                                    mem[_3486 + ceil32(return_data.size) + 260] = mem[_3486]
                                                    idx = 0
                                                    s = _3486 + ceil32(return_data.size) + 292
                                                    t = _3486 + 32
                                                    while idx < mem[_3486]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_3486 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_3486 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _3486 + ceil32(return_data.size) + (32 * mem[_3486]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4067 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4067] = 30
                                                    mem[_4067 + 32] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    call distributionPoolAddress with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor26.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _4131 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4131] = 38
                                                    mem[_4131 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4131 + 70 len 26]
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
                                                mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 96
                                                mem[mem[64] + 100] = mem[128]
                                                mem[mem[64] + 132 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                if ceil32(mem[128]) > mem[128]:
                                                    mem[mem[128] + mem[64] + 132] = 0
                                                require ext_code.size(nodeRewardManagementAddress)
                                                call nodeRewardManagementAddress.0x90219732 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 96, 0, mem[128], mem[mem[64] + 132 len ceil32(mem[128])]
                                            else:
                                                if balanceOf[address(this.address)] and rewardsFee > -1 / balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if not balanceOf[address(this.address)]:
                                                    revert with 0, 18
                                                if balanceOf[address(this.address)] * rewardsFee / balanceOf[address(this.address)] != rewardsFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = 26
                                                mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 161] = 'SafeMath: division by zero'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not distributionPoolAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 193] = 38
                                                mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 225 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if balanceOf[address(this.address)] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                0
                                                if balanceOf[address(this.address)] < balanceOf[address(this.address)] * rewardsFee / 100:
                                                    revert with 0, 17
                                                balanceOf[address(this.address)] -= balanceOf[address(this.address)] * rewardsFee / 100
                                                if balanceOf[stor17] > !(balanceOf[address(this.address)] * rewardsFee / 100):
                                                    revert with 0, 17
                                                if balanceOf[stor17] + (balanceOf[address(this.address)] * rewardsFee / 100) < balanceOf[stor17]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor17] += balanceOf[address(this.address)] * rewardsFee / 100
                                                emit Transfer((balanceOf[address(this.address)] * rewardsFee / 100), this.address, distributionPoolAddress);
                                                if not balanceOf[address(this.address)]:
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 289] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 321] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 353] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 385] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 417] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 449] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513] = this.address
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 577] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 545] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 36
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve from the zero add'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                           len ceil32(return_data.size) + 132
                                                    if not uniswapV2RouterAddress:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 34
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve to the zero addre'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                           len ceil32(return_data.size) + 132
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0
                                                    emit Approval(mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 741] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 773
                                                    t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = this.address
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 709] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + -mem[64] + 833]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3097 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3097] = 30
                                                    mem[_3097 + 32] = 'SafeMath: subtraction overflow'
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
                                                    _3484 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_3484 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_3484]:
                                                        revert with 0, 50
                                                    mem[_3484 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[_3484 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3484 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_3484]:
                                                        revert with 0, 50
                                                    mem[_3484 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                    emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                    mem[_3484 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3484 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)]
                                                    mem[_3484 + ceil32(return_data.size) + 132] = 0
                                                    mem[_3484 + ceil32(return_data.size) + 164] = 160
                                                    mem[_3484 + ceil32(return_data.size) + 260] = mem[_3484]
                                                    idx = 0
                                                    s = _3484 + ceil32(return_data.size) + 292
                                                    t = _3484 + 32
                                                    while idx < mem[_3484]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_3484 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, mem[_3484 + ceil32(return_data.size) + 260 len (32 * mem[_3484]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_3484 + ceil32(return_data.size) + 96] = 30
                                                    mem[_3484 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    call distributionPoolAddress with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor26.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    mem[_3484 + ceil32(return_data.size) + 160] = 38
                                                    mem[_3484 + ceil32(return_data.size) + 192 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
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
                                                    mem[_3484 + ceil32(return_data.size) + 256] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                                    mem[_3484 + ceil32(return_data.size) + 260] = msg.sender
                                                    mem[_3484 + ceil32(return_data.size) + 292] = 96
                                                    mem[_3484 + ceil32(return_data.size) + 356] = mem[128]
                                                    mem[_3484 + ceil32(return_data.size) + 388 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[mem[128] + _3484 + ceil32(return_data.size) + 388] = 0
                                                    require ext_code.size(nodeRewardManagementAddress)
                                                    call nodeRewardManagementAddress.0x90219732 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 96, 0, mem[128], mem[_3484 + ceil32(return_data.size) + 388 len ceil32(mem[128])]
                                                else:
                                                    if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                                        revert with 0, 17
                                                    if not balanceOf[address(this.address)]:
                                                        revert with 0, 18
                                                    if balanceOf[address(this.address)] * liquidityPoolFee / balanceOf[address(this.address)] != liquidityPoolFee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 289] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 321] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 353] = 26
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 385] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 417] = 30
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 449] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2 > balanceOf[address(this.address)] * liquidityPoolFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481] = 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513] = this.address
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 577] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 545] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 36
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve from the zero add'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                           len ceil32(return_data.size) + 132
                                                    if not uniswapV2RouterAddress:
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 34
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve to the zero addre'
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                           len ceil32(return_data.size) + 132
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                    emit Approval(mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 0
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 160
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 741] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 773
                                                    t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513
                                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = this.address
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 709] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + -mem[64] + 833]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3096 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3096] = 30
                                                    mem[_3096 + 32] = 'SafeMath: subtraction overflow'
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
                                                    allowance[address(this.address)][stor14].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                    emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                    mem[mem[64] + 68] = 0
                                                    mem[mem[64] + 100] = 0
                                                    mem[mem[64] + 132] = 0
                                                    mem[mem[64] + 164] = block.timestamp
                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    mem[mem[64] + 32] = 0
                                                    mem[mem[64] + 64] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                                                    mem[0] = this.address
                                                    mem[32] = 0
                                                    _3482 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_3482 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_3482]:
                                                        revert with 0, 50
                                                    mem[_3482 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[_3482 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3482 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_3482]:
                                                        revert with 0, 50
                                                    mem[_3482 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                    emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                    mem[_3482 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3482 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)]
                                                    mem[_3482 + ceil32(return_data.size) + 132] = 0
                                                    mem[_3482 + ceil32(return_data.size) + 164] = 160
                                                    mem[_3482 + ceil32(return_data.size) + 260] = mem[_3482]
                                                    idx = 0
                                                    s = _3482 + ceil32(return_data.size) + 292
                                                    t = _3482 + 32
                                                    while idx < mem[_3482]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_3482 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_3482 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _3482 + ceil32(return_data.size) + (32 * mem[_3482]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4065 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4065] = 30
                                                    mem[_4065 + 32] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    call distributionPoolAddress with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor26.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _4125 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4125] = 38
                                                    mem[_4125 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4125 + 70 len 26]
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
                                                    mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 96
                                                    mem[mem[64] + 100] = mem[128]
                                                    mem[mem[64] + 132 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[mem[128] + mem[64] + 132] = 0
                                                    require ext_code.size(nodeRewardManagementAddress)
                                                    call nodeRewardManagementAddress.0x90219732 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 96, 0, mem[128], mem[mem[64] + 132 len ceil32(mem[128])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xcf8e2f8e(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xe12e3ca5(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0xcf8e2f8e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == bool(cd[36])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor30[address(cd[4])] = uint8(bool(cd[36]))
                        else:
                            if unknown_0xd79779b2(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                return totalReleased[address(cd[4])]
                            if unknown_0xd8929342(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 64
                                require cd[4] == address(cd[4])
                                require cd[36] == bool(cd[36])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                stor29[address(cd[4])] = uint8(bool(cd[36]))
                            else:
                                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 64
                                    require cd[4] == address(cd[4])
                                    require cd[36] == address(cd[36])
                                    return allowance[address(cd[4])][address(cd[36])].field_0
                                require unknown_0xde89c0ca(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.0x2872e38c with:
                                     gas gas_remaining wei
                                    args cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    if unknown_0xe12e3ca5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == bool(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor32 = uint8(bool(cd[4]))
                    if unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalReleased
                    if uint32(call.func_hash) >> 224 != unknown_0xee1afdbf(?????):
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
                        else:
                            if unknown_0xf74c9934(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                staticcall nodeRewardManagementAddress.0x4491a7e4 with:
                                        gas gas_remaining wei
                                       args address(cd[4])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                            require unknown_0xfb0a7494(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            nodeRewardManagementAddress = address(cd[4])
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'SENDER CAN'T BE ZERO'
                    mem[132] = msg.sender
                    staticcall nodeRewardManagementAddress.0x41ac82b0 with:
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
                    staticcall nodeRewardManagementAddress.0x5759fb02 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _404 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _458 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _404 + _458 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_458)] = mem[ceil32(return_data.size) + _404 + 160 len ceil32(_458)]
                    if ceil32(_458) > _458:
                        mem[_458 + (2 * ceil32(return_data.size)) + 160] = 0
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _458
                    mem[mem[64] + 64 len ceil32(_458)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_458)]
                    if ceil32(_458) > _458:
                        mem[_458 + mem[64] + 64] = 0
                    return Array(len=_458, data=mem[mem[64] + 64 len ceil32(_458)])
                if unknown_0xb96392c1(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xa538ddf2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return futurUsePoolAddress
                    if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                        if unknown_0xa99bc409(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stakingPoolAddress = address(cd[4])
                        if unknown_0xab574761(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return futurFee
                        require unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor31[cd[4]])
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if stor29[address(msg.sender)]:
                        revert with 0, 'Blacklisted address'
                    if stor29[address(cd[4])]:
                        revert with 0, 'Blacklisted address'
                    if owner != msg.sender:
                        if owner != address(cd[4]):
                            if msg.sender != this.address:
                                if address(cd[4]) != this.address:
                                    if not stor30[address(msg.sender)]:
                                        if not stor30[address(cd[4])]:
                                            if cd[36] > maxTxAmount:
                                                revert with 0, 'Please transfer under the max transaction amount'
                                            if stor32:
                                                if uniswapV2PairAddress == msg.sender:
                                                    stor29[address(cd[4])] = 1
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: transfer to the zero address'
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
                if unknown_0xb96392c1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    staticcall nodeRewardManagementAddress.0x619a635e with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0xbdf24a53(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'SENDER CAN'T BE ZERO'
                    mem[132] = msg.sender
                    staticcall nodeRewardManagementAddress.0x41ac82b0 with:
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
                    staticcall nodeRewardManagementAddress.0xc92819ce with:
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
                    _428 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _376 + _428 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_428)] = mem[ceil32(return_data.size) + _376 + 160 len ceil32(_428)]
                    if ceil32(_428) > _428:
                        mem[_428 + (2 * ceil32(return_data.size)) + 160] = 0
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _428
                    mem[mem[64] + 64 len ceil32(_428)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_428)]
                    if ceil32(_428) > _428:
                        mem[_428 + mem[64] + 64] = 0
                    return Array(len=_428, data=mem[mem[64] + 64 len ceil32(_428)])
                if uint32(call.func_hash) >> 224 != unknown_0xc0b37af3(?????):
                    if unknown_0xc5ca7d6d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return distributionPoolAddress
                    require unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return shares[address(cd[4])]
                require not msg.value
                require calldata.size - 4 >= 64
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
                if ('cd', 4).length <= 3:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                if ('cd', 4).length >= 32:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                if not msg.sender:
                    revert with 0, 'NODE CREATION:  creation from the zero address'
                if stor29[address(msg.sender)]:
                    revert with 0, 'NODE CREATION: Blacklisted address'
                if futurUsePoolAddress == msg.sender:
                    revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                if distributionPoolAddress == msg.sender:
                    revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                if cd[36] < 1:
                    revert with 0, 'Stake time must be between 1 and 30 days'
                if cd[36] > 30:
                    revert with 0, 'Stake time must be between 1 and 30 days'
                if cd[36] < 1:
                    revert with 0, 17
                if cd[36] - 1 >= stor28.length:
                    revert with 0, 50
                staticcall nodeRewardManagementAddress.0xf1fec2b8 with:
                        gas gas_remaining wei
                mem[ceil32(ceil32(('cd', 4).length)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > !stor28[cd[36]]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] < ext_call.return_data[0] + stor28[cd[36]]:
                    revert with 0, 'NODE CREATION: Balance too low for creation.'
                if balanceOf[address(this.address)] < swapTokensAmount:
                    if ext_call.return_data[0] > !stor28[cd[36]]:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if ext_call.return_data[0] + stor28[cd[36]] > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 199 len 26] >> 48,
                                    0
                    if balanceOf[address(msg.sender)] < ext_call.return_data[0] + stor28[cd[36]]:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - ext_call.return_data[0] - stor28[cd[36]]
                    if balanceOf[this.address] > !(ext_call.return_data[0] + stor28[cd[36]]):
                        revert with 0, 17
                    if balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]]
                    emit Transfer((ext_call.return_data[0] + stor28[cd[36]]), msg.sender, this.address);
                    if stor35 == -1:
                        revert with 0, 17
                    stor35++
                    if block.timestamp > !(24 * 3600 * cd[36]):
                        revert with 0, 17
                    sub_2403bd77[address(msg.sender)].field_0++
                    sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_0 = block.timestamp
                    sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_256 = block.timestamp + (24 * 3600 * cd[36])
                    sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_512 = ext_call.return_data[0]
                    sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_768 = stor35
                    require ext_code.size(nodeRewardManagementAddress)
                    call nodeRewardManagementAddress.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), 24 * 3600 * cd[36]
                else:
                    if not uint8(stor26.field_8):
                        if ext_call.return_data[0] > !stor28[cd[36]]:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if ext_call.return_data[0] + stor28[cd[36]] > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 199 len 26] >> 48,
                                        0
                        if balanceOf[address(msg.sender)] < ext_call.return_data[0] + stor28[cd[36]]:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - ext_call.return_data[0] - stor28[cd[36]]
                        if balanceOf[this.address] > !(ext_call.return_data[0] + stor28[cd[36]]):
                            revert with 0, 17
                        if balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]]
                        emit Transfer((ext_call.return_data[0] + stor28[cd[36]]), msg.sender, this.address);
                        if stor35 == -1:
                            revert with 0, 17
                        stor35++
                        if block.timestamp > !(24 * 3600 * cd[36]):
                            revert with 0, 17
                        sub_2403bd77[address(msg.sender)].field_0++
                        sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_0 = block.timestamp
                        sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_256 = block.timestamp + (24 * 3600 * cd[36])
                        sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_512 = ext_call.return_data[0]
                        sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_768 = stor35
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), 24 * 3600 * cd[36]
                    else:
                        if uint8(stor26.field_0):
                            if ext_call.return_data[0] > !stor28[cd[36]]:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if ext_call.return_data[0] + stor28[cd[36]] > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 199 len 26] >> 48,
                                            0
                            if balanceOf[address(msg.sender)] < ext_call.return_data[0] + stor28[cd[36]]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - ext_call.return_data[0] - stor28[cd[36]]
                            if balanceOf[this.address] > !(ext_call.return_data[0] + stor28[cd[36]]):
                                revert with 0, 17
                            if balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]]
                            emit Transfer((ext_call.return_data[0] + stor28[cd[36]]), msg.sender, this.address);
                            if stor35 == -1:
                                revert with 0, 17
                            stor35++
                            if block.timestamp > !(24 * 3600 * cd[36]):
                                revert with 0, 17
                            sub_2403bd77[address(msg.sender)].field_0++
                            sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_0 = block.timestamp
                            sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_256 = block.timestamp + (24 * 3600 * cd[36])
                            sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_512 = ext_call.return_data[0]
                            sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_768 = stor35
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), 24 * 3600 * cd[36]
                        else:
                            if owner == msg.sender:
                                if ext_call.return_data[0] > !stor28[cd[36]]:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if ext_call.return_data[0] + stor28[cd[36]] > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 199 len 26] >> 48,
                                                0
                                if balanceOf[address(msg.sender)] < ext_call.return_data[0] + stor28[cd[36]]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - ext_call.return_data[0] - stor28[cd[36]]
                                if balanceOf[this.address] > !(ext_call.return_data[0] + stor28[cd[36]]):
                                    revert with 0, 17
                                if balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]]
                                emit Transfer((ext_call.return_data[0] + stor28[cd[36]]), msg.sender, this.address);
                                if stor35 == -1:
                                    revert with 0, 17
                                stor35++
                                if block.timestamp > !(24 * 3600 * cd[36]):
                                    revert with 0, 17
                                sub_2403bd77[address(msg.sender)].field_0++
                                sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_0 = block.timestamp
                                sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_256 = block.timestamp + (24 * 3600 * cd[36])
                                sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_512 = ext_call.return_data[0]
                                sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_768 = stor35
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), 24 * 3600 * cd[36]
                            else:
                                if stor31[address(msg.sender)]:
                                    if ext_call.return_data[0] > !stor28[cd[36]]:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ext_call.return_data[0] + stor28[cd[36]] > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 199 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0] + stor28[cd[36]]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - ext_call.return_data[0] - stor28[cd[36]]
                                    if balanceOf[this.address] > !(ext_call.return_data[0] + stor28[cd[36]]):
                                        revert with 0, 17
                                    if balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]]
                                    emit Transfer((ext_call.return_data[0] + stor28[cd[36]]), msg.sender, this.address);
                                    if stor35 == -1:
                                        revert with 0, 17
                                    stor35++
                                    if block.timestamp > !(24 * 3600 * cd[36]):
                                        revert with 0, 17
                                    sub_2403bd77[address(msg.sender)].field_0++
                                    sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_0 = block.timestamp
                                    sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_256 = block.timestamp + (24 * 3600 * cd[36])
                                    sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_512 = ext_call.return_data[0]
                                    sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_768 = stor35
                                    require ext_code.size(nodeRewardManagementAddress)
                                    call nodeRewardManagementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), 24 * 3600 * cd[36]
                                else:
                                    uint8(stor26.field_0) = 1
                                    if balanceOf[address(this.address)]:
                                        if balanceOf[address(this.address)] and rewardsFee > -1 / balanceOf[address(this.address)]:
                                            revert with 0, 17
                                        if not balanceOf[address(this.address)]:
                                            revert with 0, 18
                                        if balanceOf[address(this.address)] * rewardsFee / balanceOf[address(this.address)] != rewardsFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = 26
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 161] = 'SafeMath: division by zero'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not distributionPoolAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 193] = 38
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 225 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if balanceOf[address(this.address)] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                        0
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * rewardsFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(this.address)] -= balanceOf[address(this.address)] * rewardsFee / 100
                                        if balanceOf[stor17] > !(balanceOf[address(this.address)] * rewardsFee / 100):
                                            revert with 0, 17
                                        if balanceOf[stor17] + (balanceOf[address(this.address)] * rewardsFee / 100) < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] += balanceOf[address(this.address)] * rewardsFee / 100
                                        emit Transfer((balanceOf[address(this.address)] * rewardsFee / 100), this.address, distributionPoolAddress);
                                        if balanceOf[address(this.address)]:
                                            if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if not balanceOf[address(this.address)]:
                                                revert with 0, 18
                                            if balanceOf[address(this.address)] * liquidityPoolFee / balanceOf[address(this.address)] != liquidityPoolFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 289] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 321] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 353] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 385] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 417] = 30
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 449] = 'SafeMath: subtraction overflow'
                                            if balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2 > balanceOf[address(this.address)] * liquidityPoolFee / 100:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                                revert with 0, 17
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481] = 2
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513] = this.address
                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 545] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 36
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve from the zero add'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                   len ceil32(return_data.size) + 132
                                            if not uniswapV2RouterAddress:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 34
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve to the zero addre'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                   len ceil32(return_data.size) + 132
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                            allowance[address(this.address)][stor14].field_255 = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                            emit Approval(mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 160
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 741] = 2
                                            idx = 0
                                            s = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 773
                                            t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513
                                            while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = this.address
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 709] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + -mem[64] + 833]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3101 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3101] = 30
                                            mem[_3101 + 32] = 'SafeMath: subtraction overflow'
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
                                            allowance[address(this.address)][stor14].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                            emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = 0
                                            mem[mem[64] + 164] = block.timestamp
                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args this.address, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                            emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                                            mem[0] = this.address
                                            mem[32] = 0
                                            _3490 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            mem[_3490 + 32 len 64] = call.data[calldata.size len 64]
                                            if 0 >= mem[_3490]:
                                                revert with 0, 50
                                            mem[_3490 + 32] = this.address
                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[_3490 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3490 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if 1 >= mem[_3490]:
                                                revert with 0, 50
                                            mem[_3490 + 64] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                            emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                            mem[_3490 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[_3490 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)]
                                            mem[_3490 + ceil32(return_data.size) + 132] = 0
                                            mem[_3490 + ceil32(return_data.size) + 164] = 160
                                            mem[_3490 + ceil32(return_data.size) + 260] = mem[_3490]
                                            idx = 0
                                            s = _3490 + ceil32(return_data.size) + 292
                                            t = _3490 + 32
                                            while idx < mem[_3490]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_3490 + ceil32(return_data.size) + 228] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, mem[_3490 + ceil32(return_data.size) + 260 len (32 * mem[_3490]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_3490 + ceil32(return_data.size) + 96] = 30
                                            mem[_3490 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor26.field_0) = 0
                                            if ext_call.return_data[0] > !stor28[cd[36]]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            mem[_3490 + ceil32(return_data.size) + 160] = 38
                                            mem[_3490 + ceil32(return_data.size) + 192 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if ext_call.return_data[0] + stor28[cd[36]] > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < ext_call.return_data[0] + stor28[cd[36]]:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - ext_call.return_data[0] - stor28[cd[36]]
                                            if balanceOf[this.address] > !(ext_call.return_data[0] + stor28[cd[36]]):
                                                revert with 0, 17
                                            if balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]]
                                            emit Transfer((ext_call.return_data[0] + stor28[cd[36]]), msg.sender, this.address);
                                            if stor35 == -1:
                                                revert with 0, 17
                                            stor35++
                                            mem[_3490 + ceil32(return_data.size) + 256] = block.timestamp
                                            if block.timestamp > !(24 * 3600 * cd[36]):
                                                revert with 0, 17
                                            mem[_3490 + ceil32(return_data.size) + 288] = block.timestamp + (24 * 3600 * cd[36])
                                            mem[_3490 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                            mem[_3490 + ceil32(return_data.size) + 352] = stor35
                                            sub_2403bd77[address(msg.sender)].field_0++
                                            sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_0 = block.timestamp
                                            sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_256 = block.timestamp + (24 * 3600 * cd[36])
                                            sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_512 = ext_call.return_data[0]
                                            sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_768 = stor35
                                            mem[_3490 + ceil32(return_data.size) + 384] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_3490 + ceil32(return_data.size) + 388] = msg.sender
                                            mem[_3490 + ceil32(return_data.size) + 420] = 96
                                            mem[_3490 + ceil32(return_data.size) + 484] = mem[128]
                                            mem[_3490 + ceil32(return_data.size) + 516 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _3490 + ceil32(return_data.size) + 516] = 0
                                            require ext_code.size(nodeRewardManagementAddress)
                                            call nodeRewardManagementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_3490 + ceil32(return_data.size) + 516 len ceil32(mem[128])]), 24 * 3600 * cd[36]
                                        else:
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 289] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 321] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 353] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 385] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 417] = 30
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 449] = 'SafeMath: subtraction overflow'
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481] = 2
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513] = this.address
                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 545] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 36
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve from the zero add'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                   len ceil32(return_data.size) + 132
                                            if not uniswapV2RouterAddress:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 34
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve to the zero addre'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                   len ceil32(return_data.size) + 132
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor14].field_0 = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0
                                            emit Approval(mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 160
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 741] = 2
                                            idx = 0
                                            s = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 773
                                            t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513
                                            while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = this.address
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 709] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + -mem[64] + 833]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3102 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3102] = 30
                                            mem[_3102 + 32] = 'SafeMath: subtraction overflow'
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
                                            _3492 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            mem[_3492 + 32 len 64] = call.data[calldata.size len 64]
                                            if 0 >= mem[_3492]:
                                                revert with 0, 50
                                            mem[_3492 + 32] = this.address
                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[_3492 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3492 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if 1 >= mem[_3492]:
                                                revert with 0, 50
                                            mem[_3492 + 64] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                            emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                            mem[_3492 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[_3492 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)]
                                            mem[_3492 + ceil32(return_data.size) + 132] = 0
                                            mem[_3492 + ceil32(return_data.size) + 164] = 160
                                            mem[_3492 + ceil32(return_data.size) + 260] = mem[_3492]
                                            idx = 0
                                            s = _3492 + ceil32(return_data.size) + 292
                                            t = _3492 + 32
                                            while idx < mem[_3492]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_3492 + ceil32(return_data.size) + 196] = this.address
                                            mem[_3492 + ceil32(return_data.size) + 228] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3492 + ceil32(return_data.size) + (32 * mem[_3492]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4070 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4070] = 30
                                            mem[_4070 + 32] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor26.field_0) = 0
                                            if ext_call.return_data[0] > !stor28[cd[36]]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            _4156 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4156] = 38
                                            mem[_4156 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if ext_call.return_data[0] + stor28[cd[36]] > balanceOf[address(msg.sender)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 38
                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4156 + 70 len 26]
                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                            if balanceOf[address(msg.sender)] < ext_call.return_data[0] + stor28[cd[36]]:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - ext_call.return_data[0] - stor28[cd[36]]
                                            if balanceOf[this.address] > !(ext_call.return_data[0] + stor28[cd[36]]):
                                                revert with 0, 17
                                            if balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]]
                                            emit Transfer((ext_call.return_data[0] + stor28[cd[36]]), msg.sender, this.address);
                                            if stor35 == -1:
                                                revert with 0, 17
                                            stor35++
                                            mem[0] = msg.sender
                                            mem[32] = 34
                                            _4280 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_4280] = block.timestamp
                                            if block.timestamp > !(24 * 3600 * cd[36]):
                                                revert with 0, 17
                                            mem[_4280 + 32] = block.timestamp + (24 * 3600 * cd[36])
                                            mem[_4280 + 64] = ext_call.return_data[0]
                                            mem[_4280 + 96] = stor35
                                            sub_2403bd77[address(msg.sender)].field_0++
                                            sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_0 = block.timestamp
                                            sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_256 = block.timestamp + (24 * 3600 * cd[36])
                                            sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_512 = ext_call.return_data[0]
                                            sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_768 = stor35
                                            mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = 96
                                            mem[mem[64] + 100] = mem[128]
                                            mem[mem[64] + 132 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + mem[64] + 132] = 0
                                            require ext_code.size(nodeRewardManagementAddress)
                                            call nodeRewardManagementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[mem[64] + 132 len ceil32(mem[128])]), 24 * 3600 * cd[36]
                                    else:
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = 26
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 161] = 'SafeMath: division by zero'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not distributionPoolAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 193] = 38
                                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 225 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if 0 > balanceOf[address(this.address)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                        0
                                        if balanceOf[address(this.address)] < 0:
                                            revert with 0, 17
                                        if balanceOf[stor17] > -1:
                                            revert with 0, 17
                                        if balanceOf[stor17] < balanceOf[stor17]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor17] = balanceOf[stor17]
                                        emit Transfer(0, this.address, distributionPoolAddress);
                                        if not balanceOf[address(this.address)]:
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 289] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 321] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 353] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 385] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 417] = 30
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 449] = 'SafeMath: subtraction overflow'
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481] = 2
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513] = this.address
                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 545] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 36
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve from the zero add'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                   len ceil32(return_data.size) + 132
                                            if not uniswapV2RouterAddress:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 34
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve to the zero addre'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                   len ceil32(return_data.size) + 132
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor14].field_0 = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0
                                            emit Approval(mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 160
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 741] = 2
                                            idx = 0
                                            s = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 773
                                            t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513
                                            while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = this.address
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 709] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + -mem[64] + 833]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3104 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3104] = 30
                                            mem[_3104 + 32] = 'SafeMath: subtraction overflow'
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
                                            _3496 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            mem[_3496 + 32 len 64] = call.data[calldata.size len 64]
                                            if 0 >= mem[_3496]:
                                                revert with 0, 50
                                            mem[_3496 + 32] = this.address
                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[_3496 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3496 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if 1 >= mem[_3496]:
                                                revert with 0, 50
                                            mem[_3496 + 64] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                            emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                            mem[_3496 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[_3496 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)]
                                            mem[_3496 + ceil32(return_data.size) + 132] = 0
                                            mem[_3496 + ceil32(return_data.size) + 164] = 160
                                            mem[_3496 + ceil32(return_data.size) + 260] = mem[_3496]
                                            idx = 0
                                            s = _3496 + ceil32(return_data.size) + 292
                                            t = _3496 + 32
                                            while idx < mem[_3496]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_3496 + ceil32(return_data.size) + 196] = this.address
                                            mem[_3496 + ceil32(return_data.size) + 228] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3496 + ceil32(return_data.size) + (32 * mem[_3496]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4072 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4072] = 30
                                            mem[_4072 + 32] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor26.field_0) = 0
                                            if ext_call.return_data[0] > !stor28[cd[36]]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            _4162 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4162] = 38
                                            mem[_4162 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if ext_call.return_data[0] + stor28[cd[36]] > balanceOf[address(msg.sender)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 38
                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4162 + 70 len 26]
                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                            if balanceOf[address(msg.sender)] < ext_call.return_data[0] + stor28[cd[36]]:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - ext_call.return_data[0] - stor28[cd[36]]
                                            if balanceOf[this.address] > !(ext_call.return_data[0] + stor28[cd[36]]):
                                                revert with 0, 17
                                            if balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]]
                                            emit Transfer((ext_call.return_data[0] + stor28[cd[36]]), msg.sender, this.address);
                                            if stor35 == -1:
                                                revert with 0, 17
                                            stor35++
                                            mem[0] = msg.sender
                                            mem[32] = 34
                                            _4284 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_4284] = block.timestamp
                                            if block.timestamp > !(24 * 3600 * cd[36]):
                                                revert with 0, 17
                                            mem[_4284 + 32] = block.timestamp + (24 * 3600 * cd[36])
                                            mem[_4284 + 64] = ext_call.return_data[0]
                                            mem[_4284 + 96] = stor35
                                        else:
                                            if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if not balanceOf[address(this.address)]:
                                                revert with 0, 18
                                            if balanceOf[address(this.address)] * liquidityPoolFee / balanceOf[address(this.address)] != liquidityPoolFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 289] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 321] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 353] = 26
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 385] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 417] = 30
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 449] = 'SafeMath: subtraction overflow'
                                            if balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2 > balanceOf[address(this.address)] * liquidityPoolFee / 100:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                                revert with 0, 17
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481] = 2
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513] = this.address
                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 545] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 36
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve from the zero add'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                   len ceil32(return_data.size) + 132
                                            if not uniswapV2RouterAddress:
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = 32
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 34
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC20: approve to the zero addre'
                                                mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577
                                                   len ceil32(return_data.size) + 132
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                            allowance[address(this.address)][stor14].field_255 = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                            emit Approval(mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 581] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 613] = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 645] = 160
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 741] = 2
                                            idx = 0
                                            s = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 773
                                            t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 513
                                            while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 481]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 677] = this.address
                                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 709] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + -mem[64] + 833]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3103 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3103] = 30
                                            mem[_3103 + 32] = 'SafeMath: subtraction overflow'
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
                                            allowance[address(this.address)][stor14].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                            emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = 0
                                            mem[mem[64] + 164] = block.timestamp
                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args this.address, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                            emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                                            mem[0] = this.address
                                            mem[32] = 0
                                            _3494 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            mem[_3494 + 32 len 64] = call.data[calldata.size len 64]
                                            if 0 >= mem[_3494]:
                                                revert with 0, 50
                                            mem[_3494 + 32] = this.address
                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[_3494 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3494 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if 1 >= mem[_3494]:
                                                revert with 0, 50
                                            mem[_3494 + 64] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                            emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                            mem[_3494 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[_3494 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)]
                                            mem[_3494 + ceil32(return_data.size) + 132] = 0
                                            mem[_3494 + ceil32(return_data.size) + 164] = 160
                                            mem[_3494 + ceil32(return_data.size) + 260] = mem[_3494]
                                            idx = 0
                                            s = _3494 + ceil32(return_data.size) + 292
                                            t = _3494 + 32
                                            while idx < mem[_3494]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_3494 + ceil32(return_data.size) + 196] = this.address
                                            mem[_3494 + ceil32(return_data.size) + 228] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3494 + ceil32(return_data.size) + (32 * mem[_3494]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4071 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4071] = 30
                                            mem[_4071 + 32] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor26.field_0) = 0
                                            if ext_call.return_data[0] > !stor28[cd[36]]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            _4159 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4159] = 38
                                            mem[_4159 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if ext_call.return_data[0] + stor28[cd[36]] > balanceOf[address(msg.sender)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 38
                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4159 + 70 len 26]
                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                            if balanceOf[address(msg.sender)] < ext_call.return_data[0] + stor28[cd[36]]:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - ext_call.return_data[0] - stor28[cd[36]]
                                            if balanceOf[this.address] > !(ext_call.return_data[0] + stor28[cd[36]]):
                                                revert with 0, 17
                                            if balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0] + stor28[cd[36]]
                                            emit Transfer((ext_call.return_data[0] + stor28[cd[36]]), msg.sender, this.address);
                                            if stor35 == -1:
                                                revert with 0, 17
                                            stor35++
                                            mem[0] = msg.sender
                                            mem[32] = 34
                                            _4282 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_4282] = block.timestamp
                                            if block.timestamp > !(24 * 3600 * cd[36]):
                                                revert with 0, 17
                                            mem[_4282 + 32] = block.timestamp + (24 * 3600 * cd[36])
                                            mem[_4282 + 64] = ext_call.return_data[0]
                                            mem[_4282 + 96] = stor35
                                        sub_2403bd77[address(msg.sender)].field_0++
                                        sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_0 = block.timestamp
                                        sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_256 = block.timestamp + (24 * 3600 * cd[36])
                                        sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_512 = ext_call.return_data[0]
                                        sub_2403bd77[address(msg.sender)][sub_2403bd77[address(msg.sender)].field_0].field_768 = stor35
                                        mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 96
                                        mem[mem[64] + 100] = mem[128]
                                        mem[mem[64] + 132 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                        if ceil32(mem[128]) > mem[128]:
                                            mem[mem[128] + mem[64] + 132] = 0
                                        require ext_code.size(nodeRewardManagementAddress)
                                        call nodeRewardManagementAddress.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[128], data=mem[mem[64] + 132 len ceil32(mem[128])]), 24 * 3600 * cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
