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
uint256 sub_d6caaaff;
uint256 sub_7fab1ada;
uint256 stor26;
uint8 stor27;
uint8 stor27; offset 8
uint256 stor27; offset 8
uint256 swapTokensAmount;
mapping of uint8 stor29;
mapping of uint8 stor30;

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

function sub_7fab1ada(?) {
    return sub_7fab1ada
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

function sub_d6caaaff(?) {
    return sub_d6caaaff
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

function sub_bad978dd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d6caaaff = arg1
}

function updateRwSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26 = arg1
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

function sub_82f1feb3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodeRewardManagerAddress = address(arg1)
}

function changeSwapLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor27.field_8) = Mask(248, 0, arg1)
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29[address(arg1)] = uint8(arg2)
}

function getNodePrice() {
    staticcall nodeRewardManagerAddress.0xf1fec2b8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getClaimTime() {
    staticcall nodeRewardManagerAddress.0x27b3bf11 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRewardPerNode() {
    staticcall nodeRewardManagerAddress.0x613ff46f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalCreatedNodes() {
    staticcall nodeRewardManagerAddress.0xb8527aef with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall nodeRewardManagerAddress.0x4491a7e4 with:
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

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall nodeRewardManagerAddress.0x619a635e with:
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
                    'TKN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor30[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor30[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function getRewardAmount() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    staticcall nodeRewardManagerAddress.0x41ac82b0 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    staticcall nodeRewardManagerAddress.0x619a635e with:
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
    staticcall nodeRewardManagerAddress.0x619a635e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
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
                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 230 len 26] >> 48,
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
                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 230 len 26] >> 48,
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT:  creation from the zero address'
    if stor29[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    staticcall nodeRewardManagerAddress.0xa6e15cc4 with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if cashoutFee > 0:
        if arg1 > !sub_7fab1ada:
            revert with 0, 17
        if arg1 + sub_7fab1ada < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 + sub_7fab1ada > block.timestamp:
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 160] = 2
                mem[ceil32(return_data.size) + 192] = this.address
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
                if ext_call.return_data[0] and sub_d6caaaff > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * sub_d6caaaff / ext_call.return_data[0] != sub_d6caaaff:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 160] = 2
                mem[ceil32(return_data.size) + 192] = this.address
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
                allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * sub_d6caaaff / 100
                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0] * sub_d6caaaff / 100
                emit Approval(mem[(2 * ceil32(return_data.size)) + 256 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                mem[(2 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * sub_d6caaaff / 100
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
                    args ext_call.return_data[0] * sub_d6caaaff / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
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
                if ext_call.return_data[0] < ext_call.return_data[0] * sub_d6caaaff / 100:
                    revert with 0, 17
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100) > balanceOf[stor17]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                0
                if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100):
                    revert with 0, 17
                balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_d6caaaff / 100)
                if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100)):
                    revert with 0, 17
                if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100) < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100)
                emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100)), distributionPoolAddress, msg.sender);
        else:
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 160] = 2
                mem[ceil32(return_data.size) + 192] = this.address
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
    else:
        if sub_d6caaaff <= 0:
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
            if arg1 > !sub_7fab1ada:
                revert with 0, 17
            if arg1 + sub_7fab1ada < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + sub_7fab1ada > block.timestamp:
                if not ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 160] = 2
                    mem[ceil32(return_data.size) + 192] = this.address
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
                    if ext_call.return_data[0] and sub_d6caaaff > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * sub_d6caaaff / ext_call.return_data[0] != sub_d6caaaff:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 160] = 2
                    mem[ceil32(return_data.size) + 192] = this.address
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
                    allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * sub_d6caaaff / 100
                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0] * sub_d6caaaff / 100
                    emit Approval(mem[(2 * ceil32(return_data.size)) + 256 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                    mem[(2 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * sub_d6caaaff / 100
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
                        args ext_call.return_data[0] * sub_d6caaaff / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
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
                    if ext_call.return_data[0] < ext_call.return_data[0] * sub_d6caaaff / 100:
                        revert with 0, 17
                    if not distributionPoolAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100) > balanceOf[stor17]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                    0
                    if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100):
                        revert with 0, 17
                    balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_d6caaaff / 100)
                    if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100)):
                        revert with 0, 17
                    if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100) < balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100)
                    emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100)), distributionPoolAddress, msg.sender);
            else:
                if not ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 160] = 2
                    mem[ceil32(return_data.size) + 192] = this.address
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
        if unknown_0x7fab1ada(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x4195fbf3(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x18160ddd(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x2bb14e1d(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x2bb14e1d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return rewardsFee
                        if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 18
                        if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                            if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return totalShares
                            require unknown_0x406072a9(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            require arg2 == address(arg2)
                            return released[address(arg1)][address(arg2)]
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
                    else:
                        if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return totalSupply
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
                        require unknown_0x23b872dd(?????) == uint32(call.func_hash) >> 224
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
                    staticcall nodeRewardManagerAddress.0x41ac82b0 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NO NODE OWNER'
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
                    require unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return uniswapV2RouterAddress
                require not msg.value
                if not msg.sender:
                    revert with 0, 'SENDER CAN'T BE ZERO'
                mem[132] = msg.sender
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
                staticcall nodeRewardManagerAddress.0x334de3a2 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _335 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _385 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _335 + _385 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_385)] = mem[ceil32(return_data.size) + _335 + 160 len ceil32(_385)]
                if ceil32(_385) > _385:
                    mem[_385 + (2 * ceil32(return_data.size)) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _385
                mem[mem[64] + 64 len ceil32(_385)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_385)]
                if ceil32(_385) > _385:
                    mem[_385 + mem[64] + 64] = 0
                return Array(len=_385, data=mem[mem[64] + 64 len ceil32(_385)])
            if unknown_0x65b8dbc0(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x54557973(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x54557973(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if not msg.sender:
                            revert with 0, 'MANIA CSHT:  creation from the zero address'
                        if stor29[address(msg.sender)]:
                            revert with 0, 'MANIA CSHT: Blacklisted address'
                        if futurUsePoolAddress == msg.sender:
                            revert with 0, 'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
                        if distributionPoolAddress == msg.sender:
                            revert with 0, 'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
                        staticcall nodeRewardManagerAddress.0x619a635e with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
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
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 262 len 26] >> 48,
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
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 262 len 26] >> 48,
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
                        call nodeRewardManagerAddress.0x5c298b1c with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if unknown_0x54f12f1f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return liquidityPoolFee
                    if unknown_0x583bd7a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == bool(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        Mask(248, 0, stor27.field_8) = Mask(248, 0, bool(arg1))
                    if uint32(call.func_hash) >> 224 != unknown_0x5b0d4674(?????):
                        require unknown_0x5f1c3182(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return swapTokensAmount
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'SENDER CAN'T BE ZERO'
                    mem[132] = msg.sender
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
                    staticcall nodeRewardManagerAddress.0x4a389fae with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _364 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _417 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _364 + _417 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_417)] = mem[ceil32(return_data.size) + _364 + 160 len ceil32(_417)]
                    if ceil32(_417) > _417:
                        mem[_417 + (2 * ceil32(return_data.size)) + 160] = 0
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _417
                    mem[mem[64] + 64 len ceil32(_417)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_417)]
                    if ceil32(_417) > _417:
                        mem[_417 + mem[64] + 64] = 0
                    return Array(len=_417, data=mem[mem[64] + 64 len ceil32(_417)])
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
                            require unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return uniswapV2PairAddress
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
                if unknown_0x6d9ae0be(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x6d9ae0be(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return cashoutFee
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
                        if uint32(call.func_hash) >> 224 != unknown_0x65bfe430(?????):
                            if unknown_0x6770474b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                swapTokensAmount = arg1
                            else:
                                require unknown_0x6815a91c(?????) == uint32(call.func_hash) >> 224
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
                            if stor29[address(msg.sender)]:
                                revert with 0, 'MANIA CSHT: Blacklisted address'
                            if futurUsePoolAddress == msg.sender:
                                revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                            if distributionPoolAddress == msg.sender:
                                revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                            staticcall nodeRewardManagerAddress.0xa6e15cc4 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'CSHT: You don't have enough reward to cash out'
                            if cashoutFee > 0:
                                if arg1 > !sub_7fab1ada:
                                    revert with 0, 17
                                if arg1 + sub_7fab1ada < arg1:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg1 + sub_7fab1ada > block.timestamp:
                                    if not ext_call.return_data[0]:
                                        mem[ceil32(return_data.size) + 192] = 2
                                        mem[ceil32(return_data.size) + 224] = this.address
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
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
                                        if ext_call.return_data[0] and sub_d6caaaff > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if ext_call.return_data[0] * sub_d6caaaff / ext_call.return_data[0] != sub_d6caaaff:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[ceil32(return_data.size) + 192] = 2
                                        mem[ceil32(return_data.size) + 224] = this.address
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                        allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * sub_d6caaaff / 100
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0] * sub_d6caaaff / 100
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * sub_d6caaaff / 100
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
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * sub_d6caaaff / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
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
                                        if ext_call.return_data[0] < ext_call.return_data[0] * sub_d6caaaff / 100:
                                            revert with 0, 17
                                        if not distributionPoolAddress:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100) > balanceOf[stor17]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                                        0
                                        if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100):
                                            revert with 0, 17
                                        balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_d6caaaff / 100)
                                        if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100)):
                                            revert with 0, 17
                                        if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100) < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100)
                                        emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100)), distributionPoolAddress, msg.sender);
                                else:
                                    if not ext_call.return_data[0]:
                                        mem[ceil32(return_data.size) + 192] = 2
                                        mem[ceil32(return_data.size) + 224] = this.address
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
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
                                        mem[ceil32(return_data.size) + 192] = 2
                                        mem[ceil32(return_data.size) + 224] = this.address
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
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
                            else:
                                if sub_d6caaaff <= 0:
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
                                    if arg1 > !sub_7fab1ada:
                                        revert with 0, 17
                                    if arg1 + sub_7fab1ada < arg1:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg1 + sub_7fab1ada > block.timestamp:
                                        if not ext_call.return_data[0]:
                                            mem[ceil32(return_data.size) + 192] = 2
                                            mem[ceil32(return_data.size) + 224] = this.address
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
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
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
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
                                            if ext_call.return_data[0] and sub_d6caaaff > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if ext_call.return_data[0] * sub_d6caaaff / ext_call.return_data[0] != sub_d6caaaff:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[ceil32(return_data.size) + 192] = 2
                                            mem[ceil32(return_data.size) + 224] = this.address
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
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
                                            allowance[address(this.address)][stor14].field_0 = ext_call.return_data[0] * sub_d6caaaff / 100
                                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0] * sub_d6caaaff / 100
                                            emit Approval(mem[(2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * sub_d6caaaff / 100
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
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * sub_d6caaaff / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
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
                                            if ext_call.return_data[0] < ext_call.return_data[0] * sub_d6caaaff / 100:
                                                revert with 0, 17
                                            if not distributionPoolAddress:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100) > balanceOf[stor17]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                                            0
                                            if balanceOf[stor17] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100):
                                                revert with 0, 17
                                            balanceOf[stor17] = balanceOf[stor17] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_d6caaaff / 100)
                                            if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100)):
                                                revert with 0, 17
                                            if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100) < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100)
                                            emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_d6caaaff / 100)), distributionPoolAddress, msg.sender);
                                    else:
                                        if not ext_call.return_data[0]:
                                            mem[ceil32(return_data.size) + 192] = 2
                                            mem[ceil32(return_data.size) + 224] = this.address
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
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
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
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
                                            mem[ceil32(return_data.size) + 192] = 2
                                            mem[ceil32(return_data.size) + 224] = this.address
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
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
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
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
                            call nodeRewardManagerAddress.0x6edb7002 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
        else:
            if unknown_0xa538ddf2(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xd6caaaff(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xdd62ed3e(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0xd6caaaff(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_d6caaaff
                        if unknown_0xd79779b2(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return totalReleased[address(arg1)]
                        if uint32(call.func_hash) >> 224 != unknown_0xd8929342(?????):
                            require unknown_0xdb3ad6b5(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            staticcall nodeRewardManagerAddress.0x613ff46f with:
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
                        stor29[address(arg1)] = uint8(bool(arg2))
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        return allowance[address(arg1)][address(arg2)].field_0
                    if unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalReleased
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, address(arg1));
                        owner = address(arg1)
                    if unknown_0xf5a07256(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        staticcall nodeRewardManagerAddress.0x27b3bf11 with:
                                gas gas_remaining wei
                    else:
                        require unknown_0xf74c9934(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        staticcall nodeRewardManagerAddress.0x4491a7e4 with:
                                gas gas_remaining wei
                               args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0xb96392c1(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xa538ddf2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return futurUsePoolAddress
                    if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                        if unknown_0xab574761(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return futurFee
                        require unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor30[arg1])
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
                if unknown_0xb96392c1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    staticcall nodeRewardManagerAddress.0x619a635e with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0xbad978dd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_d6caaaff = arg1
                if uint32(call.func_hash) >> 224 != unknown_0xbdf24a53(?????):
                    if unknown_0xc5ca7d6d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return distributionPoolAddress
                    require unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return shares[address(arg1)]
                require not msg.value
                if not msg.sender:
                    revert with 0, 'SENDER CAN'T BE ZERO'
                mem[132] = msg.sender
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
                staticcall nodeRewardManagerAddress.0xc92819ce with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _350 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _406 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _350 + _406 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_406)] = mem[ceil32(return_data.size) + _350 + 160 len ceil32(_406)]
                if ceil32(_406) > _406:
                    mem[_406 + (2 * ceil32(return_data.size)) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _406
                mem[mem[64] + 64 len ceil32(_406)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_406)]
                if ceil32(_406) > _406:
                    mem[_406 + mem[64] + 64] = 0
                return Array(len=_406, data=mem[mem[64] + 64 len ceil32(_406)])
            if unknown_0x8f0ba4ca(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x88c41d7c(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x7fab1ada(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_7fab1ada
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
                        if uint32(call.func_hash) >> 224 != unknown_0x82f1feb3(?????):
                            require unknown_0x85141a77(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return deadWalletAddress
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        nodeRewardManagerAddress = address(arg1)
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
                        stor26 = arg1
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
                if unknown_0x9a7a23d6(?????) <= uint32(call.func_hash) >> 224:
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
                        if bool(arg2) == bool(stor30[address(arg1)]):
                            revert with 0, 'TKN: Automated market maker pair is already set to that value'
                        stor30[address(arg1)] = uint8(bool(arg2))
                        emit SetAutomatedMarketMakerPair(address(arg1), bool(arg2));
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
                        staticcall nodeRewardManagerAddress.0xb8527aef with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if uint32(call.func_hash) >> 224 != unknown_0xa457c2d7(?????):
                        require unknown_0xa5021a17(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
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
                if uint32(call.func_hash) >> 224 != unknown_0x8f0ba4ca(?????):
                    if unknown_0x9349c47d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        distributionPoolAddress = address(arg1)
                    if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                        require unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return released[address(arg1)]
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
                    if not uint8(stor27.field_8):
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
                        if uint8(stor27.field_0):
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
                                    uint8(stor27.field_0) = 1
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
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address] * futurFee / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 'SafeMath: subtraction overflow'
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
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 353] = 26
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385] = 'SafeMath: division by zero'
                                            if balanceOf[this.address] * rewardsFee / 100:
                                                if balanceOf[this.address] * rewardsFee / 100 and stor26 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                                    revert with 0, 17
                                                if not balanceOf[this.address] * rewardsFee / 100:
                                                    revert with 0, 18
                                                if balanceOf[this.address] * rewardsFee / 100 * stor26 / balanceOf[this.address] * rewardsFee / 100 != stor26:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = 26
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = 2
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = this.address
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor26 / 100
                                                emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor26 / 100), this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = balanceOf[this.address] * rewardsFee / 100 * stor26 / 100
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = 160
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773
                                                t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513
                                                while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address] * rewardsFee / 100 * stor26 / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741 len (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 30
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = 32
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 30
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 739] = 0
                                                    revert with memory
                                                      from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = 30
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 'SafeMath: subtraction overflow'
                                                if balanceOf[this.address] * rewardsFee / 100 * stor26 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 30
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 803] = 0
                                                    revert with memory
                                                      from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor26 / 100:
                                                    revert with 0, 17
                                                if not this.address:
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 37
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 'ERC20: transfer from the zero ad'
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 132
                                                if not distributionPoolAddress:
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 35
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 'ERC20: transfer to the zero addr'
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705
                                                       len (5 * ceil32(return_data.size)) + 132
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100) > balanceOf[address(this.address)]:
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837] = 38
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 869 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 775 len 26]
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 907] = 0
                                                    revert with memory
                                                      from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801
                                                       len (5 * ceil32(return_data.size)) + 132
                                                if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100):
                                                    revert with 0, 17
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100)
                                                if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100)):
                                                    revert with 0, 17
                                                if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100) < balanceOf[stor17]:
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837] = 27
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: addition overflow'
                                                    revert with memory
                                                      from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801
                                                       len (5 * ceil32(return_data.size)) + 100
                                                balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100)
                                                emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100)), this.address, distributionPoolAddress);
                                                if not balanceOf[this.address]:
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285
                                                    t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
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
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1157] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, 0, 0, 0, 0, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        0,
                                                    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153] = 2
                                                    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1185] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1249] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1249
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1249] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1285] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1317] = 160
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1445
                                                    t = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1185
                                                    while idx < mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1349] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153]) + -mem[64] + 1441]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor27.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _5677 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_5677] = 38
                                                    mem[_5677 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5677 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                else:
                                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address]:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837] = 33
                                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: multiplication overflo'
                                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 901] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                                        revert with memory
                                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801
                                                           len (5 * ceil32(return_data.size)) + 132
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 997] = 32
                                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1029] = 30
                                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1061] = 'SafeMath: subtraction overflow'
                                                        var227001 = 32
                                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1091] = 0
                                                        revert with memory
                                                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                                           len (5 * ceil32(return_data.size)) + 100
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285
                                                    t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1251] = 0
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1251 len (9 * ceil32(return_data.size)) + 2]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 
                                                                    'ERC20: approve from the zero address',
                                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 
                                                                    'ERC20: approve to the zero address',
                                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                    allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                    emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1349 len 9 * ceil32(return_data.size)]
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153 len (13 * ceil32(return_data.size)) + 96],
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = 2
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1249] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1249
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1249] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1285] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1317] = 160
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1445
                                                    t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185
                                                    while idx < mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1349] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153]) + -mem[64] + 1441]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor27.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _5674 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_5674] = 38
                                                    mem[_5674 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5674 + 70 len 26]
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
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = 26
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = 2
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = this.address
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = 0
                                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = 160
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773
                                                t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513
                                                while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]) + -mem[64] + 769]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3471 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3471] = 30
                                                mem[_3471 + 32] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3501 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3501] = 30
                                                mem[_3501 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > balanceOf[this.address] * rewardsFee / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if balanceOf[this.address] * rewardsFee / 100 < 0:
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not distributionPoolAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                _3539 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3539] = 38
                                                mem[_3539 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3539 + 70 len 26]
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
                                                    _3665 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3665] = 26
                                                    mem[_3665 + 32] = 'SafeMath: division by zero'
                                                    _3677 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3677] = 26
                                                    mem[_3677 + 32] = 'SafeMath: division by zero'
                                                    _3689 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3689] = 30
                                                    mem[_3689 + 32] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    _3750 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_3750 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_3750]:
                                                        revert with 0, 50
                                                    mem[_3750 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_3750 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3750 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_3750]:
                                                        revert with 0, 50
                                                    mem[_3750 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                    mem[_3750 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3750 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[_3750 + ceil32(return_data.size) + 132] = 0
                                                    mem[_3750 + ceil32(return_data.size) + 164] = 160
                                                    mem[_3750 + ceil32(return_data.size) + 260] = mem[_3750]
                                                    idx = 0
                                                    s = _3750 + ceil32(return_data.size) + 292
                                                    t = _3750 + 32
                                                    while idx < mem[_3750]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_3750 + ceil32(return_data.size) + 260 len (32 * mem[_3750]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_3750 + ceil32(return_data.size) + 96] = 30
                                                    mem[_3750 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
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
                                                    mem[_3750 + ceil32(return_data.size) + 228] = 0
                                                    mem[_3750 + ceil32(return_data.size) + 260] = 0
                                                    mem[_3750 + ceil32(return_data.size) + 292] = 0
                                                    mem[_3750 + ceil32(return_data.size) + 324] = block.timestamp
                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                                    mem[_3750 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                                    mem[_3750 + (2 * ceil32(return_data.size)) + 160] = 2
                                                    mem[_3750 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_3750 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3750 + (4 * ceil32(return_data.size)) + 256
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[_3750 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_3750 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3750 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                                    mem[_3750 + (4 * ceil32(return_data.size)) + 292] = 0
                                                    mem[_3750 + (4 * ceil32(return_data.size)) + 324] = 160
                                                    mem[_3750 + (4 * ceil32(return_data.size)) + 420] = 2
                                                    idx = 0
                                                    s = _3750 + (4 * ceil32(return_data.size)) + 452
                                                    t = _3750 + (2 * ceil32(return_data.size)) + 192
                                                    while idx < mem[_3750 + (2 * ceil32(return_data.size)) + 160]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_3750 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                    mem[_3750 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _3750 + (4 * ceil32(return_data.size)) + (32 * mem[_3750 + (2 * ceil32(return_data.size)) + 160]) + -mem[64] + 448]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor27.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _5680 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_5680] = 38
                                                    mem[_5680 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5680 + 70 len 26]
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
                                                    _3647 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3647] = 26
                                                    mem[_3647 + 32] = 'SafeMath: division by zero'
                                                    _3671 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3671] = 26
                                                    mem[_3671 + 32] = 'SafeMath: division by zero'
                                                    _3683 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3683] = 30
                                                    mem[_3683 + 32] = 'SafeMath: subtraction overflow'
                                                    _3698 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_3698 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_3698]:
                                                        revert with 0, 50
                                                    mem[_3698 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_3698 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3698 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_3698]:
                                                        revert with 0, 50
                                                    mem[_3698 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[_3698 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3698 + ceil32(return_data.size) + 100] = 0
                                                    mem[_3698 + ceil32(return_data.size) + 132] = 0
                                                    mem[_3698 + ceil32(return_data.size) + 164] = 160
                                                    mem[_3698 + ceil32(return_data.size) + 260] = mem[_3698]
                                                    idx = 0
                                                    s = _3698 + ceil32(return_data.size) + 292
                                                    t = _3698 + 32
                                                    while idx < mem[_3698]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_3698 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_3698 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _3698 + ceil32(return_data.size) + (32 * mem[_3698]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4825 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4825] = 30
                                                    mem[_4825 + 32] = 'SafeMath: subtraction overflow'
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
                                                    _5104 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_5104 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_5104]:
                                                        revert with 0, 50
                                                    mem[_5104 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_5104 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _5104 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_5104]:
                                                        revert with 0, 50
                                                    mem[_5104 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_5104 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_5104 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                    mem[_5104 + ceil32(return_data.size) + 132] = 0
                                                    mem[_5104 + ceil32(return_data.size) + 164] = 160
                                                    mem[_5104 + ceil32(return_data.size) + 260] = mem[_5104]
                                                    idx = 0
                                                    s = _5104 + ceil32(return_data.size) + 292
                                                    t = _5104 + 32
                                                    while idx < mem[_5104]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_5104 + ceil32(return_data.size) + 260 len (32 * mem[_5104]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor27.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    mem[_5104 + ceil32(return_data.size) + 96] = 38
                                                    mem[_5104 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                    mem[_5104 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                    mem[_5104 + ceil32(return_data.size) + 196] = msg.sender
                                                    mem[_5104 + ceil32(return_data.size) + 228] = 64
                                                    mem[_5104 + ceil32(return_data.size) + 260] = mem[128]
                                                    mem[_5104 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[mem[128] + _5104 + ceil32(return_data.size) + 292] = 0
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x12b8603f with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[_5104 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                        else:
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 353] = 26
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = 26
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = 2
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = this.address
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor14].field_0 = 0
                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = 160
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 2
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773
                                            t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513
                                            while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = this.address
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]) + -mem[64] + 769]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3472 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3472] = 30
                                            mem[_3472 + 32] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3502 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3502] = 30
                                            mem[_3502 + 32] = 'SafeMath: subtraction overflow'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not distributionPoolAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            _3542 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3542] = 38
                                            mem[_3542 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if 0 > balanceOf[address(this.address)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 38
                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3542 + 70 len 26]
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
                                                _3648 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3648] = 26
                                                mem[_3648 + 32] = 'SafeMath: division by zero'
                                                _3672 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3672] = 26
                                                mem[_3672 + 32] = 'SafeMath: division by zero'
                                                _3684 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3684] = 30
                                                mem[_3684 + 32] = 'SafeMath: subtraction overflow'
                                                _3701 = mem[64]
                                                mem[mem[64]] = 2
                                                mem[64] = mem[64] + 96
                                                mem[_3701 + 32 len 64] = call.data[calldata.size len 64]
                                                if 0 >= mem[_3701]:
                                                    revert with 0, 50
                                                mem[_3701 + 32] = this.address
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[_3701 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3701 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if 1 >= mem[_3701]:
                                                    revert with 0, 50
                                                mem[_3701 + 64] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = 0
                                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                                mem[_3701 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[_3701 + ceil32(return_data.size) + 100] = 0
                                                mem[_3701 + ceil32(return_data.size) + 132] = 0
                                                mem[_3701 + ceil32(return_data.size) + 164] = 160
                                                mem[_3701 + ceil32(return_data.size) + 260] = mem[_3701]
                                                idx = 0
                                                s = _3701 + ceil32(return_data.size) + 292
                                                t = _3701 + 32
                                                while idx < mem[_3701]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_3701 + ceil32(return_data.size) + 196] = this.address
                                                mem[_3701 + ceil32(return_data.size) + 228] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _3701 + ceil32(return_data.size) + (32 * mem[_3701]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4827 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4827] = 30
                                                mem[_4827 + 32] = 'SafeMath: subtraction overflow'
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
                                                _5108 = mem[64]
                                                mem[mem[64]] = 2
                                                mem[64] = mem[64] + 96
                                                mem[_5108 + 32 len 64] = call.data[calldata.size len 64]
                                                if 0 >= mem[_5108]:
                                                    revert with 0, 50
                                                mem[_5108 + 32] = this.address
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[_5108 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _5108 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if 1 >= mem[_5108]:
                                                    revert with 0, 50
                                                mem[_5108 + 64] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                mem[_5108 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[_5108 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                mem[_5108 + ceil32(return_data.size) + 132] = 0
                                                mem[_5108 + ceil32(return_data.size) + 164] = 160
                                                mem[_5108 + ceil32(return_data.size) + 260] = mem[_5108]
                                                idx = 0
                                                s = _5108 + ceil32(return_data.size) + 292
                                                t = _5108 + 32
                                                while idx < mem[_5108]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_5108 + ceil32(return_data.size) + 260 len (32 * mem[_5108]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor27.field_0) = 0
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                mem[_5108 + ceil32(return_data.size) + 96] = 38
                                                mem[_5108 + ceil32(return_data.size) + 128 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                mem[_5108 + ceil32(return_data.size) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                mem[_5108 + ceil32(return_data.size) + 196] = msg.sender
                                                mem[_5108 + ceil32(return_data.size) + 228] = 64
                                                mem[_5108 + ceil32(return_data.size) + 260] = mem[128]
                                                mem[_5108 + ceil32(return_data.size) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                if ceil32(mem[128]) > mem[128]:
                                                    mem[mem[128] + _5108 + ceil32(return_data.size) + 292] = 0
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x12b8603f with:
                                                     gas gas_remaining wei
                                                    args msg.sender, Array(len=mem[128], data=mem[_5108 + ceil32(return_data.size) + 292 len ceil32(mem[128])])
                                            else:
                                                if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                    revert with 0, 17
                                                if not balanceOf[this.address]:
                                                    revert with 0, 18
                                                if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _3666 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3666] = 26
                                                mem[_3666 + 32] = 'SafeMath: division by zero'
                                                _3678 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3678] = 26
                                                mem[_3678 + 32] = 'SafeMath: division by zero'
                                                _3690 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3690] = 30
                                                mem[_3690 + 32] = 'SafeMath: subtraction overflow'
                                                if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                    revert with 0, 17
                                                _3752 = mem[64]
                                                mem[mem[64]] = 2
                                                mem[64] = mem[64] + 96
                                                mem[_3752 + 32 len 64] = call.data[calldata.size len 64]
                                                if 0 >= mem[_3752]:
                                                    revert with 0, 50
                                                mem[_3752 + 32] = this.address
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[_3752 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3752 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if 1 >= mem[_3752]:
                                                    revert with 0, 50
                                                mem[_3752 + 64] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                allowance[address(this.address)][stor14].field_255 = 0
                                                emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                mem[_3752 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[_3752 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                mem[_3752 + ceil32(return_data.size) + 132] = 0
                                                mem[_3752 + ceil32(return_data.size) + 164] = 160
                                                mem[_3752 + ceil32(return_data.size) + 260] = mem[_3752]
                                                idx = 0
                                                s = _3752 + ceil32(return_data.size) + 292
                                                t = _3752 + 32
                                                while idx < mem[_3752]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_3752 + ceil32(return_data.size) + 196] = this.address
                                                mem[_3752 + ceil32(return_data.size) + 228] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _3752 + ceil32(return_data.size) + (32 * mem[_3752]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4826 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4826] = 30
                                                mem[_4826 + 32] = 'SafeMath: subtraction overflow'
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
                                                _5106 = mem[64]
                                                mem[mem[64]] = 2
                                                mem[64] = mem[64] + 96
                                                mem[_5106 + 32 len 64] = call.data[calldata.size len 64]
                                                if 0 >= mem[_5106]:
                                                    revert with 0, 50
                                                mem[_5106 + 32] = this.address
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[_5106 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _5106 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if 1 >= mem[_5106]:
                                                    revert with 0, 50
                                                mem[_5106 + 64] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                mem[_5106 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[_5106 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                mem[_5106 + ceil32(return_data.size) + 132] = 0
                                                mem[_5106 + ceil32(return_data.size) + 164] = 160
                                                mem[_5106 + ceil32(return_data.size) + 260] = mem[_5106]
                                                idx = 0
                                                s = _5106 + ceil32(return_data.size) + 292
                                                t = _5106 + 32
                                                while idx < mem[_5106]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_5106 + ceil32(return_data.size) + 196] = this.address
                                                mem[_5106 + ceil32(return_data.size) + 228] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _5106 + ceil32(return_data.size) + (32 * mem[_5106]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor27.field_0) = 0
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                _5686 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_5686] = 38
                                                mem[_5686 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5686 + 70 len 26]
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
                                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = 26
                                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = 'SafeMath: division by zero'
                                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = 2
                                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225] = this.address
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = 30
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call futurUsePoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not balanceOf[this.address]:
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 353] = 26
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = 26
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = 'SafeMath: division by zero'
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = 2
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = this.address
                                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor14].field_0 = 0
                                            emit Approval(0, this.address, uniswapV2RouterAddress);
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = 160
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 2
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773
                                            t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513
                                            while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = this.address
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741 len (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 30
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = 32
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = 30
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 'SafeMath: subtraction overflow'
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 739] = 0
                                                revert with memory
                                                  from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641
                                                   len (5 * ceil32(return_data.size)) + 100
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 641] = 30
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 673] = 'SafeMath: subtraction overflow'
                                            if not this.address:
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 37
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 'ERC20: transfer from the zero ad'
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705
                                                   len (5 * ceil32(return_data.size)) + 132
                                            if not distributionPoolAddress:
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = 32
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 35
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773] = 'ERC20: transfer to the zero addr'
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705
                                                   len (5 * ceil32(return_data.size)) + 132
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 705] = 38
                                            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 737 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if 0 > balanceOf[address(this.address)]:
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837] = 38
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 869 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 775 len 26]
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 907] = 0
                                                revert with memory
                                                  from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801
                                                   len (5 * ceil32(return_data.size)) + 132
                                            if balanceOf[address(this.address)] < 0:
                                                revert with 0, 17
                                            if balanceOf[stor17] > -1:
                                                revert with 0, 17
                                            if balanceOf[stor17] < balanceOf[stor17]:
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837] = 27
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: addition overflow'
                                                revert with memory
                                                  from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801
                                                   len (5 * ceil32(return_data.size)) + 100
                                            balanceOf[stor17] = balanceOf[stor17]
                                            emit Transfer(0, this.address, distributionPoolAddress);
                                            if balanceOf[this.address]:
                                                if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                    revert with 0, 17
                                                if not balanceOf[this.address]:
                                                    revert with 0, 18
                                                if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 805] = 32
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 837] = 33
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 869] = 'SafeMath: multiplication overflo'
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 901] = 0x7700000000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801
                                                       len (5 * ceil32(return_data.size)) + 132
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 997] = 32
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1029] = 30
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1061] = 'SafeMath: subtraction overflow'
                                                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1091] = 0
                                                    revert with memory
                                                      from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                allowance[address(this.address)][stor14].field_255 = 0
                                                emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1093] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285
                                                t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1251] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1251 len (9 * ceil32(return_data.size)) + 2]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 
                                                                'ERC20: approve from the zero address',
                                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 
                                                                'ERC20: approve to the zero address',
                                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285 len 9 * ceil32(return_data.size)]
                                                allowance[address(this.address)][stor14].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1349 len 9 * ceil32(return_data.size)]
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1153 len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153 len (13 * ceil32(return_data.size)) + 96],
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153] = 2
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185] = this.address
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1249] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1249
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1249] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1285] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1317] = 160
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1445
                                                t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1185
                                                while idx < mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1413 len (32 * mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1153]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor27.field_0) = 0
                                                if not msg.sender:
                                                    revert with 0, 
                                                                'ERC20: transfer from the zero address',
                                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                if not this.address:
                                                    revert with 0, 
                                                                'ERC20: transfer to the zero address',
                                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1381 len 17 * ceil32(return_data.size)]
                                                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1451] = 0
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48,
                                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1451 len (17 * ceil32(return_data.size)) + 26]
                                                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                                if balanceOf[this.address] > !ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1445 len 17 * ceil32(return_data.size)]
                                                balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1445 len ceil32(arg1.length)] = mem[160 len ceil32(arg1.length)]
                                                if ceil32(arg1.length) > arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1445] = 0
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0x12b8603f with:
                                                     gas gas_remaining wei
                                                    args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 1445 len (17 * ceil32(return_data.size)) + ceil32(arg1.length)])
                                            else:
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 801] = 26
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 833] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 865] = 26
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 897] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 929] = 30
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 961] = 'SafeMath: subtraction overflow'
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 993] = 2
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025] = this.address
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1089] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1057] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                allowance[address(this.address)][stor14].field_0 = 0
                                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1093] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1125] = 0
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285
                                                t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 1025
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1089] = 30
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1121] = 'SafeMath: subtraction overflow'
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
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1157] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1189] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1221] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1253] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1285] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 1317] = block.timestamp
                                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, 0, 0, 0, 0, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    0,
                                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153] = 2
                                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1185] = this.address
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1249] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1249
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1217] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1249] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1253] = balanceOf[this.address]
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1285] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1317] = 160
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1413] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1445
                                                t = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1185
                                                while idx < mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1349] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 1381] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 1153]) + -mem[64] + 1441]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor27.field_0) = 0
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                _5707 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_5707] = 38
                                                mem[_5707 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5707 + 70 len 26]
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
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 353] = 26
                                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385] = 'SafeMath: division by zero'
                                            if not balanceOf[this.address] * rewardsFee / 100:
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = 26
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = 2
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = this.address
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = 0
                                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = 160
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773
                                                t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513
                                                while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]) + -mem[64] + 769]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3474 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3474] = 30
                                                mem[_3474 + 32] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3504 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3504] = 30
                                                mem[_3504 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > balanceOf[this.address] * rewardsFee / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if balanceOf[this.address] * rewardsFee / 100 < 0:
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not distributionPoolAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                _3548 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3548] = 38
                                                mem[_3548 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3548 + 70 len 26]
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
                                                    _3650 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3650] = 26
                                                    mem[_3650 + 32] = 'SafeMath: division by zero'
                                                    _3674 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3674] = 26
                                                    mem[_3674 + 32] = 'SafeMath: division by zero'
                                                    _3686 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3686] = 30
                                                    mem[_3686 + 32] = 'SafeMath: subtraction overflow'
                                                    _3707 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_3707 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_3707]:
                                                        revert with 0, 50
                                                    mem[_3707 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_3707 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3707 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_3707]:
                                                        revert with 0, 50
                                                    mem[_3707 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[_3707 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3707 + ceil32(return_data.size) + 100] = 0
                                                    mem[_3707 + ceil32(return_data.size) + 132] = 0
                                                    mem[_3707 + ceil32(return_data.size) + 164] = 160
                                                    mem[_3707 + ceil32(return_data.size) + 260] = mem[_3707]
                                                    idx = 0
                                                    s = _3707 + ceil32(return_data.size) + 292
                                                    t = _3707 + 32
                                                    while idx < mem[_3707]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_3707 + ceil32(return_data.size) + 260 len (32 * mem[_3707]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_3707 + ceil32(return_data.size) + 96] = 30
                                                    mem[_3707 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
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
                                                    mem[_3707 + ceil32(return_data.size) + 228] = 0
                                                    mem[_3707 + ceil32(return_data.size) + 260] = 0
                                                    mem[_3707 + ceil32(return_data.size) + 292] = 0
                                                    mem[_3707 + ceil32(return_data.size) + 324] = block.timestamp
                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, 0, 0, 0, 0, block.timestamp
                                                    mem[_3707 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        0,
                                                    mem[_3707 + (2 * ceil32(return_data.size)) + 160] = 2
                                                    mem[_3707 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_3707 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[_3707 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 292] = 0
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 324] = 160
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 420] = 2
                                                    idx = 0
                                                    s = _3707 + (4 * ceil32(return_data.size)) + 452
                                                    t = _3707 + (2 * ceil32(return_data.size)) + 192
                                                    while idx < mem[_3707 + (2 * ceil32(return_data.size)) + 160]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3707 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_3707 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor27.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 256] = 38
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 288 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 352] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 356] = msg.sender
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 388] = 64
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 420] = mem[128]
                                                    mem[_3707 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[mem[128] + _3707 + (4 * ceil32(return_data.size)) + 452] = 0
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0x12b8603f with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[_3707 + (4 * ceil32(return_data.size)) + 452 len ceil32(mem[128])])
                                                else:
                                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address]:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    _3668 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3668] = 26
                                                    mem[_3668 + 32] = 'SafeMath: division by zero'
                                                    _3680 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3680] = 26
                                                    mem[_3680 + 32] = 'SafeMath: division by zero'
                                                    _3692 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3692] = 30
                                                    mem[_3692 + 32] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    _3756 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_3756 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_3756]:
                                                        revert with 0, 50
                                                    mem[_3756 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_3756 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3756 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_3756]:
                                                        revert with 0, 50
                                                    mem[_3756 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                    mem[_3756 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3756 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[_3756 + ceil32(return_data.size) + 132] = 0
                                                    mem[_3756 + ceil32(return_data.size) + 164] = 160
                                                    mem[_3756 + ceil32(return_data.size) + 260] = mem[_3756]
                                                    idx = 0
                                                    s = _3756 + ceil32(return_data.size) + 292
                                                    t = _3756 + 32
                                                    while idx < mem[_3756]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_3756 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_3756 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _3756 + ceil32(return_data.size) + (32 * mem[_3756]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4830 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4830] = 30
                                                    mem[_4830 + 32] = 'SafeMath: subtraction overflow'
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
                                                    _5114 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_5114 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_5114]:
                                                        revert with 0, 50
                                                    mem[_5114 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_5114 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _5114 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_5114]:
                                                        revert with 0, 50
                                                    mem[_5114 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_5114 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_5114 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                    mem[_5114 + ceil32(return_data.size) + 132] = 0
                                                    mem[_5114 + ceil32(return_data.size) + 164] = 160
                                                    mem[_5114 + ceil32(return_data.size) + 260] = mem[_5114]
                                                    idx = 0
                                                    s = _5114 + ceil32(return_data.size) + 292
                                                    t = _5114 + 32
                                                    while idx < mem[_5114]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_5114 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_5114 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _5114 + ceil32(return_data.size) + (32 * mem[_5114]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor27.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _5698 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_5698] = 38
                                                    mem[_5698 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5698 + 70 len 26]
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
                                                if balanceOf[this.address] * rewardsFee / 100 and stor26 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                                    revert with 0, 17
                                                if not balanceOf[this.address] * rewardsFee / 100:
                                                    revert with 0, 18
                                                if balanceOf[this.address] * rewardsFee / 100 * stor26 / balanceOf[this.address] * rewardsFee / 100 != stor26:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = 26
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = 'SafeMath: division by zero'
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = 2
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = this.address
                                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor26 / 100
                                                emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor26 / 100), this.address, uniswapV2RouterAddress);
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = balanceOf[this.address] * rewardsFee / 100 * stor26 / 100
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 613] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 645] = 160
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 741] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 773
                                                t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513
                                                while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 677] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 709] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]) + -mem[64] + 769]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3473 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3473] = 30
                                                mem[_3473 + 32] = 'SafeMath: subtraction overflow'
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3503 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3503] = 30
                                                mem[_3503 + 32] = 'SafeMath: subtraction overflow'
                                                if balanceOf[this.address] * rewardsFee / 100 * stor26 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor26 / 100:
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not distributionPoolAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                _3545 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3545] = 38
                                                mem[_3545 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100) > balanceOf[address(this.address)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3545 + 70 len 26]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100):
                                                    revert with 0, 17
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100)
                                                if balanceOf[stor17] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100)):
                                                    revert with 0, 17
                                                if balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100) < balanceOf[stor17]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = distributionPoolAddress
                                                mem[32] = 0
                                                balanceOf[stor17] = balanceOf[stor17] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100)
                                                emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor26 / 100)), this.address, distributionPoolAddress);
                                                if not balanceOf[this.address]:
                                                    _3649 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3649] = 26
                                                    mem[_3649 + 32] = 'SafeMath: division by zero'
                                                    _3673 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3673] = 26
                                                    mem[_3673 + 32] = 'SafeMath: division by zero'
                                                    _3685 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3685] = 30
                                                    mem[_3685 + 32] = 'SafeMath: subtraction overflow'
                                                    _3704 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_3704 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_3704]:
                                                        revert with 0, 50
                                                    mem[_3704 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_3704 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3704 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_3704]:
                                                        revert with 0, 50
                                                    mem[_3704 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = 0
                                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                                    mem[_3704 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3704 + ceil32(return_data.size) + 100] = 0
                                                    mem[_3704 + ceil32(return_data.size) + 132] = 0
                                                    mem[_3704 + ceil32(return_data.size) + 164] = 160
                                                    mem[_3704 + ceil32(return_data.size) + 260] = mem[_3704]
                                                    idx = 0
                                                    s = _3704 + ceil32(return_data.size) + 292
                                                    t = _3704 + 32
                                                    while idx < mem[_3704]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_3704 + ceil32(return_data.size) + 260 len (32 * mem[_3704]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_3704 + ceil32(return_data.size) + 96] = 30
                                                    mem[_3704 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
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
                                                    mem[_3704 + ceil32(return_data.size) + 228] = 0
                                                    mem[_3704 + ceil32(return_data.size) + 260] = 0
                                                    mem[_3704 + ceil32(return_data.size) + 292] = 0
                                                    mem[_3704 + ceil32(return_data.size) + 324] = block.timestamp
                                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args this.address, 0, 0, 0, 0, block.timestamp
                                                    mem[_3704 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        0,
                                                    mem[_3704 + (2 * ceil32(return_data.size)) + 160] = 2
                                                    mem[_3704 + (2 * ceil32(return_data.size)) + 192] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_3704 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3704 + (4 * ceil32(return_data.size)) + 256
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[_3704 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_3704 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3704 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                                    mem[_3704 + (4 * ceil32(return_data.size)) + 292] = 0
                                                    mem[_3704 + (4 * ceil32(return_data.size)) + 324] = 160
                                                    mem[_3704 + (4 * ceil32(return_data.size)) + 420] = 2
                                                    idx = 0
                                                    s = _3704 + (4 * ceil32(return_data.size)) + 452
                                                    t = _3704 + (2 * ceil32(return_data.size)) + 192
                                                    while idx < mem[_3704 + (2 * ceil32(return_data.size)) + 160]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_3704 + (4 * ceil32(return_data.size)) + 356] = this.address
                                                    mem[_3704 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _3704 + (4 * ceil32(return_data.size)) + (32 * mem[_3704 + (2 * ceil32(return_data.size)) + 160]) + -mem[64] + 448]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor27.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _5695 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_5695] = 38
                                                    mem[_5695 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5695 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                else:
                                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not balanceOf[this.address]:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    _3667 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3667] = 26
                                                    mem[_3667 + 32] = 'SafeMath: division by zero'
                                                    _3679 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3679] = 26
                                                    mem[_3679 + 32] = 'SafeMath: division by zero'
                                                    _3691 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3691] = 30
                                                    mem[_3691 + 32] = 'SafeMath: subtraction overflow'
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                                        var221001 = 32
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    _3754 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_3754 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_3754]:
                                                        revert with 0, 50
                                                    mem[_3754 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_3754 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3754 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_3754]:
                                                        revert with 0, 50
                                                    mem[_3754 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    allowance[address(this.address)][stor14].field_255 = 0
                                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                                    mem[_3754 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_3754 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                                    mem[_3754 + ceil32(return_data.size) + 132] = 0
                                                    mem[_3754 + ceil32(return_data.size) + 164] = 160
                                                    mem[_3754 + ceil32(return_data.size) + 260] = mem[_3754]
                                                    idx = 0
                                                    s = _3754 + ceil32(return_data.size) + 292
                                                    t = _3754 + 32
                                                    while idx < mem[_3754]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_3754 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_3754 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _3754 + ceil32(return_data.size) + (32 * mem[_3754]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4828 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4828] = 30
                                                    mem[_4828 + 32] = 'SafeMath: subtraction overflow'
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
                                                    _5110 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    mem[_5110 + 32 len 64] = call.data[calldata.size len 64]
                                                    if 0 >= mem[_5110]:
                                                        revert with 0, 50
                                                    mem[_5110 + 32] = this.address
                                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_5110 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _5110 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 1 >= mem[_5110]:
                                                        revert with 0, 50
                                                    mem[_5110 + 64] = ext_call.return_data[12 len 20]
                                                    if not this.address:
                                                        revert with 0, 'ERC20: approve from the zero address'
                                                    if not uniswapV2RouterAddress:
                                                        revert with 0, 'ERC20: approve to the zero address'
                                                    mem[0] = uniswapV2RouterAddress
                                                    mem[32] = sha3(address(this.address), 1)
                                                    allowance[address(this.address)][stor14].field_0 = balanceOf[this.address]
                                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                    mem[_5110 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_5110 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                                    mem[_5110 + ceil32(return_data.size) + 132] = 0
                                                    mem[_5110 + ceil32(return_data.size) + 164] = 160
                                                    mem[_5110 + ceil32(return_data.size) + 260] = mem[_5110]
                                                    idx = 0
                                                    s = _5110 + ceil32(return_data.size) + 292
                                                    t = _5110 + 32
                                                    while idx < mem[_5110]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_5110 + ceil32(return_data.size) + 196] = this.address
                                                    mem[_5110 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(uniswapV2RouterAddress)
                                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _5110 + ceil32(return_data.size) + (32 * mem[_5110]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor27.field_0) = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _5692 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_5692] = 38
                                                    mem[_5692 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5692 + 70 len 26]
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
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
