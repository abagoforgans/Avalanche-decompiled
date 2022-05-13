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
address sub_47b29845Address;
address distributionPoolAddress;
address dexRouterAddress;
address lpPairAddress;
address stor18;
address deadWalletAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 sub_600b02d4;
uint256 totalFees;
uint256 cashoutFee;
uint256 stor25;
uint8 stor26;
uint8 stor26; offset 8
uint256 stor26; offset 8
uint256 swapTokensAmount;
mapping of uint8 stor28;
mapping of uint8 stor29;

function dexRouter() {
    return dexRouterAddress
}

function totalFees() {
    return totalFees
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

function lpPair() {
    return lpPairAddress
}

function sub_47b29845(?) {
    return sub_47b29845Address
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function swapTokensAmount() {
    return swapTokensAmount
}

function sub_600b02d4(?) {
    return sub_600b02d4
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
    owner = 0
    emit OwnershipTransferred(owner, 0);
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
    sub_47b29845Address = arg1
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
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._distributeRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
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

function updateLiquiditFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityPoolFee = arg1
    if rewardsFee > !arg1:
        revert with 0, 17
    if rewardsFee + arg1 > !sub_600b02d4:
        revert with 0, 17
    totalFees = rewardsFee + arg1 + sub_600b02d4
}

function updateRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsFee = arg1
    if arg1 > !liquidityPoolFee:
        revert with 0, 17
    if arg1 + liquidityPoolFee > !sub_600b02d4:
        revert with 0, 17
    totalFees = arg1 + liquidityPoolFee + sub_600b02d4
}

function updateFuturFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_600b02d4 = arg1
    if rewardsFee > !liquidityPoolFee:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee > !arg1:
        revert with 0, 17
    totalFees = rewardsFee + liquidityPoolFee + arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lpPairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: The Trader Joe pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor29[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor29[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function getRewardAmount() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._getRewardAmountOf(address arg1) with:
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
    if stor28[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor28[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_bb87cd9e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length <= 3:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if arg2.length >= 32:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if not address(arg1):
        revert with 0, 'NODE CREATION:  creation from the zero address'
    if stor28[address(arg1)]:
        revert with 0, 'NODE CREATION: Blacklisted address'
    if sub_47b29845Address == address(arg1):
        revert with 0, 'NODE CREATION: futureUsePool and distributionPool cannot create node'
    if distributionPoolAddress == address(arg1):
        revert with 0, 'NODE CREATION: futureUsePool and distributionPool cannot create node'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
         gas gas_remaining wei
        args address(arg1), 64, arg2.length, arg2[all], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setJoeV2RouterAndCreatePair() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor18)
    staticcall stor18.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor18)
    staticcall stor18.0x73b295c2 with:
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
    lpPairAddress = ext_call.return_data[12 len 20]
    dexRouterAddress = stor18
    if 1 == bool(stor29[ext_call.return_data[12 len 20]]):
        revert with 0, 'TKN: Automated market maker pair is already set to that value'
    stor29[address(ext_call.return_data[0])] = 1
    emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
}

function updateJoeV2RouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if dexRouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The router already has that address'
    emit 0xf7c6b736: arg1, dexRouterAddress
    dexRouterAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(dexRouterAddress)
    staticcall dexRouterAddress.0x73b295c2 with:
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
    lpPairAddress = ext_call.return_data[12 len 20]
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
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender].field_0 < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CASHOUT: zero address cannot cash out rewards'
    if stor28[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CASHOUT: Blacklisted address cannot cash out rewards'
    if sub_47b29845Address == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CASHOUT: future and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CASHOUT: future and rewardsPool cannot cashout rewards'
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CASHOUT: You don't have enough reward to cash out'
    if not uint8(stor26.field_8):
        if not distributionPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor15] < ext_call.return_data[0]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor15] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[msg.sender] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
    else:
        if not cashoutFee:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if not distributionPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor15] < ext_call.return_data[0]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor15] -= ext_call.return_data[0]
            if balanceOf[msg.sender] > !ext_call.return_data[0]:
                revert with 0, 17
            balanceOf[msg.sender] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
        else:
            if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = this.address
            require ext_code.size(dexRouterAddress)
            staticcall dexRouterAddress.0x73b295c2 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
            if not this.address:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 36
                mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if not dexRouterAddress:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 34
                mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            allowance[address(this.address)][stor16].field_0 = ext_call.return_data[0] * cashoutFee / 100
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0] * cashoutFee / 100
            emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, dexRouterAddress);
            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * cashoutFee / 100
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(dexRouterAddress)
            call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call sub_47b29845Address with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                revert with 0, 17
            if not distributionPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor15] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor15] = balanceOf[stor15] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
            if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                revert with 0, 17
            balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
            emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._cashoutAllNodesReward(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CASHOUT: zero address cannot cash out rewards'
    if stor28[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CASHOUT: Blacklisted address cannot cash out rewards'
    if sub_47b29845Address == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CASHOUT: future and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CASHOUT: future and rewardsPool cannot cashout rewards'
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress._getRewardAmountOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CASHOUT: You don't have enough reward to cash out'
    if not uint8(stor26.field_8):
        if not distributionPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor15] < ext_call.return_data[0]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor15] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[msg.sender] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
    else:
        if not cashoutFee:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if not distributionPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor15] < ext_call.return_data[0]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor15] -= ext_call.return_data[0]
            if balanceOf[msg.sender] > !ext_call.return_data[0]:
                revert with 0, 17
            balanceOf[msg.sender] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
        else:
            if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = this.address
            require ext_code.size(dexRouterAddress)
            staticcall dexRouterAddress.0x73b295c2 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
            if not this.address:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 36
                mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            if not dexRouterAddress:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 34
                mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 132
            allowance[address(this.address)][stor16].field_0 = ext_call.return_data[0] * cashoutFee / 100
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0] * cashoutFee / 100
            emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, dexRouterAddress);
            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * cashoutFee / 100
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(dexRouterAddress)
            call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call sub_47b29845Address with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                revert with 0, 17
            if not distributionPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor15] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor15] = balanceOf[stor15] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
            if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                revert with 0, 17
            balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
            emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
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
    if 3 >= arg1.length:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if arg1.length >= 32:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if not msg.sender:
        revert with 0, 'NODE CREATION:  creation from the zero address'
    if stor28[address(msg.sender)]:
        revert with 0, 'NODE CREATION: Blacklisted address'
    if sub_47b29845Address == msg.sender:
        revert with 0, 'NODE CREATION: futureUsePool and distributionPool cannot create node'
    if distributionPoolAddress == msg.sender:
        revert with 0, 'NODE CREATION: futureUsePool and distributionPool cannot create node'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.nodePrice() with:
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
        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
        if balanceOf[this.address] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[this.address] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
        require ext_code.size(nodeRewardManagementAddress)
        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all])
    else:
        if not uint8(stor26.field_8):
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= ext_call.return_data[0]
            if balanceOf[this.address] > !ext_call.return_data[0]:
                revert with 0, 17
            balanceOf[this.address] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], msg.sender, this.address);
            require ext_code.size(nodeRewardManagementAddress)
            call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                 gas gas_remaining wei
                args msg.sender, Array(len=arg1.length, data=arg1[all])
        else:
            if uint8(stor26.field_0):
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                if balanceOf[this.address] > !ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[this.address] += ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                require ext_code.size(nodeRewardManagementAddress)
                call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all])
            else:
                if owner == msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                    if balanceOf[this.address] > !ext_call.return_data[0]:
                        revert with 0, 17
                    balanceOf[this.address] += ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                    require ext_code.size(nodeRewardManagementAddress)
                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all])
                else:
                    if stor29[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=arg1[all])
                    else:
                        uint8(stor26.field_0) = 1
                        if balanceOf[this.address] and sub_600b02d4 > -1 / balanceOf[this.address]:
                            revert with 0, 17
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = 2
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = this.address
                        require ext_code.size(dexRouterAddress)
                        staticcall dexRouterAddress.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = ext_call.return_data[12 len 20]
                        if not this.address:
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 197] = 32
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 229] = 36
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 'ERC20: approve from the zero add'
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 0x7265737300000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193
                               len ceil32(return_data.size) + 132
                        if not dexRouterAddress:
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 197] = 32
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 229] = 34
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 'ERC20: approve to the zero addre'
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 0x7373000000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193
                               len ceil32(return_data.size) + 132
                        allowance[address(this.address)][stor16].field_0 = balanceOf[this.address] * sub_600b02d4 / 100
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193] = balanceOf[this.address] * sub_600b02d4 / 100
                        emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193 len ceil32(return_data.size) + 32], this.address, dexRouterAddress);
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 197] = balanceOf[this.address] * sub_600b02d4 / 100
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 160
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 2
                        idx = 0
                        s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389
                        t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129
                        while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = this.address
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = block.timestamp
                        require ext_code.size(dexRouterAddress)
                        call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[this.address] * sub_600b02d4 / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        call sub_47b29845Address with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                            revert with 0, 17
                        if balanceOf[this.address] * rewardsFee / 100 and stor25 > -1 / balanceOf[this.address] * rewardsFee / 100:
                            revert with 0, 17
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193] = 2
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 225] = this.address
                        require ext_code.size(dexRouterAddress)
                        staticcall dexRouterAddress.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 289
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not dexRouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = dexRouterAddress
                        mem[32] = sha3(address(this.address), 1)
                        allowance[address(this.address)][stor16].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor25 / 100
                        emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor25 / 100), this.address, dexRouterAddress);
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 289] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 293] = balanceOf[this.address] * rewardsFee / 100 * stor25 / 100
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 357] = 160
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 453] = 2
                        idx = 0
                        s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 485
                        t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 225
                        while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 389] = this.address
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 421] = block.timestamp
                        require ext_code.size(dexRouterAddress)
                        call dexRouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193]) + -mem[64] + 481]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        call distributionPoolAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor25 / 100:
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not distributionPoolAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor25 / 100):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        mem[32] = 0
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor25 / 100)
                        mem[0] = distributionPoolAddress
                        if balanceOf[stor15] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor25 / 100)):
                            revert with 0, 17
                        balanceOf[stor15] = balanceOf[stor15] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor25 / 100)
                        emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor25 / 100)), this.address, distributionPoolAddress);
                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                            revert with 0, 17
                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        _320 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_320 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_320]:
                            revert with 0, 50
                        mem[_320 + 32] = this.address
                        require ext_code.size(dexRouterAddress)
                        staticcall dexRouterAddress.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[_320 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _320 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_320]:
                            revert with 0, 50
                        mem[_320 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not dexRouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = dexRouterAddress
                        mem[32] = sha3(address(this.address), 1)
                        allowance[address(this.address)][stor16].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                        allowance[address(this.address)][stor16].field_255 = 0
                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, dexRouterAddress);
                        mem[_320 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_320 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                        mem[_320 + ceil32(return_data.size) + 132] = 0
                        mem[_320 + ceil32(return_data.size) + 164] = 160
                        mem[_320 + ceil32(return_data.size) + 260] = mem[_320]
                        idx = 0
                        s = _320 + ceil32(return_data.size) + 292
                        t = _320 + 32
                        while idx < mem[_320]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(dexRouterAddress)
                        call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_320 + ceil32(return_data.size) + 260 len (32 * mem[_320]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not dexRouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor16].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                        emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, dexRouterAddress);
                        mem[_320 + ceil32(return_data.size) + 164] = 0
                        mem[_320 + ceil32(return_data.size) + 196] = 0
                        mem[_320 + ceil32(return_data.size) + 228] = 0
                        mem[_320 + ceil32(return_data.size) + 260] = block.timestamp
                        require ext_code.size(dexRouterAddress)
                        call dexRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                        mem[_320 + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                        mem[_320 + (2 * ceil32(return_data.size)) + 96] = 2
                        mem[_320 + (2 * ceil32(return_data.size)) + 128] = this.address
                        require ext_code.size(dexRouterAddress)
                        staticcall dexRouterAddress.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[_320 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_320 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not dexRouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor16].field_0 = balanceOf[this.address]
                        emit Approval(balanceOf[this.address], this.address, dexRouterAddress);
                        mem[_320 + (4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_320 + (4 * ceil32(return_data.size)) + 196] = balanceOf[this.address]
                        mem[_320 + (4 * ceil32(return_data.size)) + 228] = 0
                        mem[_320 + (4 * ceil32(return_data.size)) + 260] = 160
                        mem[_320 + (4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = _320 + (4 * ceil32(return_data.size)) + 388
                        t = _320 + (2 * ceil32(return_data.size)) + 128
                        while idx < mem[_320 + (2 * ceil32(return_data.size)) + 96]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_320 + (4 * ceil32(return_data.size)) + 292] = this.address
                        mem[_320 + (4 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(dexRouterAddress)
                        call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_320 + (4 * ceil32(return_data.size)) + 356 len (32 * mem[_320 + (2 * ceil32(return_data.size)) + 96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor26.field_0) = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                        mem[_320 + (4 * ceil32(return_data.size)) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                        mem[_320 + (4 * ceil32(return_data.size)) + 196] = msg.sender
                        mem[_320 + (4 * ceil32(return_data.size)) + 228] = 64
                        mem[_320 + (4 * ceil32(return_data.size)) + 260] = mem[96]
                        mem[_320 + (4 * ceil32(return_data.size)) + 292 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) > mem[96]:
                            mem[mem[96] + _320 + (4 * ceil32(return_data.size)) + 292] = 0
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=mem[96], data=mem[_320 + (4 * ceil32(return_data.size)) + 292 len ceil32(mem[96])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x7b770392(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x452ed4f1(?????) > uint32(call.func_hash) >> 224:
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
                        if rewardsFee + arg1 > !sub_600b02d4:
                            revert with 0, 17
                        totalFees = rewardsFee + arg1 + sub_600b02d4
                    else:
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
                        else:
                            if unknown_0x1cdd3be3(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == address(arg1)
                                return bool(stor28[arg1])
                            if unknown_0x23b872dd(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 96
                                require arg1 == address(arg1)
                                require arg2 == address(arg2)
                                if not address(arg1):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(arg2):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if stor28[address(arg1)]:
                                    revert with 0, 'Blacklisted address'
                                if stor28[address(arg2)]:
                                    revert with 0, 'Blacklisted address'
                                if not address(arg1):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(arg2):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                                if not address(arg1):
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                                emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), address(arg1), msg.sender);
                                return 1
                            if uint32(call.func_hash) >> 224 != unknown_0x29dcfe16(?????):
                                require unknown_0x2bb14e1d(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return rewardsFee
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(stor18)
                            staticcall stor18.factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor18)
                            staticcall stor18.0x73b295c2 with:
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
                            lpPairAddress = ext_call.return_data[12 len 20]
                            dexRouterAddress = stor18
                            if 1 == bool(stor29[ext_call.return_data[12 len 20]]):
                                revert with 0, 'TKN: Automated market maker pair is already set to that value'
                            stor29[address(ext_call.return_data[0])] = 1
                            emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
                if getRewardAmount() > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != name():
                        if dexRouter() == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return dexRouterAddress
                        if updateRewardsFee(uint256 arg1) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            rewardsFee = arg1
                            if arg1 > !liquidityPoolFee:
                                revert with 0, 17
                            if arg1 + liquidityPoolFee > !sub_600b02d4:
                                revert with 0, 17
                            totalFees = arg1 + liquidityPoolFee + sub_600b02d4
                        require approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224
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
                if getRewardAmount() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'SENDER CAN'T BE ZERO'
                    require ext_code.size(nodeRewardManagementAddress)
                    staticcall nodeRewardManagementAddress._isNodeOwner(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NO NODE OWNER'
                    require ext_code.size(nodeRewardManagementAddress)
                    staticcall nodeRewardManagementAddress._getRewardAmountOf(address arg1) with:
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
                    sub_47b29845Address = address(arg1)
                if unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalFees
                if uint32(call.func_hash) >> 224 != unknown_0x138a634a(?????):
                    require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return totalSupply
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
                _447 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _487 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _447 + _487 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_487)] = mem[ceil32(return_data.size) + _447 + 160 len ceil32(_487)]
                if ceil32(_487) > _487:
                    mem[_487 + (2 * ceil32(return_data.size)) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _487
                mem[mem[64] + 64 len ceil32(_487)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_487)]
                if ceil32(_487) > _487:
                    mem[_487 + mem[64] + 64] = 0
                return Array(len=_487, data=mem[mem[64] + 64 len ceil32(_487)])
            if unknown_0x5f1c3182(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x54557973(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x452ed4f1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return lpPairAddress
                    if unknown_0x47b29845(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_47b29845Address
                    if uint32(call.func_hash) >> 224 != unknown_0x48b75044(?????):
                        require unknown_0x4dc9b819(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress.totalRewardStaked() with:
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
                    if uint32(call.func_hash) >> 224 != unknown_0x54557973(?????):
                        if unknown_0x54f12f1f(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return liquidityPoolFee
                        if unknown_0x583bd7a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == bool(arg1)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            Mask(248, 0, stor26.field_8) = Mask(248, 0, bool(arg1))
                        if unknown_0x59640ed9(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress._changeGasDistri(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require unknown_0x5b0d4674(?????) == uint32(call.func_hash) >> 224
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
                        _525 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                        mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                        require _468 + _525 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_525)] = mem[ceil32(return_data.size) + _468 + 160 len ceil32(_525)]
                        if ceil32(_525) > _525:
                            mem[_525 + (2 * ceil32(return_data.size)) + 160] = 0
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _525
                        mem[mem[64] + 64 len ceil32(_525)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_525)]
                        if ceil32(_525) > _525:
                            mem[_525 + mem[64] + 64] = 0
                        return Array(len=_525, data=mem[mem[64] + 64 len ceil32(_525)])
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'CASHOUT: zero address cannot cash out rewards'
                    if stor28[address(msg.sender)]:
                        revert with 0, 'CASHOUT: Blacklisted address cannot cash out rewards'
                    if sub_47b29845Address == msg.sender:
                        revert with 0, 'CASHOUT: future and rewardsPool cannot cashout rewards'
                    if distributionPoolAddress == msg.sender:
                        revert with 0, 'CASHOUT: future and rewardsPool cannot cashout rewards'
                    mem[132] = msg.sender
                    require ext_code.size(nodeRewardManagementAddress)
                    staticcall nodeRewardManagementAddress._getRewardAmountOf(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'CASHOUT: You don't have enough reward to cash out'
                    if not uint8(stor26.field_8):
                        if not distributionPoolAddress:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[stor15] < ext_call.return_data[0]:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[stor15] -= ext_call.return_data[0]
                        if balanceOf[msg.sender] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[msg.sender] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
                    else:
                        if not cashoutFee:
                            if ext_call.return_data[0] < 0:
                                revert with 0, 17
                            if not distributionPoolAddress:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[stor15] < ext_call.return_data[0]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[stor15] -= ext_call.return_data[0]
                            if balanceOf[msg.sender] > !ext_call.return_data[0]:
                                revert with 0, 17
                            balanceOf[msg.sender] += ext_call.return_data[0]
                            emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
                        else:
                            if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 128] = 2
                            mem[ceil32(return_data.size) + 160] = this.address
                            require ext_code.size(dexRouterAddress)
                            staticcall dexRouterAddress.0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                            if not this.address:
                                mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 228] = 32
                                mem[(2 * ceil32(return_data.size)) + 260] = 36
                                mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                mem[(2 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 224
                                   len ceil32(return_data.size) + 132
                            if not dexRouterAddress:
                                mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 228] = 32
                                mem[(2 * ceil32(return_data.size)) + 260] = 34
                                mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                mem[(2 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 224
                                   len ceil32(return_data.size) + 132
                            allowance[address(this.address)][stor16].field_0 = ext_call.return_data[0] * cashoutFee / 100
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * cashoutFee / 100
                            emit Approval(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], this.address, dexRouterAddress);
                            mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * cashoutFee / 100
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = 160
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 420
                            t = ceil32(return_data.size) + 160
                            while idx < mem[ceil32(return_data.size) + 128]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = this.address
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                            require ext_code.size(dexRouterAddress)
                            call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call sub_47b29845Address with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                                revert with 0, 17
                            if not distributionPoolAddress:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[stor15] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[stor15] = balanceOf[stor15] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
                            if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                                revert with 0, 17
                            balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                            emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
                    require ext_code.size(nodeRewardManagementAddress)
                    call nodeRewardManagementAddress._cashoutAllNodesReward(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if unknown_0x697e2f8e(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x697e2f8e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return nodeRewardManagementAddress
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
                    if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return balanceOf[address(arg1)]
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    if unknown_0x5f1c3182(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return swapTokensAmount
                    if unknown_0x600b02d4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_600b02d4
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
                            revert with 0, 'CASHOUT: zero address cannot cash out rewards'
                        if stor28[address(msg.sender)]:
                            revert with 0, 'CASHOUT: Blacklisted address cannot cash out rewards'
                        if sub_47b29845Address == msg.sender:
                            revert with 0, 'CASHOUT: future and rewardsPool cannot cashout rewards'
                        if distributionPoolAddress == msg.sender:
                            revert with 0, 'CASHOUT: future and rewardsPool cannot cashout rewards'
                        mem[132] = msg.sender
                        mem[164] = arg1
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress._getRewardAmountOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, arg1
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'CASHOUT: You don't have enough reward to cash out'
                        if not uint8(stor26.field_8):
                            if not distributionPoolAddress:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[stor15] < ext_call.return_data[0]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[stor15] -= ext_call.return_data[0]
                            if balanceOf[msg.sender] > !ext_call.return_data[0]:
                                revert with 0, 17
                            balanceOf[msg.sender] += ext_call.return_data[0]
                            emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
                        else:
                            if not cashoutFee:
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[stor15] < ext_call.return_data[0]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[stor15] -= ext_call.return_data[0]
                                if balanceOf[msg.sender] > !ext_call.return_data[0]:
                                    revert with 0, 17
                                balanceOf[msg.sender] += ext_call.return_data[0]
                                emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
                            else:
                                if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 128] = 2
                                mem[ceil32(return_data.size) + 160] = this.address
                                require ext_code.size(dexRouterAddress)
                                staticcall dexRouterAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 228] = 32
                                    mem[(2 * ceil32(return_data.size)) + 260] = 36
                                    mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                    mem[(2 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 224
                                       len ceil32(return_data.size) + 132
                                if not dexRouterAddress:
                                    mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 228] = 32
                                    mem[(2 * ceil32(return_data.size)) + 260] = 34
                                    mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                    mem[(2 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 224
                                       len ceil32(return_data.size) + 132
                                allowance[address(this.address)][stor16].field_0 = ext_call.return_data[0] * cashoutFee / 100
                                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0] * cashoutFee / 100
                                emit Approval(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], this.address, dexRouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * cashoutFee / 100
                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                mem[(2 * ceil32(return_data.size)) + 292] = 160
                                mem[(2 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 420
                                t = ceil32(return_data.size) + 160
                                while idx < mem[ceil32(return_data.size) + 128]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                require ext_code.size(dexRouterAddress)
                                call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call sub_47b29845Address with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                                    revert with 0, 17
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[stor15] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[stor15] = balanceOf[stor15] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
                                if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
                                    revert with 0, 17
                                balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                                emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), distributionPoolAddress, msg.sender);
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if unknown_0xb62496f5(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xda41b333(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xc5ca7d6d(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0xc5ca7d6d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return distributionPoolAddress
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
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress._changeAutoDistri(bool arg1) with:
                                 gas gas_remaining wei
                                args bool(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if unknown_0xd79779b2(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == address(arg1)
                                return totalReleased[address(arg1)]
                            require unknown_0xd8929342(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            require arg2 == bool(arg2)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor28[address(arg1)] = uint8(bool(arg2))
                    if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor29[arg1])
                    if unknown_0xb96392c1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress._getRewardAmountOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xbb87cd9e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 <= test266151307()
                        require arg2 + 35 < calldata.size
                        if arg2.length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                            revert with 0, 65
                        require arg2 + arg2.length + 36 <= calldata.size
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg2.length <= 3:
                            revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                        if arg2.length >= 32:
                            revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                        if not address(arg1):
                            revert with 0, 'NODE CREATION:  creation from the zero address'
                        if stor28[address(arg1)]:
                            revert with 0, 'NODE CREATION: Blacklisted address'
                        if sub_47b29845Address == address(arg1):
                            revert with 0, 'NODE CREATION: futureUsePool and distributionPool cannot create node'
                        if distributionPoolAddress == address(arg1):
                            revert with 0, 'NODE CREATION: futureUsePool and distributionPool cannot create node'
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 64, arg2.length, arg2[all], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require unknown_0xbdf24a53(?????) == uint32(call.func_hash) >> 224
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
                    _460 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _511 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _460 + _511 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_511)] = mem[ceil32(return_data.size) + _460 + 160 len ceil32(_511)]
                    if ceil32(_511) > _511:
                        mem[_511 + (2 * ceil32(return_data.size)) + 160] = 0
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _511
                    mem[mem[64] + 64 len ceil32(_511)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_511)]
                    if ceil32(_511) > _511:
                        mem[_511 + mem[64] + 64] = 0
                    return Array(len=_511, data=mem[mem[64] + 64 len ceil32(_511)])
                if unknown_0xf2fde38b(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
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
                        require arg1 == address(arg1)
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress._getNodeNumberOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
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
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)].field_0
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
                _480 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _537 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _480 + _537 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_537)] = mem[ceil32(return_data.size) + _480 + 160 len ceil32(_537)]
                if ceil32(_537) > _537:
                    mem[_537 + (2 * ceil32(return_data.size)) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _537
                mem[mem[64] + 64 len ceil32(_537)] = mem[(2 * ceil32(return_data.size)) + 160 len ceil32(_537)]
                if ceil32(_537) > _537:
                    mem[_537 + mem[64] + 64] = 0
                return Array(len=_537, data=mem[mem[64] + 64 len ceil32(_537)])
            if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x85141a77(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x85141a77(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return deadWalletAddress
                    if unknown_0x8743ef6d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress._distributeRewards() with:
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
                            sub_600b02d4 = arg1
                            if rewardsFee > !liquidityPoolFee:
                                revert with 0, 17
                            if rewardsFee + liquidityPoolFee > !arg1:
                                revert with 0, 17
                            totalFees = rewardsFee + liquidityPoolFee + arg1
                else:
                    if unknown_0x7b770392(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress._changeRewardPerNode(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x8013858b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress._changeNodePrice(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0x80368d19(?????):
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
                            require arg1 == address(arg1)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if dexRouterAddress == address(arg1):
                                revert with 0, 'TKN: The router already has that address'
                            emit 0xf7c6b736: address(arg1), dexRouterAddress
                            dexRouterAddress = address(arg1)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(dexRouterAddress)
                            staticcall dexRouterAddress.0x73b295c2 with:
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
                            lpPairAddress = ext_call.return_data[12 len 20]
            else:
                if unknown_0x9a7a23d6(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if lpPairAddress == address(arg1):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'TKN: The Trader Joe pair cannot be removed from automatedMarketMakerPairs'
                        if bool(arg2) == bool(stor29[address(arg1)]):
                            revert with 0, 'TKN: Automated market maker pair is already set to that value'
                        stor29[address(arg1)] = uint8(bool(arg2))
                        emit SetAutomatedMarketMakerPair(address(arg1), bool(arg2));
                    if unknown_0x9c82751c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress._changeClaimTime(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if allowance[msg.sender][address(arg1)].field_0 < arg2:
                            revert with 0, 'ERC20: decreased allowance below zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
                        emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, address(arg1));
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
                        require unknown_0xa9059cbb(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if stor28[address(msg.sender)]:
                            revert with 0, 'Blacklisted address'
                        if stor28[address(arg1)]:
                            revert with 0, 'Blacklisted address'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, address(arg1));
                    return 1
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
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
                require arg1 + 35 < calldata.size
                if arg1.length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = arg1.length
                require arg1 + arg1.length + 36 <= calldata.size
                mem[160 len arg1.length] = arg1[all]
                mem[arg1.length + 160] = 0
                if 3 >= arg1.length:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                if arg1.length >= 32:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                if not msg.sender:
                    revert with 0, 'NODE CREATION:  creation from the zero address'
                if stor28[address(msg.sender)]:
                    revert with 0, 'NODE CREATION: Blacklisted address'
                if sub_47b29845Address == msg.sender:
                    revert with 0, 'NODE CREATION: futureUsePool and distributionPool cannot create node'
                if distributionPoolAddress == msg.sender:
                    revert with 0, 'NODE CREATION: futureUsePool and distributionPool cannot create node'
                require ext_code.size(nodeRewardManagementAddress)
                staticcall nodeRewardManagementAddress.nodePrice() with:
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
                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                    if balanceOf[this.address] > !ext_call.return_data[0]:
                        revert with 0, 17
                    balanceOf[this.address] += ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                    require ext_code.size(nodeRewardManagementAddress)
                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all])
                else:
                    if not uint8(stor26.field_8):
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                        if balanceOf[this.address] > !ext_call.return_data[0]:
                            revert with 0, 17
                        balanceOf[this.address] += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=arg1[all])
                    else:
                        if uint8(stor26.field_0):
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                            if balanceOf[this.address] > !ext_call.return_data[0]:
                                revert with 0, 17
                            balanceOf[this.address] += ext_call.return_data[0]
                            emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=arg1.length, data=arg1[all])
                        else:
                            if owner == msg.sender:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                if balanceOf[this.address] > !ext_call.return_data[0]:
                                    revert with 0, 17
                                balanceOf[this.address] += ext_call.return_data[0]
                                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=arg1.length, data=arg1[all])
                            else:
                                if stor29[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    require ext_code.size(nodeRewardManagementAddress)
                                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=arg1.length, data=arg1[all])
                                else:
                                    uint8(stor26.field_0) = 1
                                    if balanceOf[this.address] and sub_600b02d4 > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = 2
                                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = this.address
                                    require ext_code.size(dexRouterAddress)
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 225
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 225] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 229] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 36
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 'ERC20: approve from the zero add'
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 225
                                           len ceil32(return_data.size) + 132
                                    if not dexRouterAddress:
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 225] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 229] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 34
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 'ERC20: approve to the zero addre'
                                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 225
                                           len ceil32(return_data.size) + 132
                                    mem[0] = dexRouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor16].field_0 = balanceOf[this.address] * sub_600b02d4 / 100
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 225] = balanceOf[this.address] * sub_600b02d4 / 100
                                    emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 225 len ceil32(return_data.size) + 32], this.address, dexRouterAddress);
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 225] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 229] = balanceOf[this.address] * sub_600b02d4 / 100
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421
                                    t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161
                                    while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]) + -mem[64] + 417]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call sub_47b29845Address with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if balanceOf[this.address] * rewardsFee / 100 and stor25 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 17
                                    _1308 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_1308 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_1308]:
                                        revert with 0, 50
                                    mem[_1308 + 32] = this.address
                                    require ext_code.size(dexRouterAddress)
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_1308 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1308 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1308]:
                                        revert with 0, 50
                                    mem[_1308 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not dexRouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = dexRouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor16].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor25 / 100
                                    emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor25 / 100), this.address, dexRouterAddress);
                                    mem[_1308 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_1308 + ceil32(return_data.size) + 100] = balanceOf[this.address] * rewardsFee / 100 * stor25 / 100
                                    mem[_1308 + ceil32(return_data.size) + 132] = 0
                                    mem[_1308 + ceil32(return_data.size) + 164] = 160
                                    mem[_1308 + ceil32(return_data.size) + 260] = mem[_1308]
                                    idx = 0
                                    s = _1308 + ceil32(return_data.size) + 292
                                    t = _1308 + 32
                                    while idx < mem[_1308]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1308 + ceil32(return_data.size) + 196] = this.address
                                    mem[_1308 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1308 + ceil32(return_data.size) + (32 * mem[_1308]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor25 / 100:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor25 / 100):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    mem[32] = 0
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor25 / 100)
                                    mem[0] = distributionPoolAddress
                                    if balanceOf[stor15] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor25 / 100)):
                                        revert with 0, 17
                                    balanceOf[stor15] = balanceOf[stor15] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor25 / 100)
                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor25 / 100)), this.address, distributionPoolAddress);
                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                        revert with 0, 17
                                    _1484 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_1484 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_1484]:
                                        revert with 0, 50
                                    mem[_1484 + 32] = this.address
                                    require ext_code.size(dexRouterAddress)
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_1484 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1484 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1484]:
                                        revert with 0, 50
                                    mem[_1484 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not dexRouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = dexRouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor16].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    allowance[address(this.address)][stor16].field_255 = 0
                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, dexRouterAddress);
                                    mem[_1484 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_1484 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    mem[_1484 + ceil32(return_data.size) + 132] = 0
                                    mem[_1484 + ceil32(return_data.size) + 164] = 160
                                    mem[_1484 + ceil32(return_data.size) + 260] = mem[_1484]
                                    idx = 0
                                    s = _1484 + ceil32(return_data.size) + 292
                                    t = _1484 + 32
                                    while idx < mem[_1484]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_1484 + ceil32(return_data.size) + 260 len (32 * mem[_1484]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not dexRouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor16].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, dexRouterAddress);
                                    mem[_1484 + ceil32(return_data.size) + 164] = 0
                                    mem[_1484 + ceil32(return_data.size) + 196] = 0
                                    mem[_1484 + ceil32(return_data.size) + 228] = 0
                                    mem[_1484 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[_1484 + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                    mem[_1484 + (2 * ceil32(return_data.size)) + 96] = 2
                                    mem[_1484 + (2 * ceil32(return_data.size)) + 128] = this.address
                                    require ext_code.size(dexRouterAddress)
                                    staticcall dexRouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_1484 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1484 + (4 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_1484 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not dexRouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = dexRouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor16].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, dexRouterAddress);
                                    mem[_1484 + (4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_1484 + (4 * ceil32(return_data.size)) + 196] = balanceOf[this.address]
                                    mem[_1484 + (4 * ceil32(return_data.size)) + 228] = 0
                                    mem[_1484 + (4 * ceil32(return_data.size)) + 260] = 160
                                    mem[_1484 + (4 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = _1484 + (4 * ceil32(return_data.size)) + 388
                                    t = _1484 + (2 * ceil32(return_data.size)) + 128
                                    while idx < mem[_1484 + (2 * ceil32(return_data.size)) + 96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1484 + (4 * ceil32(return_data.size)) + 292] = this.address
                                    mem[_1484 + (4 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(dexRouterAddress)
                                    call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_1484 + (4 * ceil32(return_data.size)) + 356 len (32 * mem[_1484 + (2 * ceil32(return_data.size)) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor26.field_0) = 0
                                    if not msg.sender:
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 196] = 32
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 228] = 37
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 260] = 'ERC20: transfer from the zero ad'
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 292] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _1484 + (4 * ceil32(return_data.size)) + 192
                                           len (5 * ceil32(return_data.size)) + 132
                                    if not this.address:
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 196] = 32
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 228] = 35
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 260] = 'ERC20: transfer to the zero addr'
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 292] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _1484 + (4 * ceil32(return_data.size)) + 192
                                           len (5 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 196] = 32
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 228] = 38
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 260] = 'ERC20: transfer amount exceeds b'
                                        mem[_1484 + (4 * ceil32(return_data.size)) + 292] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _1484 + (4 * ceil32(return_data.size)) + 192
                                           len (5 * ceil32(return_data.size)) + 132
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[this.address] += ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    mem[_1484 + (4 * ceil32(return_data.size)) + 192] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[_1484 + (4 * ceil32(return_data.size)) + 196] = msg.sender
                                    mem[_1484 + (4 * ceil32(return_data.size)) + 228] = 64
                                    mem[_1484 + (4 * ceil32(return_data.size)) + 260] = mem[128]
                                    mem[_1484 + (4 * ceil32(return_data.size)) + 292 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                    if ceil32(mem[128]) > mem[128]:
                                        mem[mem[128] + _1484 + (4 * ceil32(return_data.size)) + 292] = 0
                                    require ext_code.size(nodeRewardManagementAddress)
                                    call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args mem[_1484 + (4 * ceil32(return_data.size)) + 196 len ceil32(mem[128]) + (5 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
