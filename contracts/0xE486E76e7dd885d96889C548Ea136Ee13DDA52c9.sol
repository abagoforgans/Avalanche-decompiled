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

function _fallback() payable {
    revert
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
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x88fe6553 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
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

function getClaimTime() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x27b3bf11 with:
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

function getRewardPerNode() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x613ff46f with:
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

function changeClaimTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0xd1871a89 with:
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

function changeRewardPerNode(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0xc6faedc8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function distributeRewards() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x88fe6553 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)].field_0 < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if allowance[address(msg.sender)][address(arg1)].field_0 + arg2 < allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 + arg2), msg.sender, arg1);
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
    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
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
    if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
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
    if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
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
    if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
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
    if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
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
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
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
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
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
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
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
    staticcall nodeRewardManagementAddress.0x619a635e with:
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
                _193 = mem[64]
                mem[64] = mem[64] + 96
                mem[_193] = 38
                mem[_193 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_193 + 70 len 26]
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
                _190 = mem[64]
                mem[64] = mem[64] + 96
                mem[_190] = 38
                mem[_190 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_190 + 70 len 26]
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
    require ext_code.size(nodeRewardManagementAddress)
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
    if stor27[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xa6e15cc4 with:
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
                _193 = mem[64]
                mem[64] = mem[64] + 96
                mem[_193] = 38
                mem[_193 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_193 + 70 len 26]
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
                _190 = mem[64]
                mem[64] = mem[64] + 96
                mem[_190] = 38
                mem[_190 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100) > balanceOf[stor17]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_190 + 70 len 26]
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
    require ext_code.size(nodeRewardManagementAddress)
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
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    else:
        if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
            revert with 0, 65
        else:
            mem[96] = arg1.length
            require arg1 + arg1.length + 36 <= calldata.size
            mem[128 len arg1.length] = arg1[all]
            mem[arg1.length + 128] = 0
            if arg1.length <= 3:
                revert with 0, 'NODE CREATION: NAME SIZE INVALID'
            else:
                if arg1.length >= 32:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                else:
                    if not msg.sender:
                        revert with 0, 'NODE CREATION:  creation from the zero address'
                    else:
                        if stor27[address(msg.sender)]:
                            revert with 0, 'NODE CREATION: Blacklisted address'
                        else:
                            if futurUsePoolAddress == msg.sender:
                                revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                            else:
                                if distributionPoolAddress == msg.sender:
                                    revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                                else:
                                    require ext_code.size(nodeRewardManagementAddress)
                                    staticcall nodeRewardManagementAddress.0xf1fec2b8 with:
                                            gas gas_remaining wei
                                    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        _20 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                                        if balanceOf[address(msg.sender)] < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                                            revert with 0, 'NODE CREATION: Balance too low for creation.'
                                        else:
                                            if balanceOf[address(this.address)] < swapTokensAmount:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                else:
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    else:
                                                        if _20 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(arg1.length) + ceil32(return_data.size) + 198 len 26] >> 48,
                                                                        0
                                                        else:
                                                            if balanceOf[address(msg.sender)] < _20:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[address(msg.sender)] -= _20
                                                                if balanceOf[this.address] > !_20:
                                                                    revert with 0, 17
                                                                else:
                                                                    if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                        emit Transfer(_20, msg.sender, this.address);
                                                                        if ceil32(arg1.length) <= arg1.length:
                                                                            require ext_code.size(nodeRewardManagementAddress)
                                                                            call nodeRewardManagementAddress.0x12b8603f with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, Array(len=arg1.length, data=arg1[all])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            require ext_code.size(nodeRewardManagementAddress)
                                                                            call nodeRewardManagementAddress.0x12b8603f with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, Array(len=arg1.length, data=arg1[all])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                if not uint8(stor25.field_8):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    else:
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        else:
                                                            if _20 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(arg1.length) + ceil32(return_data.size) + 198 len 26] >> 48,
                                                                            0
                                                            else:
                                                                if balanceOf[address(msg.sender)] < _20:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[address(msg.sender)] -= _20
                                                                    if balanceOf[this.address] > !_20:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                            emit Transfer(_20, msg.sender, this.address);
                                                                            if ceil32(arg1.length) <= arg1.length:
                                                                                require ext_code.size(nodeRewardManagementAddress)
                                                                                call nodeRewardManagementAddress.0x12b8603f with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, Array(len=arg1.length, data=arg1[all])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                require ext_code.size(nodeRewardManagementAddress)
                                                                                call nodeRewardManagementAddress.0x12b8603f with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, Array(len=arg1.length, data=arg1[all])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                else:
                                                    if uint8(stor25.field_0):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        else:
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            else:
                                                                if _20 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(arg1.length) + ceil32(return_data.size) + 198 len 26] >> 48,
                                                                                0
                                                                else:
                                                                    if balanceOf[address(msg.sender)] < _20:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[address(msg.sender)] -= _20
                                                                        if balanceOf[this.address] > !_20:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                emit Transfer(_20, msg.sender, this.address);
                                                                                if ceil32(arg1.length) <= arg1.length:
                                                                                    require ext_code.size(nodeRewardManagementAddress)
                                                                                    call nodeRewardManagementAddress.0x12b8603f with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, Array(len=arg1.length, data=arg1[all])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(nodeRewardManagementAddress)
                                                                                    call nodeRewardManagementAddress.0x12b8603f with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, Array(len=arg1.length, data=arg1[all])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                    else:
                                                        if msg.sender == owner:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            else:
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                else:
                                                                    if _20 > balanceOf[address(msg.sender)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(arg1.length) + ceil32(return_data.size) + 198 len 26] >> 48,
                                                                                    0
                                                                    else:
                                                                        if balanceOf[address(msg.sender)] < _20:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[address(msg.sender)] -= _20
                                                                            if balanceOf[this.address] > !_20:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                    emit Transfer(_20, msg.sender, this.address);
                                                                                    if ceil32(arg1.length) <= arg1.length:
                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, Array(len=arg1.length, data=arg1[all])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, Array(len=arg1.length, data=arg1[all])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                        else:
                                                            if stor28[address(msg.sender)]:
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                else:
                                                                    if not this.address:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    else:
                                                                        if _20 > balanceOf[address(msg.sender)]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        38,
                                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(arg1.length) + ceil32(return_data.size) + 198 len 26] >> 48,
                                                                                        0
                                                                        else:
                                                                            if balanceOf[address(msg.sender)] < _20:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[address(msg.sender)] -= _20
                                                                                if balanceOf[this.address] > !_20:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                        emit Transfer(_20, msg.sender, this.address);
                                                                                        if ceil32(arg1.length) <= arg1.length:
                                                                                            require ext_code.size(nodeRewardManagementAddress)
                                                                                            call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, Array(len=arg1.length, data=arg1[all])
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(nodeRewardManagementAddress)
                                                                                            call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, Array(len=arg1.length, data=arg1[all])
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                            else:
                                                                uint8(stor25.field_0) = 1
                                                                if balanceOf[address(this.address)]:
                                                                    if balanceOf[address(this.address)] and futurFee > -1 / balanceOf[address(this.address)]:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if not balanceOf[address(this.address)]:
                                                                            revert with 0, 18
                                                                        else:
                                                                            if balanceOf[address(this.address)] * futurFee / balanceOf[address(this.address)] != futurFee:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = 26
                                                                                mem[ceil32(arg1.length) + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                                                                                mem[ceil32(arg1.length) + ceil32(return_data.size) + 192] = 2
                                                                                mem[ceil32(arg1.length) + ceil32(return_data.size) + 224] = this.address
                                                                                require ext_code.size(uniswapV2RouterAddress)
                                                                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                        gas gas_remaining wei
                                                                                mem[ceil32(arg1.length) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    mem[64] = ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                                                                    if this.address:
                                                                                        if uniswapV2RouterAddress:
                                                                                            mem[0] = uniswapV2RouterAddress
                                                                                            mem[32] = sha3(address(this.address), 1)
                                                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * futurFee / 100
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288] = balanceOf[address(this.address)] * futurFee / 100
                                                                                            emit Approval(mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)] * futurFee / 100
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 324] = 0
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 356] = 160
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 452] = 2
                                                                                            idx = 0
                                                                                            s = ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 484
                                                                                            t = ceil32(arg1.length) + ceil32(return_data.size) + 224
                                                                                            while idx < mem[ceil32(arg1.length) + ceil32(return_data.size) + 192]:
                                                                                                mem[s] = mem[t + 12 len 20]
                                                                                                idx = idx + 1
                                                                                                s = s + 32
                                                                                                t = t + 32
                                                                                                continue 
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 388] = this.address
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                                                 gas gas_remaining wei
                                                                                                args mem[mem[64] + 4 len ceil32(arg1.length) + (2 * ceil32(return_data.size)) + (32 * mem[ceil32(arg1.length) + ceil32(return_data.size) + 192]) + -mem[64] + 480]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _557 = mem[64]
                                                                                                mem[64] = mem[64] + 64
                                                                                                mem[_557] = 30
                                                                                                mem[_557 + 32] = 'SafeMath: subtraction overflow'
                                                                                                if eth.balance(this.address) > eth.balance(this.address):
                                                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                else:
                                                                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        call futurUsePoolAddress with:
                                                                                                             gas 2300 wei
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            if balanceOf[address(this.address)]:
                                                                                                                if balanceOf[address(this.address)] and rewardsFee > -1 / balanceOf[address(this.address)]:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if not balanceOf[address(this.address)]:
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if balanceOf[address(this.address)] * rewardsFee / balanceOf[address(this.address)] != rewardsFee:
                                                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                                                        else:
                                                                                                                            _575 = mem[64]
                                                                                                                            mem[64] = mem[64] + 64
                                                                                                                            mem[_575] = 26
                                                                                                                            mem[_575 + 32] = 'SafeMath: division by zero'
                                                                                                                            if balanceOf[address(this.address)] * rewardsFee / 100:
                                                                                                                                if balanceOf[address(this.address)] * rewardsFee / 100 and stor24 > -1 / balanceOf[address(this.address)] * rewardsFee / 100:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if not balanceOf[address(this.address)] * rewardsFee / 100:
                                                                                                                                        revert with 0, 18
                                                                                                                                    else:
                                                                                                                                        if balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / balanceOf[address(this.address)] * rewardsFee / 100 != stor24:
                                                                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                                                                        else:
                                                                                                                                            _593 = mem[64]
                                                                                                                                            mem[64] = mem[64] + 64
                                                                                                                                            mem[_593] = 26
                                                                                                                                            mem[_593 + 32] = 'SafeMath: division by zero'
                                                                                                                                            _615 = mem[64]
                                                                                                                                            mem[mem[64]] = 2
                                                                                                                                            mem[64] = mem[64] + 96
                                                                                                                                            mem[_615 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                                                            if 0 >= mem[_615]:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                mem[_615 + 32] = this.address
                                                                                                                                                require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                mem[_615 + 96] = ext_call.return_data[0]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    mem[64] = _615 + ceil32(return_data.size) + 96
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                    if 1 >= mem[_615]:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        mem[_615 + 64] = ext_call.return_data[12 len 20]
                                                                                                                                                        if not this.address:
                                                                                                                                                            revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                        else:
                                                                                                                                                            if not uniswapV2RouterAddress:
                                                                                                                                                                revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                            else:
                                                                                                                                                                mem[0] = uniswapV2RouterAddress
                                                                                                                                                                mem[32] = sha3(address(this.address), 1)
                                                                                                                                                                allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100
                                                                                                                                                                emit Approval((balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100), this.address, uniswapV2RouterAddress);
                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100
                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 132] = 0
                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 164] = 160
                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 260] = mem[_615]
                                                                                                                                                                idx = 0
                                                                                                                                                                s = _615 + ceil32(return_data.size) + 292
                                                                                                                                                                t = _615 + 32
                                                                                                                                                                while idx < mem[_615]:
                                                                                                                                                                    mem[s] = mem[t + 12 len 20]
                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                    s = s + 32
                                                                                                                                                                    t = t + 32
                                                                                                                                                                    continue 
                                                                                                                                                                require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                                    args balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100, 0, 160, address(this.address), block.timestamp, mem[_615 + ceil32(return_data.size) + 260 len (32 * mem[_615]) + 32]
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    mem[_615 + ceil32(return_data.size) + 96] = 30
                                                                                                                                                                    mem[_615 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                                                                                                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                    else:
                                                                                                                                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                        else:
                                                                                                                                                                            call distributionPoolAddress with:
                                                                                                                                                                                 gas 2300 wei
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 160] = 30
                                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                if balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100 > balanceOf[address(this.address)] * rewardsFee / 100:
                                                                                                                                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                else:
                                                                                                                                                                                    if balanceOf[address(this.address)] * rewardsFee / 100 < balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100:
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        if not this.address:
                                                                                                                                                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                                                                                                                                                        else:
                                                                                                                                                                                            if not distributionPoolAddress:
                                                                                                                                                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                                                                                                                                                            else:
                                                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 224] = 38
                                                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                if (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100) > balanceOf[address(this.address)]:
                                                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                                                32,
                                                                                                                                                                                                                38,
                                                                                                                                                                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_615 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                                                                                                                                                                                0
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if balanceOf[address(this.address)] < (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100):
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * rewardsFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100)
                                                                                                                                                                                                        if balanceOf[stor17] > !((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100)):
                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if balanceOf[stor17] + (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100) < balanceOf[stor17]:
                                                                                                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                balanceOf[stor17] = balanceOf[stor17] + (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100)
                                                                                                                                                                                                                emit Transfer(((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100)), this.address, distributionPoolAddress);
                                                                                                                                                                                                                if balanceOf[address(this.address)]:
                                                                                                                                                                                                                    if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if not balanceOf[address(this.address)]:
                                                                                                                                                                                                                            revert with 0, 18
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if balanceOf[address(this.address)] * liquidityPoolFee / balanceOf[address(this.address)] != liquidityPoolFee:
                                                                                                                                                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 320] = 26
                                                                                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                                                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 384] = 26
                                                                                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                                                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 448] = 30
                                                                                                                                                                                                                                mem[_615 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                                if balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2 > balanceOf[address(this.address)] * liquidityPoolFee / 100:
                                                                                                                                                                                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[_615 + ceil32(return_data.size) + 512] = 2
                                                                                                                                                                                                                                        mem[_615 + ceil32(return_data.size) + 544] = this.address
                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                                                                                        mem[_615 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                            mem[_615 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                            if not this.address:
                                                                                                                                                                                                                                                revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                                                                                                                                                                                                                    emit Approval((balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 612] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 644] = 0
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 676] = 160
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 772] = 2
                                                                                                                                                                                                                                                    idx = 0
                                                                                                                                                                                                                                                    s = _615 + (2 * ceil32(return_data.size)) + 804
                                                                                                                                                                                                                                                    t = _615 + ceil32(return_data.size) + 544
                                                                                                                                                                                                                                                    while idx < mem[_615 + ceil32(return_data.size) + 512]:
                                                                                                                                                                                                                                                        mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                                        s = s + 32
                                                                                                                                                                                                                                                        t = t + 32
                                                                                                                                                                                                                                                        continue 
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                                                                                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                                                        args Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_615 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_615 + ceil32(return_data.size) + 512]) + 32]
                                                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 608] = 30
                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                                                        if eth.balance(this.address) <= eth.balance(this.address):
                                                                                                                                                                                                                                                            if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                if this.address:
                                                                                                                                                                                                                                                                    if uniswapV2RouterAddress:
                                                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                                                                                                                                                                                                                                        emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 740] = 0
                                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 772] = 0
                                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 804] = 0
                                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                            args mem[_615 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            require return_data.size >= 96
                                                                                                                                                                                                                                                                            mem[_615 + (4 * ceil32(return_data.size)) + 672] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                                                                                            mem[_615 + (4 * ceil32(return_data.size)) + 704] = 0
                                                                                                                                                                                                                                                                            mem[_615 + (4 * ceil32(return_data.size)) + 736] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                                                                                                                                                                                                                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                                                                                                                                                                                                                                mem[_615 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                                                                                                                                                                                                                                            mem[_615 + (4 * ceil32(return_data.size)) + 672] = 2
                                                                                                                                                                                                                                                                            mem[_615 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                                                                                                            mem[_615 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                                                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                                                mem[_615 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                                                        emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                                                        mem[_615 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                        mem[_615 + (6 * ceil32(return_data.size)) + 772] = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                                                        mem[_615 + (6 * ceil32(return_data.size)) + 836] = 160
                                                                                                                                                                                                                                                                                        mem[_615 + (6 * ceil32(return_data.size)) + 932] = 2
                                                                                                                                                                                                                                                                                        idx = 0
                                                                                                                                                                                                                                                                                        s = _615 + (6 * ceil32(return_data.size)) + 964
                                                                                                                                                                                                                                                                                        t = _615 + (4 * ceil32(return_data.size)) + 704
                                                                                                                                                                                                                                                                                        while idx < 2:
                                                                                                                                                                                                                                                                                            mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                                                                                                        mem[_615 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[_615 + (6 * ceil32(return_data.size)) + 964 len 64]
                                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                            uint8(stor25.field_0) = 0
                                                                                                                                                                                                                                                                                            if not msg.sender:
                                                                                                                                                                                                                                                                                                revert with 0, 
                                                                                                                                                                                                                                                                                                            'ERC20: transfer from the zero address',
                                                                                                                                                                                                                                                                                                            mem[_615 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                                                                                                                                                'ERC20: transfer to the zero address',
                                                                                                                                                                                                                                                                                                                mem[_615 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 768] = 38
                                                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                                                                                                                    if _20 <= balanceOf[address(msg.sender)]:
                                                                                                                                                                                                                                                                                                        if balanceOf[address(msg.sender)] < _20:
                                                                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                                            balanceOf[address(msg.sender)] -= _20
                                                                                                                                                                                                                                                                                                            if balanceOf[this.address] > !_20:
                                                                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                                                if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                                                                                                                                                                                                                                                                    revert with 0, 'SafeMath: addition overflow', mem[_615 + (6 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                                                    balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                                                                                                                                                                                                                                                    emit Transfer(_20, msg.sender, this.address);
                                                                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 900] = 64
                                                                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 932] = mem[96]
                                                                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                                                                                                                                                                                                                                                                                    if ceil32(mem[96]) <= mem[96]:
                                                                                                                                                                                                                                                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                                                                            args msg.sender, Array(len=mem[96], data=mem[_615 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[96])])
                                                                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                                                        mem[mem[96] + _615 + (6 * ceil32(return_data.size)) + 964] = 0
                                                                                                                                                                                                                                                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                                                                            args msg.sender, Array(len=mem[96], data=mem[_615 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[96])])
                                                                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                                        mem[_615 + (6 * ceil32(return_data.size)) + 970] = 0
                                                                                                                                                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                                                                                                                                                    32,
                                                                                                                                                                                                                                                                                                                    38,
                                                                                                                                                                                                                                                                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 970 len (9 * ceil32(return_data.size)) + 26]
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 708] = 34
                                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                        revert with memory
                                                                                                                                                                                                                                                                          from _615 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                                                           len ceil32(return_data.size) + 132
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 708] = 36
                                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                    revert with memory
                                                                                                                                                                                                                                                                      from _615 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                                                       len ceil32(return_data.size) + 132
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            mem[_615 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                            mem[_615 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                                            mem[_615 + (2 * ceil32(return_data.size)) + 708] = 30
                                                                                                                                                                                                                                                            mem[_615 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                                                            mem[_615 + (2 * ceil32(return_data.size)) + 770] = 0
                                                                                                                                                                                                                                                            revert with memory
                                                                                                                                                                                                                                                              from _615 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                                               len ceil32(return_data.size) + 100
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[_615 + ceil32(return_data.size) + 320] = 26
                                                                                                                                                                                                                    mem[_615 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                                                                                                                                                                                    mem[_615 + ceil32(return_data.size) + 384] = 26
                                                                                                                                                                                                                    mem[_615 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                                                                                                                                                                                    mem[_615 + ceil32(return_data.size) + 448] = 30
                                                                                                                                                                                                                    mem[_615 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                    mem[_615 + ceil32(return_data.size) + 512] = 2
                                                                                                                                                                                                                    mem[_615 + ceil32(return_data.size) + 544] = this.address
                                                                                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                                                                    mem[_615 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                        mem[_615 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                        if not this.address:
                                                                                                                                                                                                                            revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                                                                                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                mem[_615 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                mem[_615 + (2 * ceil32(return_data.size)) + 612] = 0
                                                                                                                                                                                                                                mem[_615 + (2 * ceil32(return_data.size)) + 644] = 0
                                                                                                                                                                                                                                mem[_615 + (2 * ceil32(return_data.size)) + 676] = 160
                                                                                                                                                                                                                                mem[_615 + (2 * ceil32(return_data.size)) + 772] = 2
                                                                                                                                                                                                                                idx = 0
                                                                                                                                                                                                                                s = _615 + (2 * ceil32(return_data.size)) + 804
                                                                                                                                                                                                                                t = _615 + ceil32(return_data.size) + 544
                                                                                                                                                                                                                                while idx < mem[_615 + ceil32(return_data.size) + 512]:
                                                                                                                                                                                                                                    mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                                                                                    s = s + 32
                                                                                                                                                                                                                                    t = t + 32
                                                                                                                                                                                                                                    continue 
                                                                                                                                                                                                                                mem[_615 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                                                                                                                                                                                                mem[_615 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                                                                                                                                                                                                require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                                                                                                    args 0, 0, 160, address(this.address), block.timestamp, mem[_615 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_615 + ceil32(return_data.size) + 512]) + 32]
                                                                                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 608] = 30
                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                                    if eth.balance(this.address) <= eth.balance(this.address):
                                                                                                                                                                                                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            if this.address:
                                                                                                                                                                                                                                                if uniswapV2RouterAddress:
                                                                                                                                                                                                                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                                                                                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 708] = 0
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 740] = 0
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 772] = 0
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 804] = 0
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                                                                                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                                                        args mem[_615 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        require return_data.size >= 96
                                                                                                                                                                                                                                                        mem[_615 + (4 * ceil32(return_data.size)) + 672] = 0
                                                                                                                                                                                                                                                        mem[_615 + (4 * ceil32(return_data.size)) + 704] = 0
                                                                                                                                                                                                                                                        mem[_615 + (4 * ceil32(return_data.size)) + 736] = 0
                                                                                                                                                                                                                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                                                                                                                                                                                                            mem[_615 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                                                                                                                                                                                                                        mem[_615 + (4 * ceil32(return_data.size)) + 672] = 2
                                                                                                                                                                                                                                                        mem[_615 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                                                                                                        mem[_615 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                                                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                            mem[_615 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                            if not this.address:
                                                                                                                                                                                                                                                                revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                                    emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 772] = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 836] = 160
                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 932] = 2
                                                                                                                                                                                                                                                                    idx = 0
                                                                                                                                                                                                                                                                    s = _615 + (6 * ceil32(return_data.size)) + 964
                                                                                                                                                                                                                                                                    t = _615 + (4 * ceil32(return_data.size)) + 704
                                                                                                                                                                                                                                                                    while idx < 2:
                                                                                                                                                                                                                                                                        mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                                                        s = s + 32
                                                                                                                                                                                                                                                                        t = t + 32
                                                                                                                                                                                                                                                                        continue 
                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                                                                                                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                                                                        args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[_615 + (6 * ceil32(return_data.size)) + 964 len 64]
                                                                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        uint8(stor25.field_0) = 0
                                                                                                                                                                                                                                                                        if not msg.sender:
                                                                                                                                                                                                                                                                            revert with 0, 
                                                                                                                                                                                                                                                                                        'ERC20: transfer from the zero address',
                                                                                                                                                                                                                                                                                        mem[_615 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            if not this.address:
                                                                                                                                                                                                                                                                                revert with 0, 
                                                                                                                                                                                                                                                                                            'ERC20: transfer to the zero address',
                                                                                                                                                                                                                                                                                            mem[_615 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                mem[_615 + (6 * ceil32(return_data.size)) + 768] = 38
                                                                                                                                                                                                                                                                                mem[_615 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                                                                                                if _20 <= balanceOf[address(msg.sender)]:
                                                                                                                                                                                                                                                                                    if balanceOf[address(msg.sender)] < _20:
                                                                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                        balanceOf[address(msg.sender)] -= _20
                                                                                                                                                                                                                                                                                        if balanceOf[this.address] > !_20:
                                                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                            if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                                                                                                                                                                                                                                                revert with 0, 'SafeMath: addition overflow', mem[_615 + (6 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                                balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                                                                                                                                                                                                                                emit Transfer(_20, msg.sender, this.address);
                                                                                                                                                                                                                                                                                                mem[_615 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                                mem[_615 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                                                                                                                                                                                                                                                                mem[_615 + (6 * ceil32(return_data.size)) + 900] = 64
                                                                                                                                                                                                                                                                                                mem[_615 + (6 * ceil32(return_data.size)) + 932] = mem[96]
                                                                                                                                                                                                                                                                                                mem[_615 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                                                                                                                                                                                                                                                                if ceil32(mem[96]) <= mem[96]:
                                                                                                                                                                                                                                                                                                    require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                                    call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                                                                                                        args msg.sender, Array(len=mem[96], data=mem[_615 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[96])])
                                                                                                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                                    mem[mem[96] + _615 + (6 * ceil32(return_data.size)) + 964] = 0
                                                                                                                                                                                                                                                                                                    require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                                    call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                                                                                                        args msg.sender, Array(len=mem[96], data=mem[_615 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[96])])
                                                                                                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    mem[_615 + (6 * ceil32(return_data.size)) + 970] = 0
                                                                                                                                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                                                                                                                                32,
                                                                                                                                                                                                                                                                                                38,
                                                                                                                                                                                                                                                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                                                                                                                                                                                                                                                mem[_615 + (6 * ceil32(return_data.size)) + 970 len (9 * ceil32(return_data.size)) + 26]
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 708] = 34
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                                                                                                                                                                                                                    mem[_615 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                    revert with memory
                                                                                                                                                                                                                                                      from _615 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                                       len ceil32(return_data.size) + 132
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                mem[_615 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                mem[_615 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                                mem[_615 + (2 * ceil32(return_data.size)) + 708] = 36
                                                                                                                                                                                                                                                mem[_615 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                                                                                                                                                                                                                mem[_615 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                revert with memory
                                                                                                                                                                                                                                                  from _615 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                                   len ceil32(return_data.size) + 132
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 708] = 30
                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                                        mem[_615 + (2 * ceil32(return_data.size)) + 770] = 0
                                                                                                                                                                                                                                        revert with memory
                                                                                                                                                                                                                                          from _615 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                           len ceil32(return_data.size) + 100
                                                                                                                            else:
                                                                                                                                _581 = mem[64]
                                                                                                                                mem[64] = mem[64] + 64
                                                                                                                                mem[_581] = 26
                                                                                                                                mem[_581 + 32] = 'SafeMath: division by zero'
                                                                                                                                _601 = mem[64]
                                                                                                                                mem[mem[64]] = 2
                                                                                                                                mem[64] = mem[64] + 96
                                                                                                                                mem[_601 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                                                if 0 >= mem[_601]:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    mem[_601 + 32] = this.address
                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                    mem[_601 + 96] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        mem[64] = _601 + ceil32(return_data.size) + 96
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                        if 1 >= mem[_601]:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            mem[_601 + 64] = ext_call.return_data[12 len 20]
                                                                                                                                            if not this.address:
                                                                                                                                                revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                            else:
                                                                                                                                                if not uniswapV2RouterAddress:
                                                                                                                                                    revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                else:
                                                                                                                                                    mem[0] = uniswapV2RouterAddress
                                                                                                                                                    mem[32] = sha3(address(this.address), 1)
                                                                                                                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 100] = 0
                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 132] = 0
                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 164] = 160
                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 260] = mem[_601]
                                                                                                                                                    idx = 0
                                                                                                                                                    s = _601 + ceil32(return_data.size) + 292
                                                                                                                                                    t = _601 + 32
                                                                                                                                                    while idx < mem[_601]:
                                                                                                                                                        mem[s] = mem[t + 12 len 20]
                                                                                                                                                        idx = idx + 1
                                                                                                                                                        s = s + 32
                                                                                                                                                        t = t + 32
                                                                                                                                                        continue 
                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_601 + ceil32(return_data.size) + 260 len (32 * mem[_601]) + 32]
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        mem[_601 + ceil32(return_data.size) + 96] = 30
                                                                                                                                                        mem[_601 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                                                                                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                        else:
                                                                                                                                                            if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                call distributionPoolAddress with:
                                                                                                                                                                     gas 2300 wei
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 160] = 30
                                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                                                                                                                                    if 0 > balanceOf[address(this.address)] * rewardsFee / 100:
                                                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                    else:
                                                                                                                                                                        if balanceOf[address(this.address)] * rewardsFee / 100 < 0:
                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                        else:
                                                                                                                                                                            if not this.address:
                                                                                                                                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                                                                                                                                            else:
                                                                                                                                                                                if not distributionPoolAddress:
                                                                                                                                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                                                                                                                                else:
                                                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 224] = 38
                                                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                    if balanceOf[address(this.address)] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                                    32,
                                                                                                                                                                                                    38,
                                                                                                                                                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_601 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                                                                                                                                                                    0
                                                                                                                                                                                    else:
                                                                                                                                                                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * rewardsFee / 100:
                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                        else:
                                                                                                                                                                                            balanceOf[address(this.address)] -= balanceOf[address(this.address)] * rewardsFee / 100
                                                                                                                                                                                            if balanceOf[stor17] > !(balanceOf[address(this.address)] * rewardsFee / 100):
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                if balanceOf[stor17] + (balanceOf[address(this.address)] * rewardsFee / 100) < balanceOf[stor17]:
                                                                                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                                                                else:
                                                                                                                                                                                                    balanceOf[stor17] += balanceOf[address(this.address)] * rewardsFee / 100
                                                                                                                                                                                                    emit Transfer((balanceOf[address(this.address)] * rewardsFee / 100), this.address, distributionPoolAddress);
                                                                                                                                                                                                    if balanceOf[address(this.address)]:
                                                                                                                                                                                                        if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if not balanceOf[address(this.address)]:
                                                                                                                                                                                                                revert with 0, 18
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if balanceOf[address(this.address)] * liquidityPoolFee / balanceOf[address(this.address)] != liquidityPoolFee:
                                                                                                                                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 320] = 26
                                                                                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                                                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 384] = 26
                                                                                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                                                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 448] = 30
                                                                                                                                                                                                                    mem[_601 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                    if balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2 > balanceOf[address(this.address)] * liquidityPoolFee / 100:
                                                                                                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[_601 + ceil32(return_data.size) + 512] = 2
                                                                                                                                                                                                                            mem[_601 + ceil32(return_data.size) + 544] = this.address
                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                                                            mem[_601 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                mem[_601 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                                                                                                                                                                                                        emit Approval((balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 612] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 644] = 0
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 676] = 160
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 772] = 2
                                                                                                                                                                                                                                        idx = 0
                                                                                                                                                                                                                                        s = _601 + (2 * ceil32(return_data.size)) + 804
                                                                                                                                                                                                                                        t = _601 + ceil32(return_data.size) + 544
                                                                                                                                                                                                                                        while idx < mem[_601 + ceil32(return_data.size) + 512]:
                                                                                                                                                                                                                                            mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                            args Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_601 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_601 + ceil32(return_data.size) + 512]) + 32]
                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 608] = 30
                                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                                            if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                                                                                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if not this.address:
                                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                            revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            allowance[address(this.address)][stor14].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                                                                                                                                                                                                                            emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 740] = 0
                                                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 772] = 0
                                                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 804] = 0
                                                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                args address(this.address), (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                require return_data.size >= 96
                                                                                                                                                                                                                                                                emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                                                                                                                                                                                                                                                                mem[_601 + (4 * ceil32(return_data.size)) + 672] = 2
                                                                                                                                                                                                                                                                mem[_601 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                                                                                                                                                                                                                                require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                                                                                                                mem[_601 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                                                                                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                                                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                                    mem[_601 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                                    if not this.address:
                                                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                                            revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                                            emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                                            mem[_601 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                            mem[_601 + (6 * ceil32(return_data.size)) + 772] = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                                            mem[_601 + (6 * ceil32(return_data.size)) + 836] = 160
                                                                                                                                                                                                                                                                            idx = 0
                                                                                                                                                                                                                                                                            s = _601 + (6 * ceil32(return_data.size)) + 964
                                                                                                                                                                                                                                                                            t = _601 + (4 * ceil32(return_data.size)) + 704
                                                                                                                                                                                                                                                                            while idx < 2:
                                                                                                                                                                                                                                                                                mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                                                                                s = s + 32
                                                                                                                                                                                                                                                                                t = t + 32
                                                                                                                                                                                                                                                                                continue 
                                                                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[_601 + (6 * ceil32(return_data.size)) + 964 len 64]
                                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                uint8(stor25.field_0) = 0
                                                                                                                                                                                                                                                                                if not msg.sender:
                                                                                                                                                                                                                                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    if not this.address:
                                                                                                                                                                                                                                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 768] = 38
                                                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                                                                                                        if _20 > balanceOf[address(msg.sender)]:
                                                                                                                                                                                                                                                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                            if balanceOf[address(msg.sender)] < _20:
                                                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                                balanceOf[address(msg.sender)] -= _20
                                                                                                                                                                                                                                                                                                if balanceOf[this.address] > !_20:
                                                                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                                    if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                                                                                                                                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                                        balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                                                                                                                                                                                                                                        emit Transfer(_20, msg.sender, this.address);
                                                                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 900] = 64
                                                                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 932] = mem[96]
                                                                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                                                                                                                                                                                                                                                                        if ceil32(mem[96]) <= mem[96]:
                                                                                                                                                                                                                                                                                                            require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                                            call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                                                                args msg.sender, Array(len=mem[96], data=mem[_601 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])])
                                                                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                                            mem[mem[96] + _601 + (6 * ceil32(return_data.size)) + 964] = 0
                                                                                                                                                                                                                                                                                                            require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                                            call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                                                                args msg.sender, Array(len=mem[96], data=mem[_601 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])])
                                                                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        mem[_601 + ceil32(return_data.size) + 320] = 26
                                                                                                                                                                                                        mem[_601 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                                                                                                                                                                        mem[_601 + ceil32(return_data.size) + 384] = 26
                                                                                                                                                                                                        mem[_601 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                                                                                                                                                                        mem[_601 + ceil32(return_data.size) + 448] = 30
                                                                                                                                                                                                        mem[_601 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                        mem[_601 + ceil32(return_data.size) + 512] = 2
                                                                                                                                                                                                        mem[_601 + ceil32(return_data.size) + 544] = this.address
                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                                                        mem[_601 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                            mem[_601 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                            if not this.address:
                                                                                                                                                                                                                revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if not uniswapV2RouterAddress:
                                                                                                                                                                                                                    revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                                                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                    mem[_601 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                    mem[_601 + (2 * ceil32(return_data.size)) + 612] = 0
                                                                                                                                                                                                                    mem[_601 + (2 * ceil32(return_data.size)) + 644] = 0
                                                                                                                                                                                                                    mem[_601 + (2 * ceil32(return_data.size)) + 676] = 160
                                                                                                                                                                                                                    mem[_601 + (2 * ceil32(return_data.size)) + 772] = 2
                                                                                                                                                                                                                    idx = 0
                                                                                                                                                                                                                    s = _601 + (2 * ceil32(return_data.size)) + 804
                                                                                                                                                                                                                    t = _601 + ceil32(return_data.size) + 544
                                                                                                                                                                                                                    while idx < mem[_601 + ceil32(return_data.size) + 512]:
                                                                                                                                                                                                                        mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                        s = s + 32
                                                                                                                                                                                                                        t = t + 32
                                                                                                                                                                                                                        continue 
                                                                                                                                                                                                                    mem[_601 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                                                                                                                                                                                    mem[_601 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                                                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_601 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_601 + ceil32(return_data.size) + 512]) + 32]
                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 608] = 30
                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                        if eth.balance(this.address) <= eth.balance(this.address):
                                                                                                                                                                                                                            if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if this.address:
                                                                                                                                                                                                                                    if uniswapV2RouterAddress:
                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                                                                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 708] = 0
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 740] = 0
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 772] = 0
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 804] = 0
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                            args mem[_601 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            require return_data.size >= 96
                                                                                                                                                                                                                                            mem[_601 + (4 * ceil32(return_data.size)) + 672] = 0
                                                                                                                                                                                                                                            mem[_601 + (4 * ceil32(return_data.size)) + 704] = 0
                                                                                                                                                                                                                                            mem[_601 + (4 * ceil32(return_data.size)) + 736] = 0
                                                                                                                                                                                                                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                                                                                                                                                                                                mem[_601 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                                                                                                                                                                                                            mem[_601 + (4 * ceil32(return_data.size)) + 672] = 2
                                                                                                                                                                                                                                            mem[_601 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                                                                            mem[_601 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                mem[_601 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                        emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 772] = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 836] = 160
                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 932] = 2
                                                                                                                                                                                                                                                        idx = 0
                                                                                                                                                                                                                                                        s = _601 + (6 * ceil32(return_data.size)) + 964
                                                                                                                                                                                                                                                        t = _601 + (4 * ceil32(return_data.size)) + 704
                                                                                                                                                                                                                                                        while idx < 2:
                                                                                                                                                                                                                                                            mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[_601 + (6 * ceil32(return_data.size)) + 964 len 64]
                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            uint8(stor25.field_0) = 0
                                                                                                                                                                                                                                                            if not msg.sender:
                                                                                                                                                                                                                                                                revert with 0, 
                                                                                                                                                                                                                                                                            'ERC20: transfer from the zero address',
                                                                                                                                                                                                                                                                            mem[_601 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                                                                                                                'ERC20: transfer to the zero address',
                                                                                                                                                                                                                                                                                mem[_601 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    mem[_601 + (6 * ceil32(return_data.size)) + 768] = 38
                                                                                                                                                                                                                                                                    mem[_601 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                                                                                    if _20 <= balanceOf[address(msg.sender)]:
                                                                                                                                                                                                                                                                        if balanceOf[address(msg.sender)] < _20:
                                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            balanceOf[address(msg.sender)] -= _20
                                                                                                                                                                                                                                                                            if balanceOf[this.address] > !_20:
                                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                                                                                                                                                                                                                                    revert with 0, 'SafeMath: addition overflow', mem[_601 + (6 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                                                                                                                                                                                                                    emit Transfer(_20, msg.sender, this.address);
                                                                                                                                                                                                                                                                                    mem[_601 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                    mem[_601 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                                                                                                                                                                                                                                                    mem[_601 + (6 * ceil32(return_data.size)) + 900] = 64
                                                                                                                                                                                                                                                                                    mem[_601 + (6 * ceil32(return_data.size)) + 932] = mem[96]
                                                                                                                                                                                                                                                                                    mem[_601 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                                                                                                                                                                                                                                                    if ceil32(mem[96]) <= mem[96]:
                                                                                                                                                                                                                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                                            args msg.sender, Array(len=mem[96], data=mem[_601 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[96])])
                                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                        mem[mem[96] + _601 + (6 * ceil32(return_data.size)) + 964] = 0
                                                                                                                                                                                                                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                                            args msg.sender, Array(len=mem[96], data=mem[_601 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[96])])
                                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        mem[_601 + (6 * ceil32(return_data.size)) + 970] = 0
                                                                                                                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                                                                                                                    32,
                                                                                                                                                                                                                                                                                    38,
                                                                                                                                                                                                                                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                                                                                                                                                                                                                                    mem[_601 + (6 * ceil32(return_data.size)) + 970 len (9 * ceil32(return_data.size)) + 26]
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 708] = 34
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                                                                                                                                                                                                        mem[_601 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                        revert with memory
                                                                                                                                                                                                                                          from _601 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                           len ceil32(return_data.size) + 132
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[_601 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                    mem[_601 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                    mem[_601 + (2 * ceil32(return_data.size)) + 708] = 36
                                                                                                                                                                                                                                    mem[_601 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                                                                                                                                                                                                    mem[_601 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                    revert with memory
                                                                                                                                                                                                                                      from _601 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                       len ceil32(return_data.size) + 132
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 708] = 30
                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                            mem[_601 + (2 * ceil32(return_data.size)) + 770] = 0
                                                                                                                                                                                                                            revert with memory
                                                                                                                                                                                                                              from _601 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                               len ceil32(return_data.size) + 100
                                                                                                            else:
                                                                                                                _571 = mem[64]
                                                                                                                mem[64] = mem[64] + 64
                                                                                                                mem[_571] = 26
                                                                                                                mem[_571 + 32] = 'SafeMath: division by zero'
                                                                                                                _579 = mem[64]
                                                                                                                mem[64] = mem[64] + 64
                                                                                                                mem[_579] = 26
                                                                                                                mem[_579 + 32] = 'SafeMath: division by zero'
                                                                                                                _583 = mem[64]
                                                                                                                mem[mem[64]] = 2
                                                                                                                mem[64] = mem[64] + 96
                                                                                                                mem[_583 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                                if 0 >= mem[_583]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[_583 + 32] = this.address
                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[_583 + 96] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        mem[64] = _583 + ceil32(return_data.size) + 96
                                                                                                                        require return_data.size >= 32
                                                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                        if 1 >= mem[_583]:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            mem[_583 + 64] = ext_call.return_data[12 len 20]
                                                                                                                            if not this.address:
                                                                                                                                revert with 0, 'ERC20: approve from the zero address'
                                                                                                                            else:
                                                                                                                                if not uniswapV2RouterAddress:
                                                                                                                                    revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                else:
                                                                                                                                    mem[0] = uniswapV2RouterAddress
                                                                                                                                    mem[32] = sha3(address(this.address), 1)
                                                                                                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                    mem[_583 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                    mem[_583 + ceil32(return_data.size) + 100] = 0
                                                                                                                                    mem[_583 + ceil32(return_data.size) + 132] = 0
                                                                                                                                    mem[_583 + ceil32(return_data.size) + 164] = 160
                                                                                                                                    mem[_583 + ceil32(return_data.size) + 260] = mem[_583]
                                                                                                                                    idx = 0
                                                                                                                                    s = _583 + ceil32(return_data.size) + 292
                                                                                                                                    t = _583 + 32
                                                                                                                                    while idx < mem[_583]:
                                                                                                                                        mem[s] = mem[t + 12 len 20]
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = s + 32
                                                                                                                                        t = t + 32
                                                                                                                                        continue 
                                                                                                                                    mem[_583 + ceil32(return_data.size) + 196] = this.address
                                                                                                                                    mem[_583 + ceil32(return_data.size) + 228] = block.timestamp
                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args mem[mem[64] + 4 len _583 + ceil32(return_data.size) + (32 * mem[_583]) + -mem[64] + 288]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _1557 = mem[64]
                                                                                                                                        mem[64] = mem[64] + 64
                                                                                                                                        mem[_1557] = 30
                                                                                                                                        mem[_1557 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                        else:
                                                                                                                                            if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                call distributionPoolAddress with:
                                                                                                                                                     gas 2300 wei
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _1587 = mem[64]
                                                                                                                                                    mem[64] = mem[64] + 64
                                                                                                                                                    mem[_1587] = 30
                                                                                                                                                    mem[_1587 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                                                    if not this.address:
                                                                                                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                                                                                                    else:
                                                                                                                                                        if not distributionPoolAddress:
                                                                                                                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                                                                                                                        else:
                                                                                                                                                            _1647 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + 96
                                                                                                                                                            mem[_1647] = 38
                                                                                                                                                            mem[_1647 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                            if 0 <= balanceOf[address(this.address)]:
                                                                                                                                                                if balanceOf[address(this.address)] < 0:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if balanceOf[stor17] > -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        if balanceOf[stor17] < balanceOf[stor17]:
                                                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                                        else:
                                                                                                                                                                            mem[0] = distributionPoolAddress
                                                                                                                                                                            mem[32] = 0
                                                                                                                                                                            balanceOf[stor17] = balanceOf[stor17]
                                                                                                                                                                            emit Transfer(0, this.address, distributionPoolAddress);
                                                                                                                                                                            if balanceOf[address(this.address)]:
                                                                                                                                                                                if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                else:
                                                                                                                                                                                    if not balanceOf[address(this.address)]:
                                                                                                                                                                                        revert with 0, 18
                                                                                                                                                                                    else:
                                                                                                                                                                                        if balanceOf[address(this.address)] * liquidityPoolFee / balanceOf[address(this.address)] != liquidityPoolFee:
                                                                                                                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                                                                                                                        else:
                                                                                                                                                                                            _1747 = mem[64]
                                                                                                                                                                                            mem[64] = mem[64] + 64
                                                                                                                                                                                            mem[_1747] = 26
                                                                                                                                                                                            mem[_1747 + 32] = 'SafeMath: division by zero'
                                                                                                                                                                                            _1763 = mem[64]
                                                                                                                                                                                            mem[64] = mem[64] + 64
                                                                                                                                                                                            mem[_1763] = 26
                                                                                                                                                                                            mem[_1763 + 32] = 'SafeMath: division by zero'
                                                                                                                                                                                            _1775 = mem[64]
                                                                                                                                                                                            mem[64] = mem[64] + 64
                                                                                                                                                                                            mem[_1775] = 30
                                                                                                                                                                                            mem[_1775 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                            if balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2 > balanceOf[address(this.address)] * liquidityPoolFee / 100:
                                                                                                                                                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                            else:
                                                                                                                                                                                                if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                else:
                                                                                                                                                                                                    _1837 = mem[64]
                                                                                                                                                                                                    mem[mem[64]] = 2
                                                                                                                                                                                                    mem[64] = mem[64] + 96
                                                                                                                                                                                                    mem[_1837 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                                                                                                                    if 0 >= mem[_1837]:
                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        mem[_1837 + 32] = this.address
                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                                                        mem[_1837 + 96] = ext_call.return_data[0]
                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            mem[64] = _1837 + ceil32(return_data.size) + 96
                                                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                            if 1 >= mem[_1837]:
                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                mem[_1837 + 64] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        mem[0] = uniswapV2RouterAddress
                                                                                                                                                                                                                        mem[32] = sha3(address(this.address), 1)
                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                                                                                                                                                                                        emit Approval((balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                        mem[_1837 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                        mem[_1837 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                                        mem[_1837 + ceil32(return_data.size) + 132] = 0
                                                                                                                                                                                                                        mem[_1837 + ceil32(return_data.size) + 164] = 160
                                                                                                                                                                                                                        mem[_1837 + ceil32(return_data.size) + 260] = mem[_1837]
                                                                                                                                                                                                                        idx = 0
                                                                                                                                                                                                                        s = _1837 + ceil32(return_data.size) + 292
                                                                                                                                                                                                                        t = _1837 + 32
                                                                                                                                                                                                                        while idx < mem[_1837]:
                                                                                                                                                                                                                            mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                            args Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_1837 + ceil32(return_data.size) + 260 len (32 * mem[_1837]) + 32]
                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[_1837 + ceil32(return_data.size) + 96] = 30
                                                                                                                                                                                                                            mem[_1837 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                            if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                                                                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if not this.address:
                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                            revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            allowance[address(this.address)][stor14].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                                                                                                                                                                                                            emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                            mem[_1837 + ceil32(return_data.size) + 228] = 0
                                                                                                                                                                                                                                            mem[_1837 + ceil32(return_data.size) + 260] = 0
                                                                                                                                                                                                                                            mem[_1837 + ceil32(return_data.size) + 292] = 0
                                                                                                                                                                                                                                            mem[_1837 + ceil32(return_data.size) + 324] = block.timestamp
                                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                args address(this.address), (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                                                                                                                                                                                                            mem[_1837 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                require return_data.size >= 96
                                                                                                                                                                                                                                                emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                                                                                                                                                                                                                                                mem[_1837 + (2 * ceil32(return_data.size)) + 160] = 2
                                                                                                                                                                                                                                                mem[_1837 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                                                                                                                                                                                                                require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                                                                                                mem[_1837 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                                                                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                    mem[_1837 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                    if not this.address:
                                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                            revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                            emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                            mem[_1837 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                            mem[_1837 + (4 * ceil32(return_data.size)) + 260] = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                            mem[_1837 + (4 * ceil32(return_data.size)) + 292] = 0
                                                                                                                                                                                                                                                            mem[_1837 + (4 * ceil32(return_data.size)) + 324] = 160
                                                                                                                                                                                                                                                            mem[_1837 + (4 * ceil32(return_data.size)) + 420] = 2
                                                                                                                                                                                                                                                            idx = 0
                                                                                                                                                                                                                                                            s = _1837 + (4 * ceil32(return_data.size)) + 452
                                                                                                                                                                                                                                                            t = _1837 + (2 * ceil32(return_data.size)) + 192
                                                                                                                                                                                                                                                            while idx < mem[_1837 + (2 * ceil32(return_data.size)) + 160]:
                                                                                                                                                                                                                                                                mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                                                                s = s + 32
                                                                                                                                                                                                                                                                t = t + 32
                                                                                                                                                                                                                                                                continue 
                                                                                                                                                                                                                                                            mem[_1837 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                                                                                                                                                                                                                            mem[_1837 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, mem[_1837 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_1837 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                uint8(stor25.field_0) = 0
                                                                                                                                                                                                                                                                if msg.sender:
                                                                                                                                                                                                                                                                    if this.address:
                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 256] = 38
                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                                                                                        if _20 <= balanceOf[address(msg.sender)]:
                                                                                                                                                                                                                                                                            if balanceOf[address(msg.sender)] < _20:
                                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                balanceOf[address(msg.sender)] -= _20
                                                                                                                                                                                                                                                                                if balanceOf[this.address] > !_20:
                                                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    if balanceOf[this.address] + _20 >= balanceOf[this.address]:
                                                                                                                                                                                                                                                                                        balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                                                                                                                                                                                                                        emit Transfer(_20, msg.sender, this.address);
                                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 352] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 356] = msg.sender
                                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 388] = 64
                                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 420] = mem[96]
                                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                                                                                                                                                                                                                                                        if ceil32(mem[96]) <= mem[96]:
                                                                                                                                                                                                                                                                                            require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                            call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                                                args mem[_1837 + (4 * ceil32(return_data.size)) + 356 len ceil32(mem[96]) + (5 * ceil32(return_data.size)) + 96]
                                                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                            mem[mem[96] + _1837 + (4 * ceil32(return_data.size)) + 452] = 0
                                                                                                                                                                                                                                                                                            require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                            call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                                                args mem[_1837 + (4 * ceil32(return_data.size)) + 356 len ceil32(mem[96]) + (5 * ceil32(return_data.size)) + 96]
                                                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 356] = 32
                                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 388] = 27
                                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 420] = 'SafeMath: addition overflow'
                                                                                                                                                                                                                                                                                        revert with memory
                                                                                                                                                                                                                                                                                          from _1837 + (4 * ceil32(return_data.size)) + 352
                                                                                                                                                                                                                                                                                           len (5 * ceil32(return_data.size)) + 100
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            mem[_1837 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                            mem[_1837 + (4 * ceil32(return_data.size)) + 356] = 32
                                                                                                                                                                                                                                                                            mem[_1837 + (4 * ceil32(return_data.size)) + 388] = 38
                                                                                                                                                                                                                                                                            mem[_1837 + (4 * ceil32(return_data.size)) + 420 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                                                                                                                                                                                                                                                                            mem[_1837 + (4 * ceil32(return_data.size)) + 458] = 0
                                                                                                                                                                                                                                                                            revert with memory
                                                                                                                                                                                                                                                                              from _1837 + (4 * ceil32(return_data.size)) + 352
                                                                                                                                                                                                                                                                               len (5 * ceil32(return_data.size)) + 132
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 260] = 32
                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 292] = 35
                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer to the zero addr'
                                                                                                                                                                                                                                                                        mem[_1837 + (4 * ceil32(return_data.size)) + 356] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                        revert with memory
                                                                                                                                                                                                                                                                          from _1837 + (4 * ceil32(return_data.size)) + 256
                                                                                                                                                                                                                                                                           len (5 * ceil32(return_data.size)) + 132
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    mem[_1837 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                    mem[_1837 + (4 * ceil32(return_data.size)) + 260] = 32
                                                                                                                                                                                                                                                                    mem[_1837 + (4 * ceil32(return_data.size)) + 292] = 37
                                                                                                                                                                                                                                                                    mem[_1837 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer from the zero ad'
                                                                                                                                                                                                                                                                    mem[_1837 + (4 * ceil32(return_data.size)) + 356] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                    revert with memory
                                                                                                                                                                                                                                                                      from _1837 + (4 * ceil32(return_data.size)) + 256
                                                                                                                                                                                                                                                                       len (5 * ceil32(return_data.size)) + 132
                                                                                                                                                                            else:
                                                                                                                                                                                _1733 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + 64
                                                                                                                                                                                mem[_1733] = 26
                                                                                                                                                                                mem[_1733 + 32] = 'SafeMath: division by zero'
                                                                                                                                                                                _1757 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + 64
                                                                                                                                                                                mem[_1757] = 26
                                                                                                                                                                                mem[_1757 + 32] = 'SafeMath: division by zero'
                                                                                                                                                                                _1769 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + 64
                                                                                                                                                                                mem[_1769] = 30
                                                                                                                                                                                mem[_1769 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                _1786 = mem[64]
                                                                                                                                                                                mem[mem[64]] = 2
                                                                                                                                                                                mem[64] = mem[64] + 96
                                                                                                                                                                                mem[_1786 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                                                                                                if 0 >= mem[_1786]:
                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                else:
                                                                                                                                                                                    mem[_1786 + 32] = this.address
                                                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                                    mem[_1786 + 96] = ext_call.return_data[0]
                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                    else:
                                                                                                                                                                                        mem[64] = _1786 + ceil32(return_data.size) + 96
                                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                        if 1 >= mem[_1786]:
                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                        else:
                                                                                                                                                                                            mem[_1786 + 64] = ext_call.return_data[12 len 20]
                                                                                                                                                                                            if not this.address:
                                                                                                                                                                                                revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                            else:
                                                                                                                                                                                                if not uniswapV2RouterAddress:
                                                                                                                                                                                                    revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                else:
                                                                                                                                                                                                    mem[0] = uniswapV2RouterAddress
                                                                                                                                                                                                    mem[32] = sha3(address(this.address), 1)
                                                                                                                                                                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                    mem[_1786 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                    mem[_1786 + ceil32(return_data.size) + 100] = 0
                                                                                                                                                                                                    mem[_1786 + ceil32(return_data.size) + 132] = 0
                                                                                                                                                                                                    mem[_1786 + ceil32(return_data.size) + 164] = 160
                                                                                                                                                                                                    mem[_1786 + ceil32(return_data.size) + 260] = mem[_1786]
                                                                                                                                                                                                    idx = 0
                                                                                                                                                                                                    s = _1786 + ceil32(return_data.size) + 292
                                                                                                                                                                                                    t = _1786 + 32
                                                                                                                                                                                                    while idx < mem[_1786]:
                                                                                                                                                                                                        mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                        s = s + 32
                                                                                                                                                                                                        t = t + 32
                                                                                                                                                                                                        continue 
                                                                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_1786 + ceil32(return_data.size) + 260 len (32 * mem[_1786]) + 32]
                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        mem[_1786 + ceil32(return_data.size) + 96] = 30
                                                                                                                                                                                                        mem[_1786 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                                                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                        mem[_1786 + ceil32(return_data.size) + 228] = 0
                                                                                                                                                                                                                        mem[_1786 + ceil32(return_data.size) + 260] = 0
                                                                                                                                                                                                                        mem[_1786 + ceil32(return_data.size) + 292] = 0
                                                                                                                                                                                                                        mem[_1786 + ceil32(return_data.size) + 324] = block.timestamp
                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                            args address(this.address), 0, 0, 0, 0, block.timestamp
                                                                                                                                                                                                                        mem[_1786 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            require return_data.size >= 96
                                                                                                                                                                                                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                                                                                                                                                                                0,
                                                                                                                                                                                                                            mem[_1786 + (2 * ceil32(return_data.size)) + 160] = 2
                                                                                                                                                                                                                            mem[_1786 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                                                            mem[_1786 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                mem[_1786 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                                                                                                                                                                                                        emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                        mem[_1786 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                        mem[_1786 + (4 * ceil32(return_data.size)) + 260] = balanceOf[address(this.address)]
                                                                                                                                                                                                                                        mem[_1786 + (4 * ceil32(return_data.size)) + 292] = 0
                                                                                                                                                                                                                                        mem[_1786 + (4 * ceil32(return_data.size)) + 324] = 160
                                                                                                                                                                                                                                        mem[_1786 + (4 * ceil32(return_data.size)) + 420] = 2
                                                                                                                                                                                                                                        idx = 0
                                                                                                                                                                                                                                        s = _1786 + (4 * ceil32(return_data.size)) + 452
                                                                                                                                                                                                                                        t = _1786 + (2 * ceil32(return_data.size)) + 192
                                                                                                                                                                                                                                        while idx < mem[_1786 + (2 * ceil32(return_data.size)) + 160]:
                                                                                                                                                                                                                                            mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                                                        mem[_1786 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                                                                                                                                                                                                        mem[_1786 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, mem[_1786 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_1786 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            uint8(stor25.field_0) = 0
                                                                                                                                                                                                                                            if msg.sender:
                                                                                                                                                                                                                                                if this.address:
                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 256] = 38
                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                                                                    if _20 <= balanceOf[address(msg.sender)]:
                                                                                                                                                                                                                                                        if balanceOf[address(msg.sender)] < _20:
                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            balanceOf[address(msg.sender)] -= _20
                                                                                                                                                                                                                                                            if balanceOf[this.address] > !_20:
                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                if balanceOf[this.address] + _20 >= balanceOf[this.address]:
                                                                                                                                                                                                                                                                    balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                                                                                                                                                                                                    emit Transfer(_20, msg.sender, this.address);
                                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 352] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 356] = msg.sender
                                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 388] = 64
                                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 420] = mem[96]
                                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                                                                                                                                                                                                                                    if ceil32(mem[96]) <= mem[96]:
                                                                                                                                                                                                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                            args mem[_1786 + (4 * ceil32(return_data.size)) + 356 len ceil32(mem[96]) + (5 * ceil32(return_data.size)) + 96]
                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        mem[mem[96] + _1786 + (4 * ceil32(return_data.size)) + 452] = 0
                                                                                                                                                                                                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                            args mem[_1786 + (4 * ceil32(return_data.size)) + 356 len ceil32(mem[96]) + (5 * ceil32(return_data.size)) + 96]
                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 356] = 32
                                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 388] = 27
                                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 420] = 'SafeMath: addition overflow'
                                                                                                                                                                                                                                                                    revert with memory
                                                                                                                                                                                                                                                                      from _1786 + (4 * ceil32(return_data.size)) + 352
                                                                                                                                                                                                                                                                       len (5 * ceil32(return_data.size)) + 100
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        mem[_1786 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                        mem[_1786 + (4 * ceil32(return_data.size)) + 356] = 32
                                                                                                                                                                                                                                                        mem[_1786 + (4 * ceil32(return_data.size)) + 388] = 38
                                                                                                                                                                                                                                                        mem[_1786 + (4 * ceil32(return_data.size)) + 420 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                                                                                                                                                                                                                                                        var309001 = 64
                                                                                                                                                                                                                                                        mem[_1786 + (4 * ceil32(return_data.size)) + 458] = 0
                                                                                                                                                                                                                                                        revert with memory
                                                                                                                                                                                                                                                          from _1786 + (4 * ceil32(return_data.size)) + 352
                                                                                                                                                                                                                                                           len (5 * ceil32(return_data.size)) + 132
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 260] = 32
                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 292] = 35
                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer to the zero addr'
                                                                                                                                                                                                                                                    mem[_1786 + (4 * ceil32(return_data.size)) + 356] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                    revert with memory
                                                                                                                                                                                                                                                      from _1786 + (4 * ceil32(return_data.size)) + 256
                                                                                                                                                                                                                                                       len (5 * ceil32(return_data.size)) + 132
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                mem[_1786 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                mem[_1786 + (4 * ceil32(return_data.size)) + 260] = 32
                                                                                                                                                                                                                                                mem[_1786 + (4 * ceil32(return_data.size)) + 292] = 37
                                                                                                                                                                                                                                                mem[_1786 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer from the zero ad'
                                                                                                                                                                                                                                                mem[_1786 + (4 * ceil32(return_data.size)) + 356] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                revert with memory
                                                                                                                                                                                                                                                  from _1786 + (4 * ceil32(return_data.size)) + 256
                                                                                                                                                                                                                                                   len (5 * ceil32(return_data.size)) + 132
                                                                                                                                                            else:
                                                                                                                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                mem[mem[64] + 4] = 32
                                                                                                                                                                mem[mem[64] + 36] = 38
                                                                                                                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1647 + 70 len 26]
                                                                                                                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                                        else:
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 292] = 32
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 324] = 34
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                                                            revert with memory
                                                                                              from ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288
                                                                                               len ceil32(return_data.size) + 132
                                                                                    else:
                                                                                        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 292] = 32
                                                                                        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 324] = 36
                                                                                        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                                                                                        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                                                        revert with memory
                                                                                          from ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288
                                                                                           len ceil32(return_data.size) + 132
                                                                else:
                                                                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = 26
                                                                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                                                                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 192] = 2
                                                                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 224] = this.address
                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                            gas gas_remaining wei
                                                                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[64] = ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        mem[ceil32(arg1.length) + ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                                                        if this.address:
                                                                            if uniswapV2RouterAddress:
                                                                                mem[0] = uniswapV2RouterAddress
                                                                                mem[32] = sha3(address(this.address), 1)
                                                                                allowance[address(this.address)][stor14].field_0 = 0
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288] = 0
                                                                                emit Approval(mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 292] = 0
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 324] = 0
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 356] = 160
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 452] = 2
                                                                                idx = 0
                                                                                s = ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 484
                                                                                t = ceil32(arg1.length) + ceil32(return_data.size) + 224
                                                                                while idx < mem[ceil32(arg1.length) + ceil32(return_data.size) + 192]:
                                                                                    mem[s] = mem[t + 12 len 20]
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 388] = this.address
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
                                                                                require ext_code.size(uniswapV2RouterAddress)
                                                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[mem[64] + 4 len ceil32(arg1.length) + (2 * ceil32(return_data.size)) + (32 * mem[ceil32(arg1.length) + ceil32(return_data.size) + 192]) + -mem[64] + 480]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _558 = mem[64]
                                                                                    mem[64] = mem[64] + 64
                                                                                    mem[_558] = 30
                                                                                    mem[_558 + 32] = 'SafeMath: subtraction overflow'
                                                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                    else:
                                                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            call futurUsePoolAddress with:
                                                                                                 gas 2300 wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                if balanceOf[address(this.address)]:
                                                                                                    if balanceOf[address(this.address)] and rewardsFee > -1 / balanceOf[address(this.address)]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if not balanceOf[address(this.address)]:
                                                                                                            revert with 0, 18
                                                                                                        else:
                                                                                                            if balanceOf[address(this.address)] * rewardsFee / balanceOf[address(this.address)] != rewardsFee:
                                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                                            else:
                                                                                                                _577 = mem[64]
                                                                                                                mem[64] = mem[64] + 64
                                                                                                                mem[_577] = 26
                                                                                                                mem[_577 + 32] = 'SafeMath: division by zero'
                                                                                                                if balanceOf[address(this.address)] * rewardsFee / 100:
                                                                                                                    if balanceOf[address(this.address)] * rewardsFee / 100 and stor24 > -1 / balanceOf[address(this.address)] * rewardsFee / 100:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if not balanceOf[address(this.address)] * rewardsFee / 100:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            if balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / balanceOf[address(this.address)] * rewardsFee / 100 != stor24:
                                                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                                                            else:
                                                                                                                                _596 = mem[64]
                                                                                                                                mem[64] = mem[64] + 64
                                                                                                                                mem[_596] = 26
                                                                                                                                mem[_596 + 32] = 'SafeMath: division by zero'
                                                                                                                                _618 = mem[64]
                                                                                                                                mem[mem[64]] = 2
                                                                                                                                mem[64] = mem[64] + 96
                                                                                                                                mem[_618 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                                                if 0 >= mem[_618]:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    mem[_618 + 32] = this.address
                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                    mem[_618 + 96] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        mem[64] = _618 + ceil32(return_data.size) + 96
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                        if 1 >= mem[_618]:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            mem[_618 + 64] = ext_call.return_data[12 len 20]
                                                                                                                                            if not this.address:
                                                                                                                                                revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                            else:
                                                                                                                                                if not uniswapV2RouterAddress:
                                                                                                                                                    revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                else:
                                                                                                                                                    mem[0] = uniswapV2RouterAddress
                                                                                                                                                    mem[32] = sha3(address(this.address), 1)
                                                                                                                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100
                                                                                                                                                    emit Approval((balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100), this.address, uniswapV2RouterAddress);
                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100
                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 132] = 0
                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 164] = 160
                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 260] = mem[_618]
                                                                                                                                                    idx = 0
                                                                                                                                                    s = _618 + ceil32(return_data.size) + 292
                                                                                                                                                    t = _618 + 32
                                                                                                                                                    while idx < mem[_618]:
                                                                                                                                                        mem[s] = mem[t + 12 len 20]
                                                                                                                                                        idx = idx + 1
                                                                                                                                                        s = s + 32
                                                                                                                                                        t = t + 32
                                                                                                                                                        continue 
                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                        args balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100, 0, 160, address(this.address), block.timestamp, mem[_618 + ceil32(return_data.size) + 260 len (32 * mem[_618]) + 32]
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        mem[_618 + ceil32(return_data.size) + 96] = 30
                                                                                                                                                        mem[_618 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                                                                                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                        else:
                                                                                                                                                            if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                call distributionPoolAddress with:
                                                                                                                                                                     gas 2300 wei
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 160] = 30
                                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                                                                                                                                                    if balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100 > balanceOf[address(this.address)] * rewardsFee / 100:
                                                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                    else:
                                                                                                                                                                        if balanceOf[address(this.address)] * rewardsFee / 100 < balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100:
                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                        else:
                                                                                                                                                                            if not this.address:
                                                                                                                                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                                                                                                                                            else:
                                                                                                                                                                                if not distributionPoolAddress:
                                                                                                                                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                                                                                                                                else:
                                                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 224] = 38
                                                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                    if (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100) > balanceOf[address(this.address)]:
                                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                                    32,
                                                                                                                                                                                                    38,
                                                                                                                                                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_618 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                                                                                                                                                                    0
                                                                                                                                                                                    else:
                                                                                                                                                                                        if balanceOf[address(this.address)] < (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100):
                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                        else:
                                                                                                                                                                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * rewardsFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100)
                                                                                                                                                                                            if balanceOf[stor17] > !((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100)):
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                if balanceOf[stor17] + (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100) < balanceOf[stor17]:
                                                                                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                                                                else:
                                                                                                                                                                                                    balanceOf[stor17] = balanceOf[stor17] + (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100)
                                                                                                                                                                                                    emit Transfer(((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor24 / 100)), this.address, distributionPoolAddress);
                                                                                                                                                                                                    if balanceOf[address(this.address)]:
                                                                                                                                                                                                        if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if not balanceOf[address(this.address)]:
                                                                                                                                                                                                                revert with 0, 18
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if balanceOf[address(this.address)] * liquidityPoolFee / balanceOf[address(this.address)] != liquidityPoolFee:
                                                                                                                                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 320] = 26
                                                                                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                                                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 384] = 26
                                                                                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                                                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 448] = 30
                                                                                                                                                                                                                    mem[_618 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                    if balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2 > balanceOf[address(this.address)] * liquidityPoolFee / 100:
                                                                                                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[_618 + ceil32(return_data.size) + 512] = 2
                                                                                                                                                                                                                            mem[_618 + ceil32(return_data.size) + 544] = this.address
                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                                                            mem[_618 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                mem[_618 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_255 = 0
                                                                                                                                                                                                                                        emit Approval((balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 612] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 644] = 0
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 676] = 160
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 772] = 2
                                                                                                                                                                                                                                        idx = 0
                                                                                                                                                                                                                                        s = _618 + (2 * ceil32(return_data.size)) + 804
                                                                                                                                                                                                                                        t = _618 + ceil32(return_data.size) + 544
                                                                                                                                                                                                                                        while idx < mem[_618 + ceil32(return_data.size) + 512]:
                                                                                                                                                                                                                                            mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                            args Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_618 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_618 + ceil32(return_data.size) + 512]) + 32]
                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 608] = 30
                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                                            if eth.balance(this.address) <= eth.balance(this.address):
                                                                                                                                                                                                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if this.address:
                                                                                                                                                                                                                                                        if uniswapV2RouterAddress:
                                                                                                                                                                                                                                                            allowance[address(this.address)][stor14].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                                                                                                                                                                                                                            emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 740] = 0
                                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 772] = 0
                                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 804] = 0
                                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                args mem[_618 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                require return_data.size >= 96
                                                                                                                                                                                                                                                                mem[_618 + (4 * ceil32(return_data.size)) + 672] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                                                                                mem[_618 + (4 * ceil32(return_data.size)) + 704] = 0
                                                                                                                                                                                                                                                                mem[_618 + (4 * ceil32(return_data.size)) + 736] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                                                                                                                                                                                                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                                                                                                                                                                                                                    mem[_618 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                                                                                                                                                                                                                                mem[_618 + (4 * ceil32(return_data.size)) + 672] = 2
                                                                                                                                                                                                                                                                mem[_618 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                                                                                                                                                                                                                                require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                                                                                                                mem[_618 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                                                                                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                                                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                                    mem[_618 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                                    if not this.address:
                                                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                                            revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                                            emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                                            mem[_618 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                            mem[_618 + (6 * ceil32(return_data.size)) + 772] = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                                            mem[_618 + (6 * ceil32(return_data.size)) + 836] = 160
                                                                                                                                                                                                                                                                            idx = 0
                                                                                                                                                                                                                                                                            s = _618 + (6 * ceil32(return_data.size)) + 964
                                                                                                                                                                                                                                                                            t = _618 + (4 * ceil32(return_data.size)) + 704
                                                                                                                                                                                                                                                                            while idx < 2:
                                                                                                                                                                                                                                                                                mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                                                                                s = s + 32
                                                                                                                                                                                                                                                                                t = t + 32
                                                                                                                                                                                                                                                                                continue 
                                                                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[_618 + (6 * ceil32(return_data.size)) + 964 len 64]
                                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                uint8(stor25.field_0) = 0
                                                                                                                                                                                                                                                                                if not msg.sender:
                                                                                                                                                                                                                                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    if not this.address:
                                                                                                                                                                                                                                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 768] = 38
                                                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                                                                                                        if _20 > balanceOf[address(msg.sender)]:
                                                                                                                                                                                                                                                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                            if balanceOf[address(msg.sender)] < _20:
                                                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                                balanceOf[address(msg.sender)] -= _20
                                                                                                                                                                                                                                                                                                if balanceOf[this.address] > !_20:
                                                                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                                    if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                                                                                                                                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                                        balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                                                                                                                                                                                                                                        emit Transfer(_20, msg.sender, this.address);
                                                                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 900] = 64
                                                                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 932] = mem[96]
                                                                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                                                                                                                                                                                                                                                                        if ceil32(mem[96]) <= mem[96]:
                                                                                                                                                                                                                                                                                                            require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                                            call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                                                                args msg.sender, Array(len=mem[96], data=mem[_618 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])])
                                                                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                                            mem[mem[96] + _618 + (6 * ceil32(return_data.size)) + 964] = 0
                                                                                                                                                                                                                                                                                                            require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                                            call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                                                                args msg.sender, Array(len=mem[96], data=mem[_618 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])])
                                                                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 708] = 34
                                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                            revert with memory
                                                                                                                                                                                                                                                              from _618 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                                               len ceil32(return_data.size) + 132
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 708] = 36
                                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                        revert with memory
                                                                                                                                                                                                                                                          from _618 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                                           len ceil32(return_data.size) + 132
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                mem[_618 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                mem[_618 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                                mem[_618 + (2 * ceil32(return_data.size)) + 708] = 30
                                                                                                                                                                                                                                                mem[_618 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                                                mem[_618 + (2 * ceil32(return_data.size)) + 770] = 0
                                                                                                                                                                                                                                                revert with memory
                                                                                                                                                                                                                                                  from _618 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                                   len ceil32(return_data.size) + 100
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        mem[_618 + ceil32(return_data.size) + 320] = 26
                                                                                                                                                                                                        mem[_618 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                                                                                                                                                                                        mem[_618 + ceil32(return_data.size) + 384] = 26
                                                                                                                                                                                                        mem[_618 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                                                                                                                                                                                        mem[_618 + ceil32(return_data.size) + 448] = 30
                                                                                                                                                                                                        mem[_618 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                        mem[_618 + ceil32(return_data.size) + 512] = 2
                                                                                                                                                                                                        mem[_618 + ceil32(return_data.size) + 544] = this.address
                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                                                        mem[_618 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                            mem[_618 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                            if not this.address:
                                                                                                                                                                                                                revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if not uniswapV2RouterAddress:
                                                                                                                                                                                                                    revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                                                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                    mem[_618 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                    mem[_618 + (2 * ceil32(return_data.size)) + 612] = 0
                                                                                                                                                                                                                    mem[_618 + (2 * ceil32(return_data.size)) + 644] = 0
                                                                                                                                                                                                                    mem[_618 + (2 * ceil32(return_data.size)) + 676] = 160
                                                                                                                                                                                                                    mem[_618 + (2 * ceil32(return_data.size)) + 772] = 2
                                                                                                                                                                                                                    idx = 0
                                                                                                                                                                                                                    s = _618 + (2 * ceil32(return_data.size)) + 804
                                                                                                                                                                                                                    t = _618 + ceil32(return_data.size) + 544
                                                                                                                                                                                                                    while idx < mem[_618 + ceil32(return_data.size) + 512]:
                                                                                                                                                                                                                        mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                        s = s + 32
                                                                                                                                                                                                                        t = t + 32
                                                                                                                                                                                                                        continue 
                                                                                                                                                                                                                    mem[_618 + (2 * ceil32(return_data.size)) + 708] = this.address
                                                                                                                                                                                                                    mem[_618 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                                                                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_618 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_618 + ceil32(return_data.size) + 512]) + 32]
                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 608] = 30
                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                        if eth.balance(this.address) <= eth.balance(this.address):
                                                                                                                                                                                                                            if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if this.address:
                                                                                                                                                                                                                                    if uniswapV2RouterAddress:
                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                                                                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 676] = this.address
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 708] = 0
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 740] = 0
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 772] = 0
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 804] = 0
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                            args mem[_618 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            require return_data.size >= 96
                                                                                                                                                                                                                                            mem[_618 + (4 * ceil32(return_data.size)) + 672] = 0
                                                                                                                                                                                                                                            mem[_618 + (4 * ceil32(return_data.size)) + 704] = 0
                                                                                                                                                                                                                                            mem[_618 + (4 * ceil32(return_data.size)) + 736] = 0
                                                                                                                                                                                                                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                                                                                                                                                                                                mem[_618 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                                                                                                                                                                                                                            mem[_618 + (4 * ceil32(return_data.size)) + 672] = 2
                                                                                                                                                                                                                                            mem[_618 + (4 * ceil32(return_data.size)) + 704] = this.address
                                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                                                                            mem[_618 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                mem[_618 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                        emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 772] = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 836] = 160
                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 932] = 2
                                                                                                                                                                                                                                                        idx = 0
                                                                                                                                                                                                                                                        s = _618 + (6 * ceil32(return_data.size)) + 964
                                                                                                                                                                                                                                                        t = _618 + (4 * ceil32(return_data.size)) + 704
                                                                                                                                                                                                                                                        while idx < 2:
                                                                                                                                                                                                                                                            mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[_618 + (6 * ceil32(return_data.size)) + 964 len 64]
                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            uint8(stor25.field_0) = 0
                                                                                                                                                                                                                                                            if not msg.sender:
                                                                                                                                                                                                                                                                revert with 0, 
                                                                                                                                                                                                                                                                            'ERC20: transfer from the zero address',
                                                                                                                                                                                                                                                                            mem[_618 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                                                                                                                'ERC20: transfer to the zero address',
                                                                                                                                                                                                                                                                                mem[_618 + (6 * ceil32(return_data.size)) + 900 len 9 * ceil32(return_data.size)]
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    mem[_618 + (6 * ceil32(return_data.size)) + 768] = 38
                                                                                                                                                                                                                                                                    mem[_618 + (6 * ceil32(return_data.size)) + 800 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                                                                                    if _20 <= balanceOf[address(msg.sender)]:
                                                                                                                                                                                                                                                                        if balanceOf[address(msg.sender)] < _20:
                                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            balanceOf[address(msg.sender)] -= _20
                                                                                                                                                                                                                                                                            if balanceOf[this.address] > !_20:
                                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                                                                                                                                                                                                                                    revert with 0, 'SafeMath: addition overflow', mem[_618 + (6 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                                                                                                                                                                                                                    emit Transfer(_20, msg.sender, this.address);
                                                                                                                                                                                                                                                                                    mem[_618 + (6 * ceil32(return_data.size)) + 864] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                    mem[_618 + (6 * ceil32(return_data.size)) + 868] = msg.sender
                                                                                                                                                                                                                                                                                    mem[_618 + (6 * ceil32(return_data.size)) + 900] = 64
                                                                                                                                                                                                                                                                                    mem[_618 + (6 * ceil32(return_data.size)) + 932] = mem[96]
                                                                                                                                                                                                                                                                                    mem[_618 + (6 * ceil32(return_data.size)) + 964 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                                                                                                                                                                                                                                                    if ceil32(mem[96]) <= mem[96]:
                                                                                                                                                                                                                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                                            args msg.sender, Array(len=mem[96], data=mem[_618 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[96])])
                                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                        mem[mem[96] + _618 + (6 * ceil32(return_data.size)) + 964] = 0
                                                                                                                                                                                                                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                                            args msg.sender, Array(len=mem[96], data=mem[_618 + (6 * ceil32(return_data.size)) + 964 len (9 * ceil32(return_data.size)) + ceil32(mem[96])])
                                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        mem[_618 + (6 * ceil32(return_data.size)) + 970] = 0
                                                                                                                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                                                                                                                    32,
                                                                                                                                                                                                                                                                                    38,
                                                                                                                                                                                                                                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                                                                                                                                                                                                                                    mem[_618 + (6 * ceil32(return_data.size)) + 970 len (9 * ceil32(return_data.size)) + 26]
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 708] = 34
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                                                                                                                                                                                                                        mem[_618 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                        revert with memory
                                                                                                                                                                                                                                          from _618 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                           len ceil32(return_data.size) + 132
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[_618 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                    mem[_618 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                                    mem[_618 + (2 * ceil32(return_data.size)) + 708] = 36
                                                                                                                                                                                                                                    mem[_618 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                                                                                                                                                                                                                    mem[_618 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                    revert with memory
                                                                                                                                                                                                                                      from _618 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                                       len ceil32(return_data.size) + 132
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 676] = 32
                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 708] = 30
                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                            mem[_618 + (2 * ceil32(return_data.size)) + 770] = 0
                                                                                                                                                                                                                            revert with memory
                                                                                                                                                                                                                              from _618 + (2 * ceil32(return_data.size)) + 672
                                                                                                                                                                                                                               len ceil32(return_data.size) + 100
                                                                                                                else:
                                                                                                                    _582 = mem[64]
                                                                                                                    mem[64] = mem[64] + 64
                                                                                                                    mem[_582] = 26
                                                                                                                    mem[_582 + 32] = 'SafeMath: division by zero'
                                                                                                                    _603 = mem[64]
                                                                                                                    mem[mem[64]] = 2
                                                                                                                    mem[64] = mem[64] + 96
                                                                                                                    mem[_603 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                                    if 0 >= mem[_603]:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        mem[_603 + 32] = this.address
                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[_603 + 96] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            mem[64] = _603 + ceil32(return_data.size) + 96
                                                                                                                            require return_data.size >= 32
                                                                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                            if 1 >= mem[_603]:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                mem[_603 + 64] = ext_call.return_data[12 len 20]
                                                                                                                                if not this.address:
                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                else:
                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                    else:
                                                                                                                                        mem[0] = uniswapV2RouterAddress
                                                                                                                                        mem[32] = sha3(address(this.address), 1)
                                                                                                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                        mem[_603 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                        mem[_603 + ceil32(return_data.size) + 100] = 0
                                                                                                                                        mem[_603 + ceil32(return_data.size) + 132] = 0
                                                                                                                                        mem[_603 + ceil32(return_data.size) + 164] = 160
                                                                                                                                        mem[_603 + ceil32(return_data.size) + 260] = mem[_603]
                                                                                                                                        idx = 0
                                                                                                                                        s = _603 + ceil32(return_data.size) + 292
                                                                                                                                        t = _603 + 32
                                                                                                                                        while idx < mem[_603]:
                                                                                                                                            mem[s] = mem[t + 12 len 20]
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = s + 32
                                                                                                                                            t = t + 32
                                                                                                                                            continue 
                                                                                                                                        mem[_603 + ceil32(return_data.size) + 196] = this.address
                                                                                                                                        mem[_603 + ceil32(return_data.size) + 228] = block.timestamp
                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args mem[mem[64] + 4 len _603 + ceil32(return_data.size) + (32 * mem[_603]) + -mem[64] + 288]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _1559 = mem[64]
                                                                                                                                            mem[64] = mem[64] + 64
                                                                                                                                            mem[_1559] = 30
                                                                                                                                            mem[_1559 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                                            if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                            else:
                                                                                                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    call distributionPoolAddress with:
                                                                                                                                                         gas 2300 wei
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        _1589 = mem[64]
                                                                                                                                                        mem[64] = mem[64] + 64
                                                                                                                                                        mem[_1589] = 30
                                                                                                                                                        mem[_1589 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                                                        if 0 > balanceOf[address(this.address)] * rewardsFee / 100:
                                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                        else:
                                                                                                                                                            if balanceOf[address(this.address)] * rewardsFee / 100 < 0:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                if not this.address:
                                                                                                                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                                                                                                                else:
                                                                                                                                                                    if not distributionPoolAddress:
                                                                                                                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                                                                                                                    else:
                                                                                                                                                                        _1653 = mem[64]
                                                                                                                                                                        mem[64] = mem[64] + 96
                                                                                                                                                                        mem[_1653] = 38
                                                                                                                                                                        mem[_1653 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                        if balanceOf[address(this.address)] * rewardsFee / 100 <= balanceOf[address(this.address)]:
                                                                                                                                                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)] * rewardsFee / 100:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                balanceOf[address(this.address)] -= balanceOf[address(this.address)] * rewardsFee / 100
                                                                                                                                                                                if balanceOf[stor17] > !(balanceOf[address(this.address)] * rewardsFee / 100):
                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                else:
                                                                                                                                                                                    if balanceOf[stor17] + (balanceOf[address(this.address)] * rewardsFee / 100) < balanceOf[stor17]:
                                                                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                                                    else:
                                                                                                                                                                                        mem[0] = distributionPoolAddress
                                                                                                                                                                                        mem[32] = 0
                                                                                                                                                                                        balanceOf[stor17] += balanceOf[address(this.address)] * rewardsFee / 100
                                                                                                                                                                                        emit Transfer((balanceOf[address(this.address)] * rewardsFee / 100), this.address, distributionPoolAddress);
                                                                                                                                                                                        if balanceOf[address(this.address)]:
                                                                                                                                                                                            if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                            else:
                                                                                                                                                                                                if not balanceOf[address(this.address)]:
                                                                                                                                                                                                    revert with 0, 18
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if balanceOf[address(this.address)] * liquidityPoolFee / balanceOf[address(this.address)] != liquidityPoolFee:
                                                                                                                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        _1751 = mem[64]
                                                                                                                                                                                                        mem[64] = mem[64] + 64
                                                                                                                                                                                                        mem[_1751] = 26
                                                                                                                                                                                                        mem[_1751 + 32] = 'SafeMath: division by zero'
                                                                                                                                                                                                        _1765 = mem[64]
                                                                                                                                                                                                        mem[64] = mem[64] + 64
                                                                                                                                                                                                        mem[_1765] = 26
                                                                                                                                                                                                        mem[_1765 + 32] = 'SafeMath: division by zero'
                                                                                                                                                                                                        _1777 = mem[64]
                                                                                                                                                                                                        mem[64] = mem[64] + 64
                                                                                                                                                                                                        mem[_1777] = 30
                                                                                                                                                                                                        mem[_1777 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                        if balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2 > balanceOf[address(this.address)] * liquidityPoolFee / 100:
                                                                                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                _1841 = mem[64]
                                                                                                                                                                                                                mem[mem[64]] = 2
                                                                                                                                                                                                                mem[64] = mem[64] + 96
                                                                                                                                                                                                                mem[_1841 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                                                                                                                                if 0 >= mem[_1841]:
                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[_1841 + 32] = this.address
                                                                                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                    staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                                                                    mem[_1841 + 96] = ext_call.return_data[0]
                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        mem[64] = _1841 + ceil32(return_data.size) + 96
                                                                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                        if 1 >= mem[_1841]:
                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[_1841 + 64] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                            if not this.address:
                                                                                                                                                                                                                                revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[0] = uniswapV2RouterAddress
                                                                                                                                                                                                                                    mem[32] = sha3(address(this.address), 1)
                                                                                                                                                                                                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                                                                                                                                                                                                    emit Approval((balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                    mem[_1841 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                    mem[_1841 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                                                    mem[_1841 + ceil32(return_data.size) + 132] = 0
                                                                                                                                                                                                                                    mem[_1841 + ceil32(return_data.size) + 164] = 160
                                                                                                                                                                                                                                    mem[_1841 + ceil32(return_data.size) + 260] = mem[_1841]
                                                                                                                                                                                                                                    idx = 0
                                                                                                                                                                                                                                    s = _1841 + ceil32(return_data.size) + 292
                                                                                                                                                                                                                                    t = _1841 + 32
                                                                                                                                                                                                                                    while idx < mem[_1841]:
                                                                                                                                                                                                                                        mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                        s = s + 32
                                                                                                                                                                                                                                        t = t + 32
                                                                                                                                                                                                                                        continue 
                                                                                                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                                        args Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_1841 + ceil32(return_data.size) + 260 len (32 * mem[_1841]) + 32]
                                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[_1841 + ceil32(return_data.size) + 96] = 30
                                                                                                                                                                                                                                        mem[_1841 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                                        if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                                                                                                                                                                                                                        emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                        mem[_1841 + ceil32(return_data.size) + 228] = 0
                                                                                                                                                                                                                                                        mem[_1841 + ceil32(return_data.size) + 260] = 0
                                                                                                                                                                                                                                                        mem[_1841 + ceil32(return_data.size) + 292] = 0
                                                                                                                                                                                                                                                        mem[_1841 + ceil32(return_data.size) + 324] = block.timestamp
                                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                            args address(this.address), (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                                                                                                                                                                                                                        mem[_1841 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            require return_data.size >= 96
                                                                                                                                                                                                                                                            emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                                                                                                                                                                                                                                                            mem[_1841 + (2 * ceil32(return_data.size)) + 160] = 2
                                                                                                                                                                                                                                                            mem[_1841 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                                                                                            mem[_1841 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                                mem[_1841 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                                        emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                                        mem[_1841 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                        mem[_1841 + (4 * ceil32(return_data.size)) + 260] = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                                        mem[_1841 + (4 * ceil32(return_data.size)) + 292] = 0
                                                                                                                                                                                                                                                                        mem[_1841 + (4 * ceil32(return_data.size)) + 324] = 160
                                                                                                                                                                                                                                                                        mem[_1841 + (4 * ceil32(return_data.size)) + 420] = 2
                                                                                                                                                                                                                                                                        idx = 0
                                                                                                                                                                                                                                                                        s = _1841 + (4 * ceil32(return_data.size)) + 452
                                                                                                                                                                                                                                                                        t = _1841 + (2 * ceil32(return_data.size)) + 192
                                                                                                                                                                                                                                                                        while idx < mem[_1841 + (2 * ceil32(return_data.size)) + 160]:
                                                                                                                                                                                                                                                                            mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                                                                                        mem[_1841 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                                                                                                                                                                                                                                        mem[_1841 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, mem[_1841 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_1841 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            uint8(stor25.field_0) = 0
                                                                                                                                                                                                                                                                            if msg.sender:
                                                                                                                                                                                                                                                                                if this.address:
                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 256] = 38
                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                                                                                                    if _20 <= balanceOf[address(msg.sender)]:
                                                                                                                                                                                                                                                                                        if balanceOf[address(msg.sender)] < _20:
                                                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                            balanceOf[address(msg.sender)] -= _20
                                                                                                                                                                                                                                                                                            if balanceOf[this.address] > !_20:
                                                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                                if balanceOf[this.address] + _20 >= balanceOf[this.address]:
                                                                                                                                                                                                                                                                                                    balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                                                                                                                                                                                                                                    emit Transfer(_20, msg.sender, this.address);
                                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 352] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 356] = msg.sender
                                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 388] = 64
                                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 420] = mem[96]
                                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                                                                                                                                                                                                                                                                    if ceil32(mem[96]) <= mem[96]:
                                                                                                                                                                                                                                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                                                            args mem[_1841 + (4 * ceil32(return_data.size)) + 356 len ceil32(mem[96]) + (5 * ceil32(return_data.size)) + 96]
                                                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                                        mem[mem[96] + _1841 + (4 * ceil32(return_data.size)) + 452] = 0
                                                                                                                                                                                                                                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                                                            args mem[_1841 + (4 * ceil32(return_data.size)) + 356 len ceil32(mem[96]) + (5 * ceil32(return_data.size)) + 96]
                                                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 356] = 32
                                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 388] = 27
                                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 420] = 'SafeMath: addition overflow'
                                                                                                                                                                                                                                                                                                    revert with memory
                                                                                                                                                                                                                                                                                                      from _1841 + (4 * ceil32(return_data.size)) + 352
                                                                                                                                                                                                                                                                                                       len (5 * ceil32(return_data.size)) + 100
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                        mem[_1841 + (4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                        mem[_1841 + (4 * ceil32(return_data.size)) + 356] = 32
                                                                                                                                                                                                                                                                                        mem[_1841 + (4 * ceil32(return_data.size)) + 388] = 38
                                                                                                                                                                                                                                                                                        mem[_1841 + (4 * ceil32(return_data.size)) + 420 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                                                                                                                                                                                                                                                                                        mem[_1841 + (4 * ceil32(return_data.size)) + 458] = 0
                                                                                                                                                                                                                                                                                        revert with memory
                                                                                                                                                                                                                                                                                          from _1841 + (4 * ceil32(return_data.size)) + 352
                                                                                                                                                                                                                                                                                           len (5 * ceil32(return_data.size)) + 132
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 260] = 32
                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 292] = 35
                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer to the zero addr'
                                                                                                                                                                                                                                                                                    mem[_1841 + (4 * ceil32(return_data.size)) + 356] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                    revert with memory
                                                                                                                                                                                                                                                                                      from _1841 + (4 * ceil32(return_data.size)) + 256
                                                                                                                                                                                                                                                                                       len (5 * ceil32(return_data.size)) + 132
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                mem[_1841 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                mem[_1841 + (4 * ceil32(return_data.size)) + 260] = 32
                                                                                                                                                                                                                                                                                mem[_1841 + (4 * ceil32(return_data.size)) + 292] = 37
                                                                                                                                                                                                                                                                                mem[_1841 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer from the zero ad'
                                                                                                                                                                                                                                                                                mem[_1841 + (4 * ceil32(return_data.size)) + 356] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                revert with memory
                                                                                                                                                                                                                                                                                  from _1841 + (4 * ceil32(return_data.size)) + 256
                                                                                                                                                                                                                                                                                   len (5 * ceil32(return_data.size)) + 132
                                                                                                                                                                                        else:
                                                                                                                                                                                            _1735 = mem[64]
                                                                                                                                                                                            mem[64] = mem[64] + 64
                                                                                                                                                                                            mem[_1735] = 26
                                                                                                                                                                                            mem[_1735 + 32] = 'SafeMath: division by zero'
                                                                                                                                                                                            _1759 = mem[64]
                                                                                                                                                                                            mem[64] = mem[64] + 64
                                                                                                                                                                                            mem[_1759] = 26
                                                                                                                                                                                            mem[_1759 + 32] = 'SafeMath: division by zero'
                                                                                                                                                                                            _1771 = mem[64]
                                                                                                                                                                                            mem[64] = mem[64] + 64
                                                                                                                                                                                            mem[_1771] = 30
                                                                                                                                                                                            mem[_1771 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                            _1792 = mem[64]
                                                                                                                                                                                            mem[mem[64]] = 2
                                                                                                                                                                                            mem[64] = mem[64] + 96
                                                                                                                                                                                            mem[_1792 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                                                                                                            if 0 >= mem[_1792]:
                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                            else:
                                                                                                                                                                                                mem[_1792 + 32] = this.address
                                                                                                                                                                                                require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                                                mem[_1792 + 96] = ext_call.return_data[0]
                                                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                else:
                                                                                                                                                                                                    mem[64] = _1792 + ceil32(return_data.size) + 96
                                                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                    if 1 >= mem[_1792]:
                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        mem[_1792 + 64] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                        if not this.address:
                                                                                                                                                                                                            revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if not uniswapV2RouterAddress:
                                                                                                                                                                                                                revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                mem[0] = uniswapV2RouterAddress
                                                                                                                                                                                                                mem[32] = sha3(address(this.address), 1)
                                                                                                                                                                                                                allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                                                                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                mem[_1792 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                mem[_1792 + ceil32(return_data.size) + 100] = 0
                                                                                                                                                                                                                mem[_1792 + ceil32(return_data.size) + 132] = 0
                                                                                                                                                                                                                mem[_1792 + ceil32(return_data.size) + 164] = 160
                                                                                                                                                                                                                mem[_1792 + ceil32(return_data.size) + 260] = mem[_1792]
                                                                                                                                                                                                                idx = 0
                                                                                                                                                                                                                s = _1792 + ceil32(return_data.size) + 292
                                                                                                                                                                                                                t = _1792 + 32
                                                                                                                                                                                                                while idx < mem[_1792]:
                                                                                                                                                                                                                    mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                                                                    s = s + 32
                                                                                                                                                                                                                    t = t + 32
                                                                                                                                                                                                                    continue 
                                                                                                                                                                                                                require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                                                                                    args 0, 0, 160, address(this.address), block.timestamp, mem[_1792 + ceil32(return_data.size) + 260 len (32 * mem[_1792]) + 32]
                                                                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[_1792 + ceil32(return_data.size) + 96] = 30
                                                                                                                                                                                                                    mem[_1792 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if not this.address:
                                                                                                                                                                                                                                revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                                                                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                    mem[_1792 + ceil32(return_data.size) + 228] = 0
                                                                                                                                                                                                                                    mem[_1792 + ceil32(return_data.size) + 260] = 0
                                                                                                                                                                                                                                    mem[_1792 + ceil32(return_data.size) + 292] = 0
                                                                                                                                                                                                                                    mem[_1792 + ceil32(return_data.size) + 324] = block.timestamp
                                                                                                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                                        args address(this.address), 0, 0, 0, 0, block.timestamp
                                                                                                                                                                                                                                    mem[_1792 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        require return_data.size >= 96
                                                                                                                                                                                                                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                                                                                                                                                                                            0,
                                                                                                                                                                                                                                        mem[_1792 + (2 * ceil32(return_data.size)) + 160] = 2
                                                                                                                                                                                                                                        mem[_1792 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                                                                                        mem[_1792 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            mem[64] = _1792 + (4 * ceil32(return_data.size)) + 256
                                                                                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                            mem[_1792 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                            if not this.address:
                                                                                                                                                                                                                                                revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    mem[0] = uniswapV2RouterAddress
                                                                                                                                                                                                                                                    mem[32] = sha3(address(this.address), 1)
                                                                                                                                                                                                                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                    emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                    mem[_1792 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                    mem[_1792 + (4 * ceil32(return_data.size)) + 260] = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                    mem[_1792 + (4 * ceil32(return_data.size)) + 292] = 0
                                                                                                                                                                                                                                                    mem[_1792 + (4 * ceil32(return_data.size)) + 324] = 160
                                                                                                                                                                                                                                                    mem[_1792 + (4 * ceil32(return_data.size)) + 420] = 2
                                                                                                                                                                                                                                                    idx = 0
                                                                                                                                                                                                                                                    s = _1792 + (4 * ceil32(return_data.size)) + 452
                                                                                                                                                                                                                                                    t = _1792 + (2 * ceil32(return_data.size)) + 192
                                                                                                                                                                                                                                                    while idx < mem[_1792 + (2 * ceil32(return_data.size)) + 160]:
                                                                                                                                                                                                                                                        mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                                        s = s + 32
                                                                                                                                                                                                                                                        t = t + 32
                                                                                                                                                                                                                                                        continue 
                                                                                                                                                                                                                                                    mem[_1792 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                                                                                                                                                                                                                    mem[_1792 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                                                                                                                                                                                                                    require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                                                        args mem[mem[64] + 4 len _1792 + (4 * ceil32(return_data.size)) + (32 * mem[_1792 + (2 * ceil32(return_data.size)) + 160]) + -mem[64] + 448]
                                                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        uint8(stor25.field_0) = 0
                                                                                                                                                                                                                                                        if not msg.sender:
                                                                                                                                                                                                                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            if not this.address:
                                                                                                                                                                                                                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                _3810 = mem[64]
                                                                                                                                                                                                                                                                mem[64] = mem[64] + 96
                                                                                                                                                                                                                                                                mem[_3810] = 38
                                                                                                                                                                                                                                                                mem[_3810 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                                                                                if _20 <= balanceOf[address(msg.sender)]:
                                                                                                                                                                                                                                                                    if balanceOf[address(msg.sender)] < _20:
                                                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        balanceOf[address(msg.sender)] -= _20
                                                                                                                                                                                                                                                                        if balanceOf[this.address] > !_20:
                                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                                                                                                                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                                                                                                                                                                                                                emit Transfer(_20, msg.sender, this.address);
                                                                                                                                                                                                                                                                                mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                                                                                                                                                                                                mem[mem[64] + 36] = 64
                                                                                                                                                                                                                                                                                mem[mem[64] + 68] = mem[96]
                                                                                                                                                                                                                                                                                mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                                                                                                                                                                                                                                                if ceil32(mem[96]) <= mem[96]:
                                                                                                                                                                                                                                                                                    require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                    call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                                                                                        args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                                                                                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    mem[mem[96] + mem[64] + 100] = 0
                                                                                                                                                                                                                                                                                    require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                    call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                                                                                        args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                                                                                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                    mem[mem[64] + 4] = 32
                                                                                                                                                                                                                                                                    mem[mem[64] + 36] = 38
                                                                                                                                                                                                                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3810 + 70 len 26]
                                                                                                                                                                                                                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                                                                                                                        else:
                                                                                                                                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                            mem[mem[64] + 4] = 32
                                                                                                                                                                            mem[mem[64] + 36] = 38
                                                                                                                                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1653 + 70 len 26]
                                                                                                                                                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                                                else:
                                                                                                    _572 = mem[64]
                                                                                                    mem[64] = mem[64] + 64
                                                                                                    mem[_572] = 26
                                                                                                    mem[_572 + 32] = 'SafeMath: division by zero'
                                                                                                    _580 = mem[64]
                                                                                                    mem[64] = mem[64] + 64
                                                                                                    mem[_580] = 26
                                                                                                    mem[_580 + 32] = 'SafeMath: division by zero'
                                                                                                    _585 = mem[64]
                                                                                                    mem[mem[64]] = 2
                                                                                                    mem[64] = mem[64] + 96
                                                                                                    mem[_585 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                    if 0 >= mem[_585]:
                                                                                                        revert with 0, 50
                                                                                                    else:
                                                                                                        mem[_585 + 32] = this.address
                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[_585 + 96] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            mem[64] = _585 + ceil32(return_data.size) + 96
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                            if 1 >= mem[_585]:
                                                                                                                revert with 0, 50
                                                                                                            else:
                                                                                                                mem[_585 + 64] = ext_call.return_data[12 len 20]
                                                                                                                if not this.address:
                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                else:
                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                    else:
                                                                                                                        mem[0] = uniswapV2RouterAddress
                                                                                                                        mem[32] = sha3(address(this.address), 1)
                                                                                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                        mem[_585 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                        mem[_585 + ceil32(return_data.size) + 100] = 0
                                                                                                                        mem[_585 + ceil32(return_data.size) + 132] = 0
                                                                                                                        mem[_585 + ceil32(return_data.size) + 164] = 160
                                                                                                                        mem[_585 + ceil32(return_data.size) + 260] = mem[_585]
                                                                                                                        idx = 0
                                                                                                                        s = _585 + ceil32(return_data.size) + 292
                                                                                                                        t = _585 + 32
                                                                                                                        while idx < mem[_585]:
                                                                                                                            mem[s] = mem[t + 12 len 20]
                                                                                                                            idx = idx + 1
                                                                                                                            s = s + 32
                                                                                                                            t = t + 32
                                                                                                                            continue 
                                                                                                                        mem[_585 + ceil32(return_data.size) + 196] = this.address
                                                                                                                        mem[_585 + ceil32(return_data.size) + 228] = block.timestamp
                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args mem[mem[64] + 4 len _585 + ceil32(return_data.size) + (32 * mem[_585]) + -mem[64] + 288]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _1560 = mem[64]
                                                                                                                            mem[64] = mem[64] + 64
                                                                                                                            mem[_1560] = 30
                                                                                                                            mem[_1560 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                            if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                            else:
                                                                                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    call distributionPoolAddress with:
                                                                                                                                         gas 2300 wei
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _1590 = mem[64]
                                                                                                                                        mem[64] = mem[64] + 64
                                                                                                                                        mem[_1590] = 30
                                                                                                                                        mem[_1590 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                                        if not this.address:
                                                                                                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                                                                                                        else:
                                                                                                                                            if not distributionPoolAddress:
                                                                                                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                                                                                                            else:
                                                                                                                                                _1656 = mem[64]
                                                                                                                                                mem[64] = mem[64] + 96
                                                                                                                                                mem[_1656] = 38
                                                                                                                                                mem[_1656 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                if 0 <= balanceOf[address(this.address)]:
                                                                                                                                                    if balanceOf[address(this.address)] < 0:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        if balanceOf[stor17] > -1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if balanceOf[stor17] < balanceOf[stor17]:
                                                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                            else:
                                                                                                                                                                mem[0] = distributionPoolAddress
                                                                                                                                                                mem[32] = 0
                                                                                                                                                                balanceOf[stor17] = balanceOf[stor17]
                                                                                                                                                                emit Transfer(0, this.address, distributionPoolAddress);
                                                                                                                                                                if balanceOf[address(this.address)]:
                                                                                                                                                                    if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        if not balanceOf[address(this.address)]:
                                                                                                                                                                            revert with 0, 18
                                                                                                                                                                        else:
                                                                                                                                                                            if balanceOf[address(this.address)] * liquidityPoolFee / balanceOf[address(this.address)] != liquidityPoolFee:
                                                                                                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                                                                                                            else:
                                                                                                                                                                                _1753 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + 64
                                                                                                                                                                                mem[_1753] = 26
                                                                                                                                                                                mem[_1753 + 32] = 'SafeMath: division by zero'
                                                                                                                                                                                _1766 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + 64
                                                                                                                                                                                mem[_1766] = 26
                                                                                                                                                                                mem[_1766 + 32] = 'SafeMath: division by zero'
                                                                                                                                                                                _1778 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + 64
                                                                                                                                                                                mem[_1778] = 30
                                                                                                                                                                                mem[_1778 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                if balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2 > balanceOf[address(this.address)] * liquidityPoolFee / 100:
                                                                                                                                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                else:
                                                                                                                                                                                    if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        _1843 = mem[64]
                                                                                                                                                                                        mem[mem[64]] = 2
                                                                                                                                                                                        mem[64] = mem[64] + 96
                                                                                                                                                                                        mem[_1843 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                                                                                                        if 0 >= mem[_1843]:
                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                        else:
                                                                                                                                                                                            mem[_1843 + 32] = this.address
                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                            mem[_1843 + 96] = ext_call.return_data[0]
                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                            else:
                                                                                                                                                                                                mem[64] = _1843 + ceil32(return_data.size) + 96
                                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                if 1 >= mem[_1843]:
                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                else:
                                                                                                                                                                                                    mem[_1843 + 64] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                    if not this.address:
                                                                                                                                                                                                        revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if not uniswapV2RouterAddress:
                                                                                                                                                                                                            revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            mem[0] = uniswapV2RouterAddress
                                                                                                                                                                                                            mem[32] = sha3(address(this.address), 1)
                                                                                                                                                                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                            allowance[address(this.address)][stor14].field_255 = 0
                                                                                                                                                                                                            emit Approval((balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                            mem[_1843 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                            mem[_1843 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                                                                                                                                                                                                            mem[_1843 + ceil32(return_data.size) + 132] = 0
                                                                                                                                                                                                            mem[_1843 + ceil32(return_data.size) + 164] = 160
                                                                                                                                                                                                            mem[_1843 + ceil32(return_data.size) + 260] = mem[_1843]
                                                                                                                                                                                                            idx = 0
                                                                                                                                                                                                            s = _1843 + ceil32(return_data.size) + 292
                                                                                                                                                                                                            t = _1843 + 32
                                                                                                                                                                                                            while idx < mem[_1843]:
                                                                                                                                                                                                                mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                s = s + 32
                                                                                                                                                                                                                t = t + 32
                                                                                                                                                                                                                continue 
                                                                                                                                                                                                            mem[_1843 + ceil32(return_data.size) + 196] = this.address
                                                                                                                                                                                                            mem[_1843 + ceil32(return_data.size) + 228] = block.timestamp
                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                args mem[mem[64] + 4 len _1843 + ceil32(return_data.size) + (32 * mem[_1843]) + -mem[64] + 288]
                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                _2917 = mem[64]
                                                                                                                                                                                                                mem[64] = mem[64] + 64
                                                                                                                                                                                                                mem[_2917] = 30
                                                                                                                                                                                                                mem[_2917 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                                                if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                                                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if not this.address:
                                                                                                                                                                                                                            revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                mem[0] = uniswapV2RouterAddress
                                                                                                                                                                                                                                mem[32] = sha3(address(this.address), 1)
                                                                                                                                                                                                                                allowance[address(this.address)][stor14].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                                                                                                                                                                                                emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                mem[mem[64] + 68] = 0
                                                                                                                                                                                                                                mem[mem[64] + 100] = 0
                                                                                                                                                                                                                                mem[mem[64] + 132] = 0
                                                                                                                                                                                                                                mem[mem[64] + 164] = block.timestamp
                                                                                                                                                                                                                                require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                                                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                                                                                                    args address(this.address), (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                                                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                                                                    require return_data.size >= 96
                                                                                                                                                                                                                                    mem[mem[64] + 32] = 0
                                                                                                                                                                                                                                    mem[mem[64] + 64] = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                                                                                                                                                                                                                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                                                                                                                                                                                                                                    mem[0] = this.address
                                                                                                                                                                                                                                    mem[32] = 0
                                                                                                                                                                                                                                    _3203 = mem[64]
                                                                                                                                                                                                                                    mem[mem[64]] = 2
                                                                                                                                                                                                                                    mem[64] = mem[64] + 96
                                                                                                                                                                                                                                    mem[_3203 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                                                                                                                                                    if 0 >= mem[_3203]:
                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[_3203 + 32] = this.address
                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                                                                                        mem[_3203 + 96] = ext_call.return_data[0]
                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            mem[64] = _3203 + ceil32(return_data.size) + 96
                                                                                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                            if 1 >= mem[_3203]:
                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                mem[_3203 + 64] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        mem[0] = uniswapV2RouterAddress
                                                                                                                                                                                                                                                        mem[32] = sha3(address(this.address), 1)
                                                                                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                        emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                                                        mem[_3203 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                        mem[_3203 + ceil32(return_data.size) + 100] = balanceOf[address(this.address)]
                                                                                                                                                                                                                                                        mem[_3203 + ceil32(return_data.size) + 132] = 0
                                                                                                                                                                                                                                                        mem[_3203 + ceil32(return_data.size) + 164] = 160
                                                                                                                                                                                                                                                        mem[_3203 + ceil32(return_data.size) + 260] = mem[_3203]
                                                                                                                                                                                                                                                        idx = 0
                                                                                                                                                                                                                                                        s = _3203 + ceil32(return_data.size) + 292
                                                                                                                                                                                                                                                        t = _3203 + 32
                                                                                                                                                                                                                                                        while idx < mem[_3203]:
                                                                                                                                                                                                                                                            mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                                                                        mem[_3203 + ceil32(return_data.size) + 196] = this.address
                                                                                                                                                                                                                                                        mem[_3203 + ceil32(return_data.size) + 228] = block.timestamp
                                                                                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                            args mem[mem[64] + 4 len _3203 + ceil32(return_data.size) + (32 * mem[_3203]) + -mem[64] + 288]
                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            uint8(stor25.field_0) = 0
                                                                                                                                                                                                                                                            if not msg.sender:
                                                                                                                                                                                                                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                if not this.address:
                                                                                                                                                                                                                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    _3813 = mem[64]
                                                                                                                                                                                                                                                                    mem[64] = mem[64] + 96
                                                                                                                                                                                                                                                                    mem[_3813] = 38
                                                                                                                                                                                                                                                                    mem[_3813 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                                                                                    if _20 <= balanceOf[address(msg.sender)]:
                                                                                                                                                                                                                                                                        if balanceOf[address(msg.sender)] < _20:
                                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            balanceOf[address(msg.sender)] -= _20
                                                                                                                                                                                                                                                                            if balanceOf[this.address] > !_20:
                                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                                                                                                                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                                                                                                                                                                                                                    emit Transfer(_20, msg.sender, this.address);
                                                                                                                                                                                                                                                                                    mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                                                                                                                                                                                                                    mem[mem[64] + 36] = 64
                                                                                                                                                                                                                                                                                    mem[mem[64] + 68] = mem[96]
                                                                                                                                                                                                                                                                                    mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                                                                                                                                                                                                                                                    if ceil32(mem[96]) <= mem[96]:
                                                                                                                                                                                                                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                                            args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                        mem[mem[96] + mem[64] + 100] = 0
                                                                                                                                                                                                                                                                                        require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                                                        call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                                                                            args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                                                                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                                        mem[mem[64] + 4] = 32
                                                                                                                                                                                                                                                                        mem[mem[64] + 36] = 38
                                                                                                                                                                                                                                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3813 + 70 len 26]
                                                                                                                                                                                                                                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                                                                                                                else:
                                                                                                                                                                    _1736 = mem[64]
                                                                                                                                                                    mem[64] = mem[64] + 64
                                                                                                                                                                    mem[_1736] = 26
                                                                                                                                                                    mem[_1736 + 32] = 'SafeMath: division by zero'
                                                                                                                                                                    _1760 = mem[64]
                                                                                                                                                                    mem[64] = mem[64] + 64
                                                                                                                                                                    mem[_1760] = 26
                                                                                                                                                                    mem[_1760 + 32] = 'SafeMath: division by zero'
                                                                                                                                                                    _1772 = mem[64]
                                                                                                                                                                    mem[64] = mem[64] + 64
                                                                                                                                                                    mem[_1772] = 30
                                                                                                                                                                    mem[_1772 + 32] = 'SafeMath: subtraction overflow'
                                                                                                                                                                    _1795 = mem[64]
                                                                                                                                                                    mem[mem[64]] = 2
                                                                                                                                                                    mem[64] = mem[64] + 96
                                                                                                                                                                    mem[_1795 + 32 len 64] = call.data[calldata.size len 64]
                                                                                                                                                                    if 0 >= mem[_1795]:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        mem[_1795 + 32] = this.address
                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                        mem[_1795 + 96] = ext_call.return_data[0]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            mem[64] = _1795 + ceil32(return_data.size) + 96
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                            if 1 >= mem[_1795]:
                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                            else:
                                                                                                                                                                                mem[_1795 + 64] = ext_call.return_data[12 len 20]
                                                                                                                                                                                if not this.address:
                                                                                                                                                                                    revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                else:
                                                                                                                                                                                    if not uniswapV2RouterAddress:
                                                                                                                                                                                        revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                    else:
                                                                                                                                                                                        mem[0] = uniswapV2RouterAddress
                                                                                                                                                                                        mem[32] = sha3(address(this.address), 1)
                                                                                                                                                                                        allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                                                        mem[_1795 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                        mem[_1795 + ceil32(return_data.size) + 100] = 0
                                                                                                                                                                                        mem[_1795 + ceil32(return_data.size) + 132] = 0
                                                                                                                                                                                        mem[_1795 + ceil32(return_data.size) + 164] = 160
                                                                                                                                                                                        mem[_1795 + ceil32(return_data.size) + 260] = mem[_1795]
                                                                                                                                                                                        idx = 0
                                                                                                                                                                                        s = _1795 + ceil32(return_data.size) + 292
                                                                                                                                                                                        t = _1795 + 32
                                                                                                                                                                                        while idx < mem[_1795]:
                                                                                                                                                                                            mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                            continue 
                                                                                                                                                                                        require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                            args 0, 0, 160, address(this.address), block.timestamp, mem[_1795 + ceil32(return_data.size) + 260 len (32 * mem[_1795]) + 32]
                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                        else:
                                                                                                                                                                                            mem[_1795 + ceil32(return_data.size) + 96] = 30
                                                                                                                                                                                            mem[_1795 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                                                                                                                                                                            if eth.balance(this.address) > eth.balance(this.address):
                                                                                                                                                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                                                                                                                                                            else:
                                                                                                                                                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if not this.address:
                                                                                                                                                                                                        revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if not uniswapV2RouterAddress:
                                                                                                                                                                                                            revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            allowance[address(this.address)][stor14].field_0 = 0
                                                                                                                                                                                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                            mem[_1795 + ceil32(return_data.size) + 228] = 0
                                                                                                                                                                                                            mem[_1795 + ceil32(return_data.size) + 260] = 0
                                                                                                                                                                                                            mem[_1795 + ceil32(return_data.size) + 292] = 0
                                                                                                                                                                                                            mem[_1795 + ceil32(return_data.size) + 324] = block.timestamp
                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                args address(this.address), 0, 0, 0, 0, block.timestamp
                                                                                                                                                                                                            mem[_1795 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                require return_data.size >= 96
                                                                                                                                                                                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                                                                                                                                                                                    0,
                                                                                                                                                                                                                mem[_1795 + (2 * ceil32(return_data.size)) + 160] = 2
                                                                                                                                                                                                                mem[_1795 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                                                                                                                                                                                require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                                                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                                                                mem[_1795 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                                                                                                                                                    mem[_1795 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                                                                                                                                                                                    if not this.address:
                                                                                                                                                                                                                        revert with 0, 'ERC20: approve from the zero address'
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if not uniswapV2RouterAddress:
                                                                                                                                                                                                                            revert with 0, 'ERC20: approve to the zero address'
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            allowance[address(this.address)][stor14].field_0 = balanceOf[address(this.address)]
                                                                                                                                                                                                                            emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                                                                                                                                                                                                                            mem[_1795 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                            mem[_1795 + (4 * ceil32(return_data.size)) + 260] = balanceOf[address(this.address)]
                                                                                                                                                                                                                            mem[_1795 + (4 * ceil32(return_data.size)) + 292] = 0
                                                                                                                                                                                                                            mem[_1795 + (4 * ceil32(return_data.size)) + 324] = 160
                                                                                                                                                                                                                            mem[_1795 + (4 * ceil32(return_data.size)) + 420] = 2
                                                                                                                                                                                                                            idx = 0
                                                                                                                                                                                                                            s = _1795 + (4 * ceil32(return_data.size)) + 452
                                                                                                                                                                                                                            t = _1795 + (2 * ceil32(return_data.size)) + 192
                                                                                                                                                                                                                            while idx < mem[_1795 + (2 * ceil32(return_data.size)) + 160]:
                                                                                                                                                                                                                                mem[s] = mem[t + 12 len 20]
                                                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                                                s = s + 32
                                                                                                                                                                                                                                t = t + 32
                                                                                                                                                                                                                                continue 
                                                                                                                                                                                                                            mem[_1795 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                                                                                                                                                                                            mem[_1795 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                                                                                                                                                                                            require ext_code.size(uniswapV2RouterAddress)
                                                                                                                                                                                                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, mem[_1795 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_1795 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                uint8(stor25.field_0) = 0
                                                                                                                                                                                                                                if not msg.sender:
                                                                                                                                                                                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if not this.address:
                                                                                                                                                                                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[_1795 + (4 * ceil32(return_data.size)) + 256] = 38
                                                                                                                                                                                                                                        mem[_1795 + (4 * ceil32(return_data.size)) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                                                                                                                                                                                        if _20 <= balanceOf[address(msg.sender)]:
                                                                                                                                                                                                                                            if balanceOf[address(msg.sender)] < _20:
                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                balanceOf[address(msg.sender)] -= _20
                                                                                                                                                                                                                                                if balanceOf[this.address] > !_20:
                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if balanceOf[this.address] + _20 < balanceOf[this.address]:
                                                                                                                                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        balanceOf[address(this.address)] = balanceOf[this.address] + _20
                                                                                                                                                                                                                                                        emit Transfer(_20, msg.sender, this.address);
                                                                                                                                                                                                                                                        mem[_1795 + (4 * ceil32(return_data.size)) + 352] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                                        mem[_1795 + (4 * ceil32(return_data.size)) + 356] = msg.sender
                                                                                                                                                                                                                                                        mem[_1795 + (4 * ceil32(return_data.size)) + 388] = 64
                                                                                                                                                                                                                                                        mem[_1795 + (4 * ceil32(return_data.size)) + 420] = mem[96]
                                                                                                                                                                                                                                                        mem[_1795 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                                                                                                                                                                                                                        if ceil32(mem[96]) <= mem[96]:
                                                                                                                                                                                                                                                            require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                            call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                args msg.sender, Array(len=mem[96], data=mem[_1795 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[96])])
                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            mem[mem[96] + _1795 + (4 * ceil32(return_data.size)) + 452] = 0
                                                                                                                                                                                                                                                            require ext_code.size(nodeRewardManagementAddress)
                                                                                                                                                                                                                                                            call nodeRewardManagementAddress.0x12b8603f with:
                                                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                                                args msg.sender, Array(len=mem[96], data=mem[_1795 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[96])])
                                                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            var303001 = 64
                                                                                                                                                                                                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                                                                                                                                else:
                                                                                                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                                                                    mem[mem[64] + 4] = 32
                                                                                                                                                    mem[mem[64] + 36] = 38
                                                                                                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1656 + 70 len 26]
                                                                                                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                            else:
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 292] = 32
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 324] = 34
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                                                                                mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                                                                revert with memory
                                                                                  from ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288
                                                                                   len ceil32(return_data.size) + 132
                                                                        else:
                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 292] = 32
                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 324] = 36
                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                                                                            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                                            revert with memory
                                                                              from ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 288
                                                                               len ceil32(return_data.size) + 132
}



}
