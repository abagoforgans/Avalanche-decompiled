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
address nodeRewardManagementAddress;
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
uint256 maxTxAmount;
mapping of uint8 stor28;
mapping of uint8 stor29;

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
    nodeRewardManagementAddress = arg1
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
    stor28[address(arg1)] = uint8(arg2)
}

function getNodePrice() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xf1fec2b8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getGasDistri() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xdec14726 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDistriCount() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xfb10d6fb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalRewardStaked() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x8a327eaa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalNodesCreated() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xb8527aef with:
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
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0xef9bb988 with:
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

function getAutoDistri() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x85c44d9d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x4491a7e4 with:
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
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0xdab0882a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x619a635e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
                    'TKN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor29[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor29[address(arg1)] = uint8(arg2)
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
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x41ac82b0 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x619a635e with:
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor28[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor28[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if owner != msg.sender:
        if owner != arg1:
            if msg.sender != this.address:
                if arg1 != this.address:
                    if arg2 > maxTxAmount:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please transfer under the max transaction amount'
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
    if stor28[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor28[address(arg2)]:
        revert with 0, 'Blacklisted address'
    if owner != arg1:
        if owner != arg2:
            if arg1 != this.address:
                if arg2 != this.address:
                    if arg3 > maxTxAmount:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please transfer under the max transaction amount'
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
    require ext_code.size(nodeRewardManagementAddress)
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
    mem[ceil32(return_data.size) + 96] = 0x334de3a200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x334de3a2 with:
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
    require ext_code.size(nodeRewardManagementAddress)
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
    require ext_code.size(nodeRewardManagementAddress)
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
    require ext_code.size(nodeRewardManagementAddress)
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
    require ext_code.size(nodeRewardManagementAddress)
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
    require ext_code.size(nodeRewardManagementAddress)
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
    require ext_code.size(nodeRewardManagementAddress)
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
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xa6e15cc4 with:
            gas gas_remaining wei
           args msg.sender, arg1
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
                mem[ceil32(return_data.size) + 160] = 2
                mem[ceil32(return_data.size) + 192] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.0x73b295c2 with:
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
                staticcall uniswapV2RouterAddress.0x73b295c2 with:
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
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x6edb7002 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x619a635e with:
            gas gas_remaining wei
           args msg.sender
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
                mem[ceil32(return_data.size) + 160] = 2
                mem[ceil32(return_data.size) + 192] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.0x73b295c2 with:
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
                staticcall uniswapV2RouterAddress.0x73b295c2 with:
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
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x5c298b1c with:
         gas gas_remaining wei
        args msg.sender
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
    require arg1 + arg1.length + 36 <= calldata.size
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
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xf1fec2b8 with:
            gas gas_remaining wei
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
        require ext_code.size(nodeRewardManagementAddress)
        call nodeRewardManagementAddress.0x12b8603f with:
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
            require ext_code.size(nodeRewardManagementAddress)
            call nodeRewardManagementAddress.0x12b8603f with:
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
                require ext_code.size(nodeRewardManagementAddress)
                call nodeRewardManagementAddress.0x12b8603f with:
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
                    require ext_code.size(nodeRewardManagementAddress)
                    call nodeRewardManagementAddress.0x12b8603f with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all])
                else:
                    if stor29[address(msg.sender)]:
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
                        call nodeRewardManagementAddress.0x12b8603f with:
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
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257] = 30
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call futurUsePoolAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not balanceOf[this.address]:
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 26
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 353] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385] = 26
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = 2
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor14].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 545] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 549] = 0
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 160
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741
                                t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481
                                while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709 len (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 545] = 30
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call distributionPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 30
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 38
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if 0 > balanceOf[address(this.address)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 743 len 26] >> 48,
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
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1061] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1125] = 160
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253
                                    t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1157] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
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
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, 0, 0, 0, 0, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        0,
                                    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1121] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1217] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1185] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1221] = balanceOf[this.address]
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1253] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1285] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413
                                    t = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153
                                    while idx < mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1121]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1317] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1349] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381 len (32 * mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1121]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
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
                                    call nodeRewardManagementAddress.0x12b8603f with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=arg1.length, data=arg1[all])
                                else:
                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not balanceOf[this.address]:
                                        revert with 0, 18
                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 26
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 833] = 26
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 865] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 897] = 30
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 929] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    allowance[address(this.address)][stor14].field_255 = 0
                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1061] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253
                                    t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 30
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 'SafeMath: subtraction overflow'
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
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1121 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1221] = balanceOf[this.address]
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413
                                    t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1349] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1221] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1253] = 37
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1285] = 'ERC20: transfer from the zero ad'
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1317] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217
                                           len (5 * ceil32(return_data.size)) + 132
                                    if not this.address:
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1221] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1253] = 35
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1285] = 'ERC20: transfer to the zero addr'
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1317] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217
                                           len (5 * ceil32(return_data.size)) + 132
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1313] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1317] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1349] = 38
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1419] = 0
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1313
                                           len (5 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1313] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1317] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1349] = 27
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1313
                                           len (5 * ceil32(return_data.size)) + 100
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1317] = msg.sender
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1349] = 64
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381] = arg1.length
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                                    if ceil32(arg1.length) > arg1.length:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413] = 0
                                    require ext_code.size(nodeRewardManagementAddress)
                                    call nodeRewardManagementAddress.0x12b8603f with:
                                         gas gas_remaining wei
                                        args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1317 len ceil32(arg1.length) + (5 * ceil32(return_data.size)) + 96]
                            else:
                                if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not balanceOf[this.address]:
                                    revert with 0, 18
                                if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 26
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 353] = 'SafeMath: division by zero'
                                if balanceOf[this.address] * rewardsFee / 100:
                                    if balanceOf[this.address] * rewardsFee / 100 and stor24 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 17
                                    if not balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 18
                                    if balanceOf[this.address] * rewardsFee / 100 * stor24 / balanceOf[this.address] * rewardsFee / 100 != stor24:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385] = 26
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                    emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor24 / 100), this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 545] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 549] = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741
                                    t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481
                                    while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address] * rewardsFee / 100 * stor24 / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709 len (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 545] = 30
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 707] = 0
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609
                                           len (5 * ceil32(return_data.size)) + 100
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 30
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * rewardsFee / 100 * stor24 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 771] = 0
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673
                                           len (5 * ceil32(return_data.size)) + 100
                                    if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor24 / 100:
                                        revert with 0, 17
                                    if not this.address:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 37
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 'ERC20: transfer from the zero ad'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673
                                           len (5 * ceil32(return_data.size)) + 132
                                    if not distributionPoolAddress:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 35
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 'ERC20: transfer to the zero addr'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673
                                           len (5 * ceil32(return_data.size)) + 132
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 38
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) > balanceOf[address(this.address)]:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 38
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 743 len 26]
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 875] = 0
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769
                                           len (5 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100):
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                    if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)):
                                        revert with 0, 17
                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) < balanceOf[stor17]:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 27
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769
                                           len (5 * ceil32(return_data.size)) + 100
                                    balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)), this.address, distributionPoolAddress);
                                    if not balanceOf[this.address]:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 26
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 833] = 26
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 865] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 897] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 929] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 2
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1061] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253
                                        t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1219] = 0
                                            revert with 0, 
                                                        'SafeMath: subtraction overflow',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1219 len (9 * ceil32(return_data.size)) + 2]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 
                                                        'ERC20: approve from the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 
                                                        'ERC20: approve to the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, 0, 0, 0, 0, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1317 len 9 * ceil32(return_data.size)]
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1121 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1121] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = 0
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1121 len (13 * ceil32(return_data.size)) + 96],
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1217] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1221] = balanceOf[this.address]
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1381] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413
                                        t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1349] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 
                                                        'ERC20: transfer from the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1349 len 17 * ceil32(return_data.size)]
                                        if not this.address:
                                            revert with 0, 
                                                        'ERC20: transfer to the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1349 len 17 * ceil32(return_data.size)]
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1419] = 0
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1419 len (17 * ceil32(return_data.size)) + 26]
                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len 17 * ceil32(return_data.size)]
                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) > arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413] = 0
                                        require ext_code.size(nodeRewardManagementAddress)
                                        call nodeRewardManagementAddress.0x12b8603f with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len (17 * ceil32(return_data.size)) + ceil32(arg1.length)])
                                    else:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 32
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 33
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837] = 'SafeMath: multiplication overflo'
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 869] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769
                                               len (5 * ceil32(return_data.size)) + 132
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 26
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 833] = 26
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 865] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 897] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 929] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 965] = 32
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 997] = 30
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1029] = 'SafeMath: subtraction overflow'
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1059] = 0
                                            revert with memory
                                              from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961
                                               len (5 * ceil32(return_data.size)) + 100
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 2
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor14].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1061] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253
                                        t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1219] = 0
                                            revert with 0, 
                                                        'SafeMath: subtraction overflow',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1219 len (9 * ceil32(return_data.size)) + 2]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 
                                                        'ERC20: approve from the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 
                                                        'ERC20: approve to the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                        allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1317 len 9 * ceil32(return_data.size)]
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1121 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1121] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1121 len (13 * ceil32(return_data.size)) + 96],
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1217] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1221] = balanceOf[this.address]
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413
                                        t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
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
                                        call nodeRewardManagementAddress.0x12b8603f with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=arg1.length, data=arg1[all])
                                else:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385] = 26
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 545] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 549] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741
                                    t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481
                                    while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709 len (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 545] = 30
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 707] = 0
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609
                                           len (5 * ceil32(return_data.size)) + 100
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 30
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = 'SafeMath: subtraction overflow'
                                    if 0 > balanceOf[this.address] * rewardsFee / 100:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 771] = 0
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673
                                           len (5 * ceil32(return_data.size)) + 100
                                    if balanceOf[this.address] * rewardsFee / 100 < 0:
                                        revert with 0, 17
                                    if not this.address:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 37
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 'ERC20: transfer from the zero ad'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673
                                           len (5 * ceil32(return_data.size)) + 132
                                    if not distributionPoolAddress:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 35
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 'ERC20: transfer to the zero addr'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673
                                           len (5 * ceil32(return_data.size)) + 132
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 38
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 38
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 743 len 26]
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 875] = 0
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769
                                           len (5 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(this.address)] < balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(this.address)] -= balanceOf[this.address] * rewardsFee / 100
                                    if balanceOf[stor17] > !(balanceOf[this.address] * rewardsFee / 100):
                                        revert with 0, 17
                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) < balanceOf[stor17]:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 27
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769
                                           len (5 * ceil32(return_data.size)) + 100
                                    balanceOf[stor17] += balanceOf[this.address] * rewardsFee / 100
                                    emit Transfer((balanceOf[this.address] * rewardsFee / 100), this.address, distributionPoolAddress);
                                    if not balanceOf[this.address]:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 26
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 833] = 26
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 865] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 897] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 929] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 2
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1061] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253
                                        t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1219] = 0
                                            revert with 0, 
                                                        'SafeMath: subtraction overflow',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1219 len (9 * ceil32(return_data.size)) + 2]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 
                                                        'ERC20: approve from the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 
                                                        'ERC20: approve to the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, 0, 0, 0, 0, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1317 len 9 * ceil32(return_data.size)]
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1121 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1121] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = 0
                                    else:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 32
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 33
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837] = 'SafeMath: multiplication overflo'
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 869] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769
                                               len (5 * ceil32(return_data.size)) + 132
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 26
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 833] = 26
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 865] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 897] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 929] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 965] = 32
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 997] = 30
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1029] = 'SafeMath: subtraction overflow'
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1059] = 0
                                            revert with memory
                                              from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961
                                               len (5 * ceil32(return_data.size)) + 100
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 2
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor14].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1061] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253
                                        t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1219] = 0
                                            revert with 0, 
                                                        'SafeMath: subtraction overflow',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1219 len (9 * ceil32(return_data.size)) + 2]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 
                                                        'ERC20: approve from the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 
                                                        'ERC20: approve to the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                        allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1317 len 9 * ceil32(return_data.size)]
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1121 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1121] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1121 len (13 * ceil32(return_data.size)) + 96],
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1217] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1221] = balanceOf[this.address]
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1381] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413
                                    t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1349] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 
                                                    'ERC20: transfer from the zero address',
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1349 len 17 * ceil32(return_data.size)]
                                    if not this.address:
                                        revert with 0, 
                                                    'ERC20: transfer to the zero address',
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1349 len 17 * ceil32(return_data.size)]
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1419] = 0
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1419 len (17 * ceil32(return_data.size)) + 26]
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len 17 * ceil32(return_data.size)]
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                                    if ceil32(arg1.length) > arg1.length:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413] = 0
                                    require ext_code.size(nodeRewardManagementAddress)
                                    call nodeRewardManagementAddress.0x12b8603f with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len (17 * ceil32(return_data.size)) + ceil32(arg1.length)])
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
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address] * futurFee / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257] = 30
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call futurUsePoolAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not balanceOf[this.address]:
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 26
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 353] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385] = 26
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = 2
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor14].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 545] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 549] = 0
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 160
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741
                                t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481
                                while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709 len (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 545] = 30
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call distributionPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 30
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 38
                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if 0 > balanceOf[address(this.address)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 743 len 26] >> 48,
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
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 26
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 833] = 26
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 865] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 897] = 30
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 929] = 'SafeMath: subtraction overflow'
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1061] = 0
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253
                                    t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 30
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 'SafeMath: subtraction overflow'
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
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, 0, 0, 0, 0, block.timestamp
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1121 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        0,
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1221] = balanceOf[this.address]
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413
                                    t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413 len 64]
                                else:
                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not balanceOf[this.address]:
                                        revert with 0, 18
                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    allowance[address(this.address)][stor14].field_255 = 0
                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1061] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1125] = 160
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253
                                    t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1157] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
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
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1121] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1217] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1185] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1221] = balanceOf[this.address]
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1253] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1285] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413
                                    t = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153
                                    while idx < mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1121]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1317] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1349] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381 len (32 * mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1121]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor25.field_0) = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
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
                                call nodeRewardManagementAddress.0x12b8603f with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=arg1.length, data=arg1[all])
                            else:
                                if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not balanceOf[this.address]:
                                    revert with 0, 18
                                if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 26
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 353] = 'SafeMath: division by zero'
                                if not balanceOf[this.address] * rewardsFee / 100:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385] = 26
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 545] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 549] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741
                                    t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481
                                    while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709 len (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 545] = 30
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 30
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = 'SafeMath: subtraction overflow'
                                    if 0 > balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * rewardsFee / 100 < 0:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 38
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 743 len 26] >> 48,
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
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 26
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 833] = 26
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 865] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 897] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 929] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 2
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1061] = 0
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253
                                        t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 'SafeMath: subtraction overflow'
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
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, 0, 0, 0, 0, block.timestamp
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1121 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            0,
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1221] = balanceOf[this.address]
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413
                                        t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413 len 64]
                                    else:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor14].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1061] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1125] = 160
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253
                                        t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1157] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1121] = 2
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1217] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1185] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1221] = balanceOf[this.address]
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1253] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1285] = 160
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413
                                        t = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153
                                        while idx < mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1121]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381 len (32 * mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1121]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor25.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
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
                                    call nodeRewardManagementAddress.0x12b8603f with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=arg1.length, data=arg1[all])
                                else:
                                    if balanceOf[this.address] * rewardsFee / 100 and stor24 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 17
                                    if not balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 18
                                    if balanceOf[this.address] * rewardsFee / 100 * stor24 / balanceOf[this.address] * rewardsFee / 100 != stor24:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385] = 26
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                    emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor24 / 100), this.address, uniswapV2RouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 545] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 549] = balanceOf[this.address] * rewardsFee / 100 * stor24 / 100
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741
                                    t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481
                                    while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address] * rewardsFee / 100 * stor24 / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709 len (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 545] = 30
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 707] = 0
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609
                                           len (5 * ceil32(return_data.size)) + 100
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 30
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * rewardsFee / 100 * stor24 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 771] = 0
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673
                                           len (5 * ceil32(return_data.size)) + 100
                                    if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor24 / 100:
                                        revert with 0, 17
                                    if not this.address:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 37
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 'ERC20: transfer from the zero ad'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673
                                           len (5 * ceil32(return_data.size)) + 132
                                    if not distributionPoolAddress:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 35
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 'ERC20: transfer to the zero addr'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673
                                           len (5 * ceil32(return_data.size)) + 132
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 38
                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) > balanceOf[address(this.address)]:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 38
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 743 len 26]
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 875] = 0
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769
                                           len (5 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100):
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                    if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)):
                                        revert with 0, 17
                                    if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100) < balanceOf[stor17]:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 27
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769
                                           len (5 * ceil32(return_data.size)) + 100
                                    balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)
                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor24 / 100)), this.address, distributionPoolAddress);
                                    if not balanceOf[this.address]:
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1061] = 0
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253
                                        t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1125] = this.address
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1157] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, 0, 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            0,
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1121] = 2
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1217] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1185] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1221] = balanceOf[this.address]
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1253] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1285] = 160
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413
                                        t = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153
                                        while idx < mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1121]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381 len (32 * mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1121]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
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
                                        call nodeRewardManagementAddress.0x12b8603f with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=arg1.length, data=arg1[all])
                                    else:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 32
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 33
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837] = 'SafeMath: multiplication overflo'
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 869] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769
                                               len (5 * ceil32(return_data.size)) + 132
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 769] = 26
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 833] = 26
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 865] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 897] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 929] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 965] = 32
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 997] = 30
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1029] = 'SafeMath: subtraction overflow'
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1059] = 0
                                            revert with memory
                                              from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961
                                               len (5 * ceil32(return_data.size)) + 100
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 2
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor14].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1061] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253
                                        t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1057] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1219] = 0
                                            revert with 0, 
                                                        'SafeMath: subtraction overflow',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1219 len (9 * ceil32(return_data.size)) + 2]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 
                                                        'ERC20: approve from the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 
                                                        'ERC20: approve to the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                        allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1317 len 9 * ceil32(return_data.size)]
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1121 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1121] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1121 len (13 * ceil32(return_data.size)) + 96],
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1217] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1221] = balanceOf[this.address]
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1381] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413
                                        t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1349] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor25.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 
                                                        'ERC20: transfer from the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1349 len 17 * ceil32(return_data.size)]
                                        if not this.address:
                                            revert with 0, 
                                                        'ERC20: transfer to the zero address',
                                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1349 len 17 * ceil32(return_data.size)]
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1419] = 0
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1419 len (17 * ceil32(return_data.size)) + 26]
                                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                        if balanceOf[this.address] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len 17 * ceil32(return_data.size)]
                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) > arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413] = 0
                                        require ext_code.size(nodeRewardManagementAddress)
                                        call nodeRewardManagementAddress.0x12b8603f with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len (17 * ceil32(return_data.size)) + ceil32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
