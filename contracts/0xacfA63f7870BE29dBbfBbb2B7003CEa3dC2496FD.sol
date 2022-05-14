contract main {




// =====================  Runtime code  =====================


#
#  - _getNodeRewardAmountOf(address arg1, uint256 arg2)
#  - cashoutReward(uint256 arg1)
#  - distributeRewards()
#  - createNodeWithTokens(string arg1)
#  - sub_bb87cd9e(?)
#  - _fallback()
#
const decimals = 18


mapping of uint256 balanceOf;
array of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
array of struct stor10;
uint256 nodePrice;
uint256 rewardPerNode;
uint256 claimTime;
uint8 autoDistri;
uint8 distribution; offset 8
uint256 gasDistri;
uint256 lastDistributionCount;
uint256 lastIndexProcessed;
uint256 totalNodesCreated;
uint256 totalRewardStaked;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
address sub_47b29845Address;
address distributionPoolAddress;
address dexRouterAddress;
address lpPairAddress;
address stor31;
address deadWalletAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 sub_600b02d4;
uint256 totalFees;
uint256 cashoutFee;
uint256 stor38;
uint8 stor39; offset 8
uint256 stor39; offset 8
uint256 swapTokensAmount;
mapping of uint8 stor41;
mapping of uint8 stor42;

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
    return bool(stor41[arg1])
}

function claimTime() {
    return claimTime
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

function getTotalRewardStaked() {
    return totalRewardStaked
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function distribution() {
    return bool(distribution)
}

function swapTokensAmount() {
    return swapTokensAmount
}

function sub_600b02d4(?) {
    return sub_600b02d4
}

function rewardPerNode() {
    return rewardPerNode
}

function cashoutFee() {
    return cashoutFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function lastIndexProcessed() {
    return lastIndexProcessed
}

function getTotalNodesCreated() {
    return totalNodesCreated
}

function deadWallet() {
    return deadWalletAddress
}

function autoDistri() {
    return bool(autoDistri)
}

function totalRewardStaked() {
    return totalRewardStaked
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

function getNodePrice() {
    return nodePrice
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor42[arg1])
}

function totalNodesCreated() {
    return totalNodesCreated
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

function getDistriCount() {
    return lastDistributionCount
}

function getRewardPerNode() {
    return rewardPerNode
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function gasForDistribution() {
    return gasDistri
}

function totalReleased() {
    return totalReleased
}

function nodePrice() {
    return nodePrice
}

function getClaimTime() {
    return claimTime
}

function getGasDistri() {
    return gasDistri
}

function getAutoDistri() {
    return bool(autoDistri)
}

function lastDistributionCount() {
    return lastDistributionCount
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
    stor38 = arg1
}

function changeGasDistri(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gasDistri = arg1
}

function changeNodePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodePrice = arg1
}

function changeClaimTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimTime = arg1
}

function updateCashoutFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cashoutFee = arg1
}

function changeRewardPerNode(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerNode = arg1
}

function updateSwapTokensAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAmount = arg1
}

function changeAutoDistri(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoDistri = uint8(arg1)
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
    Mask(248, 0, stor39) = Mask(248, 0, arg1)
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor41[address(arg1)] = uint8(arg2)
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

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function _getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
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
    if arg2 == bool(stor42[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor42[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor41[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor41[address(arg1)]:
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

function setJoeV2RouterAndCreatePair() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor31)
    staticcall stor31.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor31)
    staticcall stor31.0x73b295c2 with:
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
    dexRouterAddress = stor31
    if 1 == bool(stor42[ext_call.return_data[12 len 20]]):
        revert with 0, 'TKN: Automated market maker pair is already set to that value'
    stor42[address(ext_call.return_data[0])] = 1
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
    staticcall arg1.0xc45a0155 with:
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
    if stor41[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor41[address(arg2)]:
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
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
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

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    idx = 0
    s = 0
    while idx < stor10[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 10)
        if s > !stor10[address(arg1)][idx].field_768:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor10[address(arg1)][idx].field_768
        continue 
    return (s * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0)
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

function getRewardAmount() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'NO NODE OWNER'
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    idx = 0
    s = 0
    while idx < stor10[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 10)
        if s > !stor10[address(msg.sender)][idx].field_768:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor10[address(msg.sender)][idx].field_768
        continue 
    return (s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0)
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

function getNodesNames() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = 6
    mem[132] = msg.sender
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, msg.sender
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 100] = 6
    mem[ceil32(return_data.size) + 132] = msg.sender
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, msg.sender
    mem[ceil32(return_data.size) + 96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET NAMES: NO NODE OWNER'
    mem[0] = msg.sender
    mem[32] = 10
    mem[64] = (2 * ceil32(return_data.size)) + (32 * stor10[address(msg.sender)].field_0) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = stor10[address(msg.sender)].field_0
    s = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < stor10[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 10)
        _64 = mem[64]
        mem[64] = mem[64] + 160
        if stor10[address(msg.sender)][idx].field_0:
            if stor10[address(msg.sender)][idx].field_0 == uint255(stor10[address(msg.sender)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor10[address(msg.sender)][idx].field_0) * 0.5) + 32
            mem[_70] = uint255(stor10[address(msg.sender)][idx].field_0) * 0.5
            if stor10[address(msg.sender)][idx].field_0:
                if stor10[address(msg.sender)][idx].field_0 == uint255(stor10[address(msg.sender)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor10[address(msg.sender)][idx].field_0):
                    if 31 >= uint255(stor10[address(msg.sender)][idx].field_0) * 0.5:
                        mem[_70 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
                    else:
                        mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
                        mem[_70 + 32] = stor10[address(msg.sender)][idx].field_0
                        t = _70 + 32
                        u = sha3(mem[0])
                        while _70 + (uint255(stor10[address(msg.sender)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = allowance[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_64] = _70
                mem[_64 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_64 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_64 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_64 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _64
                s = s + 32
                idx = idx + 1
                continue 
            if stor10[address(msg.sender)][idx].field_0 == stor10[address(msg.sender)][idx].field_1 < 32:
                revert with 0, 34
            if not stor10[address(msg.sender)][idx].field_1:
                mem[_64] = _70
                mem[_64 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_64 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_64 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_64 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _64
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor10[address(msg.sender)][idx].field_1:
                mem[_70 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
                mem[_64] = _70
                mem[_64 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_64 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_64 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_64 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _64
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
            mem[_70 + 32] = stor10[address(msg.sender)][idx].field_0
            t = _70 + 32
            u = sha3(mem[0])
            while _70 + stor10[address(msg.sender)][u].field_1 > t:
                mem[t + 32] = allowance[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_64] = _70
            mem[_64 + 32] = stor10[address(msg.sender)][u].field_256
            mem[_64 + 64] = stor10[address(msg.sender)][u].field_512
            mem[_64 + 96] = stor10[address(msg.sender)][u].field_768
            mem[_64 + 128] = stor10[address(msg.sender)][u].field_1024
            mem[t] = _64
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(msg.sender)][idx].field_0 == stor10[address(msg.sender)][idx].field_1 < 32:
            revert with 0, 34
        _72 = mem[64]
        mem[64] = mem[64] + ceil32(stor10[address(msg.sender)][idx].field_1) + 32
        mem[_72] = stor10[address(msg.sender)][idx].field_1
        if stor10[address(msg.sender)][idx].field_0:
            if stor10[address(msg.sender)][idx].field_0 == uint255(stor10[address(msg.sender)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10[address(msg.sender)][idx].field_0):
                mem[_64] = _72
                mem[_64 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_64 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_64 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_64 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _64
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor10[address(msg.sender)][idx].field_0) * 0.5:
                mem[_72 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
                mem[_64] = _72
                mem[_64 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_64 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_64 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_64 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _64
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
            mem[_72 + 32] = stor10[address(msg.sender)][idx].field_0
            t = _72 + 32
            u = sha3(mem[0])
            while _72 + (uint255(stor10[address(msg.sender)][u].field_0) * 0.5) > t:
                mem[t + 32] = allowance[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_64] = _72
            mem[_64 + 32] = stor10[address(msg.sender)][u].field_256
            mem[_64 + 64] = stor10[address(msg.sender)][u].field_512
            mem[_64 + 96] = stor10[address(msg.sender)][u].field_768
            mem[_64 + 128] = stor10[address(msg.sender)][u].field_1024
            mem[t] = _64
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(msg.sender)][idx].field_0 == stor10[address(msg.sender)][idx].field_1 < 32:
            revert with 0, 34
        if stor10[address(msg.sender)][idx].field_1:
            if 31 >= stor10[address(msg.sender)][idx].field_1:
                mem[_72 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
            else:
                mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
                mem[_72 + 32] = stor10[address(msg.sender)][idx].field_0
                t = _72 + 32
                u = sha3(mem[0])
                while _72 + stor10[address(msg.sender)][idx].field_1 > t:
                    mem[t + 32] = allowance[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_64] = _72
        mem[_64 + 32] = stor10[address(msg.sender)][idx].field_256
        mem[_64 + 64] = stor10[address(msg.sender)][idx].field_512
        mem[_64 + 96] = stor10[address(msg.sender)][idx].field_768
        mem[_64 + 128] = stor10[address(msg.sender)][idx].field_1024
        mem[s] = _64
        s = s + 32
        idx = idx + 1
        continue 
    _62 = mem[(2 * ceil32(return_data.size)) + 96]
    _65 = mem[64]
    mem[64] = mem[64] + 160
    mem[_65] = 96
    mem[_65 + 32] = 0
    mem[_65 + 64] = 0
    mem[_65 + 96] = 0
    mem[_65 + 128] = 0
    if 0 >= mem[(2 * ceil32(return_data.size)) + 96]:
        revert with 0, 50
    _68 = mem[mem[(2 * ceil32(return_data.size)) + 128]]
    _69 = mem[64]
    mem[64] = mem[64] + 64
    mem[_69] = 1
    mem[_69 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _68
    t = _65
    while idx < _62:
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 0, 50
        _108 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        _109 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
        _110 = mem[64]
        _112 = mem[s]
        t = 0
        while t < _112:
            mem[t + _110 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_112) <= _112:
            _140 = mem[_69]
            s = 0
            while s < _140:
                mem[s + _110 + _112 + 32] = mem[s + _69 + 32]
                s = s + 32
                continue 
            if ceil32(_140) <= _140:
                _164 = mem[_109]
                s = 0
                while s < _164:
                    mem[s + _110 + _112 + _140 + 32] = mem[s + _109 + 32]
                    s = s + 32
                    continue 
                if ceil32(_164) <= _164:
                    _184 = mem[64]
                    mem[mem[64]] = _164 + _110 + _112 + _140 - mem[64]
                    mem[64] = _164 + _110 + _112 + _140 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _184
                    t = _108
                    continue 
                mem[_164 + _110 + _112 + _140 + 32] = 0
                _185 = mem[64]
                mem[mem[64]] = _164 + _110 + _112 + _140 - mem[64]
                mem[64] = _164 + _110 + _112 + _140 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _185
                t = _108
                continue 
            mem[_140 + _110 + _112 + 32] = 0
            _165 = mem[_109]
            s = 0
            while s < _165:
                mem[s + _110 + _112 + _140 + 32] = mem[s + _109 + 32]
                s = s + 32
                continue 
            if ceil32(_165) <= _165:
                _186 = mem[64]
                mem[mem[64]] = _165 + _110 + _112 + _140 - mem[64]
                mem[64] = _165 + _110 + _112 + _140 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _186
                t = _108
                continue 
            mem[_165 + _110 + _112 + _140 + 32] = 0
            _187 = mem[64]
            mem[mem[64]] = _165 + _110 + _112 + _140 - mem[64]
            mem[64] = _165 + _110 + _112 + _140 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _187
            t = _108
            continue 
        mem[_112 + _110 + 32] = 0
        _141 = mem[_69]
        s = 0
        while s < _141:
            mem[s + _110 + _112 + 32] = mem[s + _69 + 32]
            s = s + 32
            continue 
        if ceil32(_141) <= _141:
            _166 = mem[_109]
            s = 0
            while s < _166:
                mem[s + _110 + _112 + _141 + 32] = mem[s + _109 + 32]
                s = s + 32
                continue 
            if ceil32(_166) <= _166:
                _188 = mem[64]
                mem[mem[64]] = _166 + _110 + _112 + _141 - mem[64]
                mem[64] = _166 + _110 + _112 + _141 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _188
                t = _108
                continue 
            mem[_166 + _110 + _112 + _141 + 32] = 0
            _189 = mem[64]
            mem[mem[64]] = _166 + _110 + _112 + _141 - mem[64]
            mem[64] = _166 + _110 + _112 + _141 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _189
            t = _108
            continue 
        mem[_141 + _110 + _112 + 32] = 0
        _167 = mem[_109]
        s = 0
        while s < _167:
            mem[s + _110 + _112 + _141 + 32] = mem[s + _109 + 32]
            s = s + 32
            continue 
        if ceil32(_167) <= _167:
            _190 = mem[64]
            mem[mem[64]] = _167 + _110 + _112 + _141 - mem[64]
            mem[64] = _167 + _110 + _112 + _141 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _190
            t = _108
            continue 
        mem[_167 + _110 + _112 + _141 + 32] = 0
        _191 = mem[64]
        mem[mem[64]] = _167 + _110 + _112 + _141 - mem[64]
        mem[64] = _167 + _110 + _112 + _141 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _191
        t = _108
        continue 
    _111 = mem[64]
    mem[mem[64]] = 32
    _113 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_113)] = mem[s + 32 len ceil32(_113)]
    if ceil32(_113) <= _113:
        return 32, mem[mem[64] + 32 len ceil32(_113) + 32]
    mem[_113 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_113) + _111 + -mem[64] + 64
}

function getNodesRewards() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = 6
    mem[132] = msg.sender
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, msg.sender
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 100] = 6
    mem[ceil32(return_data.size) + 132] = msg.sender
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, msg.sender
    mem[ceil32(return_data.size) + 96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD: NO NODE OWNER'
    mem[0] = msg.sender
    mem[32] = 10
    mem[64] = (2 * ceil32(return_data.size)) + (32 * stor10[address(msg.sender)].field_0) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = stor10[address(msg.sender)].field_0
    s = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < stor10[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 10)
        _66 = mem[64]
        mem[64] = mem[64] + 160
        if stor10[address(msg.sender)][idx].field_0:
            if stor10[address(msg.sender)][idx].field_0 == uint255(stor10[address(msg.sender)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor10[address(msg.sender)][idx].field_0) * 0.5) + 32
            mem[_71] = uint255(stor10[address(msg.sender)][idx].field_0) * 0.5
            if stor10[address(msg.sender)][idx].field_0:
                if stor10[address(msg.sender)][idx].field_0 == uint255(stor10[address(msg.sender)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor10[address(msg.sender)][idx].field_0):
                    if 31 >= uint255(stor10[address(msg.sender)][idx].field_0) * 0.5:
                        mem[_71 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
                    else:
                        mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
                        mem[_71 + 32] = stor10[address(msg.sender)][idx].field_0
                        t = _71 + 32
                        u = sha3(mem[0])
                        while _71 + (uint255(stor10[address(msg.sender)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = allowance[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_66] = _71
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            if stor10[address(msg.sender)][idx].field_0 == stor10[address(msg.sender)][idx].field_1 < 32:
                revert with 0, 34
            if not stor10[address(msg.sender)][idx].field_1:
                mem[_66] = _71
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor10[address(msg.sender)][idx].field_1:
                mem[_71 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
                mem[_66] = _71
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
            mem[_71 + 32] = stor10[address(msg.sender)][idx].field_0
            t = _71 + 32
            u = sha3(mem[0])
            while _71 + stor10[address(msg.sender)][u].field_1 > t:
                mem[t + 32] = allowance[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_66] = _71
            mem[_66 + 32] = stor10[address(msg.sender)][u].field_256
            mem[_66 + 64] = stor10[address(msg.sender)][u].field_512
            mem[_66 + 96] = stor10[address(msg.sender)][u].field_768
            mem[_66 + 128] = stor10[address(msg.sender)][u].field_1024
            mem[t] = _66
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(msg.sender)][idx].field_0 == stor10[address(msg.sender)][idx].field_1 < 32:
            revert with 0, 34
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(stor10[address(msg.sender)][idx].field_1) + 32
        mem[_73] = stor10[address(msg.sender)][idx].field_1
        if stor10[address(msg.sender)][idx].field_0:
            if stor10[address(msg.sender)][idx].field_0 == uint255(stor10[address(msg.sender)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10[address(msg.sender)][idx].field_0):
                mem[_66] = _73
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor10[address(msg.sender)][idx].field_0) * 0.5:
                mem[_73 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
                mem[_66] = _73
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
            mem[_73 + 32] = stor10[address(msg.sender)][idx].field_0
            t = _73 + 32
            u = sha3(mem[0])
            while _73 + (uint255(stor10[address(msg.sender)][u].field_0) * 0.5) > t:
                mem[t + 32] = allowance[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_66] = _73
            mem[_66 + 32] = stor10[address(msg.sender)][u].field_256
            mem[_66 + 64] = stor10[address(msg.sender)][u].field_512
            mem[_66 + 96] = stor10[address(msg.sender)][u].field_768
            mem[_66 + 128] = stor10[address(msg.sender)][u].field_1024
            mem[t] = _66
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(msg.sender)][idx].field_0 == stor10[address(msg.sender)][idx].field_1 < 32:
            revert with 0, 34
        if stor10[address(msg.sender)][idx].field_1:
            if 31 >= stor10[address(msg.sender)][idx].field_1:
                mem[_73 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
            else:
                mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
                mem[_73 + 32] = stor10[address(msg.sender)][idx].field_0
                t = _73 + 32
                u = sha3(mem[0])
                while _73 + stor10[address(msg.sender)][idx].field_1 > t:
                    mem[t + 32] = allowance[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_66] = _73
        mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
        mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
        mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
        mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
        mem[s] = _66
        s = s + 32
        idx = idx + 1
        continue 
    _64 = mem[(2 * ceil32(return_data.size)) + 96]
    _67 = mem[64]
    mem[64] = mem[64] + 160
    mem[_67] = 96
    mem[_67 + 32] = 0
    mem[_67 + 64] = 0
    mem[_67 + 96] = 0
    mem[_67 + 128] = 0
    if 0 >= mem[(2 * ceil32(return_data.size)) + 96]:
        revert with 0, 50
    _70 = mem[mem[(2 * ceil32(return_data.size)) + 128] + 96]
    if not mem[mem[(2 * ceil32(return_data.size)) + 128] + 96]:
        _72 = mem[64]
        mem[64] = mem[64] + 64
        mem[_72] = 1
        mem[_72 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _74 = mem[64]
        mem[64] = mem[64] + 64
        mem[_74] = 1
        mem[_74 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _72
        t = _67
        while idx < _64:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _113 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            _114 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96]
            if not mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96]:
                _117 = mem[64]
                mem[64] = mem[64] + 64
                mem[_117] = 1
                mem[_117 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _118 = mem[64]
                _120 = mem[s]
                t = 0
                while t < _120:
                    mem[t + _118 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_120) <= _120:
                    _217 = mem[_74]
                    s = 0
                    while s < _217:
                        mem[s + _118 + _120 + 32] = mem[s + _74 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_217) <= _217:
                        _367 = mem[_117]
                        s = 0
                        while s < _367:
                            mem[s + _118 + _120 + _217 + 32] = mem[s + _117 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_367) <= _367:
                            _507 = mem[64]
                            mem[mem[64]] = _367 + _118 + _120 + _217 - mem[64]
                            mem[64] = _367 + _118 + _120 + _217 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _507
                            t = _113
                            continue 
                        mem[_367 + _118 + _120 + _217 + 32] = 0
                        _508 = mem[64]
                        mem[mem[64]] = _367 + _118 + _120 + _217 - mem[64]
                        mem[64] = _367 + _118 + _120 + _217 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _508
                        t = _113
                        continue 
                    mem[_217 + _118 + _120 + 32] = 0
                    _368 = mem[_117]
                    s = 0
                    while s < _368:
                        mem[s + _118 + _120 + _217 + 32] = mem[s + _117 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_368) <= _368:
                        _509 = mem[64]
                        mem[mem[64]] = _368 + _118 + _120 + _217 - mem[64]
                        mem[64] = _368 + _118 + _120 + _217 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _509
                        t = _113
                        continue 
                    mem[_368 + _118 + _120 + _217 + 32] = 0
                    _510 = mem[64]
                    mem[mem[64]] = _368 + _118 + _120 + _217 - mem[64]
                    mem[64] = _368 + _118 + _120 + _217 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _510
                    t = _113
                    continue 
                mem[_120 + _118 + 32] = 0
                _218 = mem[_74]
                s = 0
                while s < _218:
                    mem[s + _118 + _120 + 32] = mem[s + _74 + 32]
                    s = s + 32
                    continue 
                if ceil32(_218) <= _218:
                    _369 = mem[_117]
                    s = 0
                    while s < _369:
                        mem[s + _118 + _120 + _218 + 32] = mem[s + _117 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_369) <= _369:
                        _511 = mem[64]
                        mem[mem[64]] = _369 + _118 + _120 + _218 - mem[64]
                        mem[64] = _369 + _118 + _120 + _218 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _511
                        t = _113
                        continue 
                    mem[_369 + _118 + _120 + _218 + 32] = 0
                    _512 = mem[64]
                    mem[mem[64]] = _369 + _118 + _120 + _218 - mem[64]
                    mem[64] = _369 + _118 + _120 + _218 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _512
                    t = _113
                    continue 
                mem[_218 + _118 + _120 + 32] = 0
                _370 = mem[_117]
                s = 0
                while s < _370:
                    mem[s + _118 + _120 + _218 + 32] = mem[s + _117 + 32]
                    s = s + 32
                    continue 
                if ceil32(_370) <= _370:
                    _513 = mem[64]
                    mem[mem[64]] = _370 + _118 + _120 + _218 - mem[64]
                    mem[64] = _370 + _118 + _120 + _218 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _513
                    t = _113
                    continue 
                mem[_370 + _118 + _120 + _218 + 32] = 0
                _514 = mem[64]
                mem[mem[64]] = _370 + _118 + _120 + _218 - mem[64]
                mem[64] = _370 + _118 + _120 + _218 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _514
                t = _113
                continue 
            u = 0
            t = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _216 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _114
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_216]:
                        revert with 0, 50
                    mem[v + _216 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _361 = mem[64]
                _365 = mem[s]
                t = 0
                while t < _365:
                    mem[t + _361 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_365) <= _365:
                    _499 = mem[_74]
                    s = 0
                    while s < _499:
                        mem[s + _361 + _365 + 32] = mem[s + _74 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_499) <= _499:
                        _707 = mem[_216]
                        s = 0
                        while s < _707:
                            mem[s + _361 + _365 + _499 + 32] = mem[s + _216 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_707) <= _707:
                            _895 = mem[64]
                            mem[mem[64]] = _707 + _361 + _365 + _499 - mem[64]
                            mem[64] = _707 + _361 + _365 + _499 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _895
                            t = _113
                            continue 
                        mem[_707 + _361 + _365 + _499 + 32] = 0
                        _896 = mem[64]
                        mem[mem[64]] = _707 + _361 + _365 + _499 - mem[64]
                        mem[64] = _707 + _361 + _365 + _499 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _896
                        t = _113
                        continue 
                    mem[_499 + _361 + _365 + 32] = 0
                    _708 = mem[_216]
                    s = 0
                    while s < _708:
                        mem[s + _361 + _365 + _499 + 32] = mem[s + _216 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_708) <= _708:
                        _897 = mem[64]
                        mem[mem[64]] = _708 + _361 + _365 + _499 - mem[64]
                        mem[64] = _708 + _361 + _365 + _499 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _897
                        t = _113
                        continue 
                    mem[_708 + _361 + _365 + _499 + 32] = 0
                    _898 = mem[64]
                    mem[mem[64]] = _708 + _361 + _365 + _499 - mem[64]
                    mem[64] = _708 + _361 + _365 + _499 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _898
                    t = _113
                    continue 
                mem[_365 + _361 + 32] = 0
                _500 = mem[_74]
                s = 0
                while s < _500:
                    mem[s + _361 + _365 + 32] = mem[s + _74 + 32]
                    s = s + 32
                    continue 
                if ceil32(_500) <= _500:
                    _709 = mem[_216]
                    s = 0
                    while s < _709:
                        mem[s + _361 + _365 + _500 + 32] = mem[s + _216 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_709) <= _709:
                        _899 = mem[64]
                        mem[mem[64]] = _709 + _361 + _365 + _500 - mem[64]
                        mem[64] = _709 + _361 + _365 + _500 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _899
                        t = _113
                        continue 
                    mem[_709 + _361 + _365 + _500 + 32] = 0
                    _900 = mem[64]
                    mem[mem[64]] = _709 + _361 + _365 + _500 - mem[64]
                    mem[64] = _709 + _361 + _365 + _500 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _900
                    t = _113
                    continue 
                mem[_500 + _361 + _365 + 32] = 0
                _710 = mem[_216]
                s = 0
                while s < _710:
                    mem[s + _361 + _365 + _500 + 32] = mem[s + _216 + 32]
                    s = s + 32
                    continue 
                if ceil32(_710) <= _710:
                    _901 = mem[64]
                    mem[mem[64]] = _710 + _361 + _365 + _500 - mem[64]
                    mem[64] = _710 + _361 + _365 + _500 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _901
                    t = _113
                    continue 
                mem[_710 + _361 + _365 + _500 + 32] = 0
                _902 = mem[64]
                mem[mem[64]] = _710 + _361 + _365 + _500 - mem[64]
                mem[64] = _710 + _361 + _365 + _500 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _902
                t = _113
                continue 
            mem[_216 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _114
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_216]:
                    revert with 0, 50
                mem[v + _216 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _362 = mem[64]
            _366 = mem[s]
            t = 0
            while t < _366:
                mem[t + _362 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_366) <= _366:
                _501 = mem[_74]
                s = 0
                while s < _501:
                    mem[s + _362 + _366 + 32] = mem[s + _74 + 32]
                    s = s + 32
                    continue 
                if ceil32(_501) <= _501:
                    _711 = mem[_216]
                    idx = 0
                    while idx < _711:
                        mem[idx + _362 + _366 + _501 + 32] = mem[idx + _216 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_711) <= _711:
                        _903 = mem[64]
                        mem[mem[64]] = _711 + _362 + _366 + _501 - mem[64]
                        mem[64] = _711 + _362 + _366 + _501 + 32
                        if ceil32(_501) == -1:
                            revert with 0, 17
                        s = ceil32(_501) + 1
                        s = _903
                        t = _113
                        continue 
                    mem[_711 + _362 + _366 + _501 + 32] = 0
                    _904 = mem[64]
                    mem[mem[64]] = _711 + _362 + _366 + _501 - mem[64]
                    mem[64] = _711 + _362 + _366 + _501 + 32
                    if ceil32(_501) == -1:
                        revert with 0, 17
                    s = ceil32(_501) + 1
                    s = _904
                    t = _113
                    continue 
                mem[_501 + _362 + _366 + 32] = 0
                _712 = mem[_216]
                idx = 0
                while idx < _712:
                    mem[idx + _362 + _366 + _501 + 32] = mem[idx + _216 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_712) <= _712:
                    _905 = mem[64]
                    mem[mem[64]] = _712 + _362 + _366 + _501 - mem[64]
                    mem[64] = _712 + _362 + _366 + _501 + 32
                    if ceil32(_501) == -1:
                        revert with 0, 17
                    s = ceil32(_501) + 1
                    s = _905
                    t = _113
                    continue 
                mem[_712 + _362 + _366 + _501 + 32] = 0
                _906 = mem[64]
                mem[mem[64]] = _712 + _362 + _366 + _501 - mem[64]
                mem[64] = _712 + _362 + _366 + _501 + 32
                if ceil32(_501) == -1:
                    revert with 0, 17
                s = ceil32(_501) + 1
                s = _906
                t = _113
                continue 
            mem[_366 + _362 + 32] = 0
            _502 = mem[_74]
            s = 0
            while s < _502:
                mem[s + _362 + _366 + 32] = mem[s + _74 + 32]
                s = s + 32
                continue 
            if ceil32(_502) <= _502:
                _713 = mem[_216]
                idx = 0
                while idx < _713:
                    mem[idx + _362 + _366 + _502 + 32] = mem[idx + _216 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_713) <= _713:
                    _907 = mem[64]
                    mem[mem[64]] = _713 + _362 + _366 + _502 - mem[64]
                    mem[64] = _713 + _362 + _366 + _502 + 32
                    if ceil32(_502) == -1:
                        revert with 0, 17
                    s = ceil32(_502) + 1
                    s = _907
                    t = _113
                    continue 
                mem[_713 + _362 + _366 + _502 + 32] = 0
                _908 = mem[64]
                mem[mem[64]] = _713 + _362 + _366 + _502 - mem[64]
                mem[64] = _713 + _362 + _366 + _502 + 32
                if ceil32(_502) == -1:
                    revert with 0, 17
                s = ceil32(_502) + 1
                s = _908
                t = _113
                continue 
            mem[_502 + _362 + _366 + 32] = 0
            _714 = mem[_216]
            idx = 0
            while idx < _714:
                mem[idx + _362 + _366 + _502 + 32] = mem[idx + _216 + 32]
                idx = idx + 32
                continue 
            if ceil32(_714) <= _714:
                _909 = mem[64]
                mem[mem[64]] = _714 + _362 + _366 + _502 - mem[64]
                mem[64] = _714 + _362 + _366 + _502 + 32
                if ceil32(_502) == -1:
                    revert with 0, 17
                s = ceil32(_502) + 1
                s = _909
                t = _113
                continue 
            mem[_714 + _362 + _366 + _502 + 32] = 0
            _910 = mem[64]
            mem[mem[64]] = _714 + _362 + _366 + _502 - mem[64]
            mem[64] = _714 + _362 + _366 + _502 + 32
            if ceil32(_502) == -1:
                revert with 0, 17
            s = ceil32(_502) + 1
            s = _910
            t = _113
            continue 
        _115 = mem[64]
        mem[mem[64]] = 32
        _116 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_116)] = mem[s + 32 len ceil32(_116)]
        if ceil32(_116) <= _116:
            return 32, mem[mem[64] + 32 len ceil32(_116) + 32]
        mem[_116 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_116) + _115 + -mem[64] + 64
    s = 0
    idx = mem[mem[(2 * ceil32(return_data.size)) + 128] + 96]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _112 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _70
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_112]:
                revert with 0, 50
            mem[t + _112 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _214 = mem[64]
        mem[64] = mem[64] + 64
        mem[_214] = 1
        mem[_214 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _112
        u = _67
        while idx < _64:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _357 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            _358 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96]
            if not mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96]:
                _372 = mem[64]
                mem[64] = mem[64] + 64
                mem[_372] = 1
                mem[_372 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _375 = mem[64]
                _377 = mem[s]
                u = 0
                while u < _377:
                    mem[u + _375 + 32] = mem[u + s + 32]
                    u = u + 32
                    continue 
                if ceil32(_377) <= _377:
                    _495 = mem[_214]
                    s = 0
                    while s < _495:
                        mem[s + _375 + _377 + 32] = mem[s + _214 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_495) <= _495:
                        _697 = mem[_372]
                        s = 0
                        while s < _697:
                            mem[s + _375 + _377 + _495 + 32] = mem[s + _372 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_697) <= _697:
                            _879 = mem[64]
                            mem[mem[64]] = _697 + _375 + _377 + _495 - mem[64]
                            mem[64] = _697 + _375 + _377 + _495 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _879
                            u = _357
                            continue 
                        mem[_697 + _375 + _377 + _495 + 32] = 0
                        _880 = mem[64]
                        mem[mem[64]] = _697 + _375 + _377 + _495 - mem[64]
                        mem[64] = _697 + _375 + _377 + _495 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        u = _357
                        continue 
                    mem[_495 + _375 + _377 + 32] = 0
                    _698 = mem[_372]
                    s = 0
                    while s < _698:
                        mem[s + _375 + _377 + _495 + 32] = mem[s + _372 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_698) <= _698:
                        _881 = mem[64]
                        mem[mem[64]] = _698 + _375 + _377 + _495 - mem[64]
                        mem[64] = _698 + _375 + _377 + _495 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _881
                        u = _357
                        continue 
                    mem[_698 + _375 + _377 + _495 + 32] = 0
                    _882 = mem[64]
                    mem[mem[64]] = _698 + _375 + _377 + _495 - mem[64]
                    mem[64] = _698 + _375 + _377 + _495 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    u = _357
                    continue 
                mem[_377 + _375 + 32] = 0
                _496 = mem[_214]
                s = 0
                while s < _496:
                    mem[s + _375 + _377 + 32] = mem[s + _214 + 32]
                    s = s + 32
                    continue 
                if ceil32(_496) <= _496:
                    _699 = mem[_372]
                    s = 0
                    while s < _699:
                        mem[s + _375 + _377 + _496 + 32] = mem[s + _372 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _883 = mem[64]
                        mem[mem[64]] = _699 + _375 + _377 + _496 - mem[64]
                        mem[64] = _699 + _375 + _377 + _496 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _883
                        u = _357
                        continue 
                    mem[_699 + _375 + _377 + _496 + 32] = 0
                    _884 = mem[64]
                    mem[mem[64]] = _699 + _375 + _377 + _496 - mem[64]
                    mem[64] = _699 + _375 + _377 + _496 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    u = _357
                    continue 
                mem[_496 + _375 + _377 + 32] = 0
                _700 = mem[_372]
                s = 0
                while s < _700:
                    mem[s + _375 + _377 + _496 + 32] = mem[s + _372 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _885 = mem[64]
                    mem[mem[64]] = _700 + _375 + _377 + _496 - mem[64]
                    mem[64] = _700 + _375 + _377 + _496 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _885
                    u = _357
                    continue 
                mem[_700 + _375 + _377 + _496 + 32] = 0
                _886 = mem[64]
                mem[mem[64]] = _700 + _375 + _377 + _496 - mem[64]
                mem[64] = _700 + _375 + _377 + _496 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _886
                u = _357
                continue 
            u = 0
            t = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _493 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _358
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_493]:
                        revert with 0, 50
                    mem[v + _493 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _691 = mem[64]
                _695 = mem[s]
                t = 0
                while t < _695:
                    mem[t + _691 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_695) <= _695:
                    _871 = mem[_214]
                    s = 0
                    while s < _871:
                        mem[s + _691 + _695 + 32] = mem[s + _214 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_871) <= _871:
                        _991 = mem[_493]
                        s = 0
                        while s < _991:
                            mem[s + _691 + _695 + _871 + 32] = mem[s + _493 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_991) <= _991:
                            _1071 = mem[64]
                            mem[mem[64]] = _991 + _691 + _695 + _871 - mem[64]
                            mem[64] = _991 + _691 + _695 + _871 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1071
                            u = _357
                            continue 
                        mem[_991 + _691 + _695 + _871 + 32] = 0
                        _1072 = mem[64]
                        mem[mem[64]] = _991 + _691 + _695 + _871 - mem[64]
                        mem[64] = _991 + _691 + _695 + _871 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1072
                        u = _357
                        continue 
                    mem[_871 + _691 + _695 + 32] = 0
                    _992 = mem[_493]
                    s = 0
                    while s < _992:
                        mem[s + _691 + _695 + _871 + 32] = mem[s + _493 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_992) <= _992:
                        _1073 = mem[64]
                        mem[mem[64]] = _992 + _691 + _695 + _871 - mem[64]
                        mem[64] = _992 + _691 + _695 + _871 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1073
                        u = _357
                        continue 
                    mem[_992 + _691 + _695 + _871 + 32] = 0
                    _1074 = mem[64]
                    mem[mem[64]] = _992 + _691 + _695 + _871 - mem[64]
                    mem[64] = _992 + _691 + _695 + _871 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1074
                    u = _357
                    continue 
                mem[_695 + _691 + 32] = 0
                _872 = mem[_214]
                s = 0
                while s < _872:
                    mem[s + _691 + _695 + 32] = mem[s + _214 + 32]
                    s = s + 32
                    continue 
                if ceil32(_872) <= _872:
                    _993 = mem[_493]
                    s = 0
                    while s < _993:
                        mem[s + _691 + _695 + _872 + 32] = mem[s + _493 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_993) <= _993:
                        _1075 = mem[64]
                        mem[mem[64]] = _993 + _691 + _695 + _872 - mem[64]
                        mem[64] = _993 + _691 + _695 + _872 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1075
                        u = _357
                        continue 
                    mem[_993 + _691 + _695 + _872 + 32] = 0
                    _1076 = mem[64]
                    mem[mem[64]] = _993 + _691 + _695 + _872 - mem[64]
                    mem[64] = _993 + _691 + _695 + _872 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1076
                    u = _357
                    continue 
                mem[_872 + _691 + _695 + 32] = 0
                _994 = mem[_493]
                s = 0
                while s < _994:
                    mem[s + _691 + _695 + _872 + 32] = mem[s + _493 + 32]
                    s = s + 32
                    continue 
                if ceil32(_994) <= _994:
                    _1077 = mem[64]
                    mem[mem[64]] = _994 + _691 + _695 + _872 - mem[64]
                    mem[64] = _994 + _691 + _695 + _872 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1077
                    u = _357
                    continue 
                mem[_994 + _691 + _695 + _872 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _994 + _691 + _695 + _872 - mem[64]
                mem[64] = _994 + _691 + _695 + _872 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1078
                u = _357
                continue 
            mem[_493 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _358
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_493]:
                    revert with 0, 50
                mem[v + _493 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _692 = mem[64]
            _696 = mem[s]
            t = 0
            while t < _696:
                mem[t + _692 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_696) <= _696:
                _873 = mem[_214]
                s = 0
                while s < _873:
                    mem[s + _692 + _696 + 32] = mem[s + _214 + 32]
                    s = s + 32
                    continue 
                if ceil32(_873) <= _873:
                    _995 = mem[_493]
                    idx = 0
                    while idx < _995:
                        mem[idx + _692 + _696 + _873 + 32] = mem[idx + _493 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_995) <= _995:
                        _1079 = mem[64]
                        mem[mem[64]] = _995 + _692 + _696 + _873 - mem[64]
                        mem[64] = _995 + _692 + _696 + _873 + 32
                        if ceil32(_873) == -1:
                            revert with 0, 17
                        s = ceil32(_873) + 1
                        s = _1079
                        u = _357
                        continue 
                    mem[_995 + _692 + _696 + _873 + 32] = 0
                    _1080 = mem[64]
                    mem[mem[64]] = _995 + _692 + _696 + _873 - mem[64]
                    mem[64] = _995 + _692 + _696 + _873 + 32
                    if ceil32(_873) == -1:
                        revert with 0, 17
                    s = ceil32(_873) + 1
                    s = _1080
                    u = _357
                    continue 
                mem[_873 + _692 + _696 + 32] = 0
                _996 = mem[_493]
                idx = 0
                while idx < _996:
                    mem[idx + _692 + _696 + _873 + 32] = mem[idx + _493 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_996) <= _996:
                    _1081 = mem[64]
                    mem[mem[64]] = _996 + _692 + _696 + _873 - mem[64]
                    mem[64] = _996 + _692 + _696 + _873 + 32
                    if ceil32(_873) == -1:
                        revert with 0, 17
                    s = ceil32(_873) + 1
                    s = _1081
                    u = _357
                    continue 
                mem[_996 + _692 + _696 + _873 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _996 + _692 + _696 + _873 - mem[64]
                mem[64] = _996 + _692 + _696 + _873 + 32
                if ceil32(_873) == -1:
                    revert with 0, 17
                s = ceil32(_873) + 1
                s = _1082
                u = _357
                continue 
            mem[_696 + _692 + 32] = 0
            _874 = mem[_214]
            s = 0
            while s < _874:
                mem[s + _692 + _696 + 32] = mem[s + _214 + 32]
                s = s + 32
                continue 
            if ceil32(_874) <= _874:
                _997 = mem[_493]
                idx = 0
                while idx < _997:
                    mem[idx + _692 + _696 + _874 + 32] = mem[idx + _493 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_997) <= _997:
                    _1083 = mem[64]
                    mem[mem[64]] = _997 + _692 + _696 + _874 - mem[64]
                    mem[64] = _997 + _692 + _696 + _874 + 32
                    if ceil32(_874) == -1:
                        revert with 0, 17
                    s = ceil32(_874) + 1
                    s = _1083
                    u = _357
                    continue 
                mem[_997 + _692 + _696 + _874 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _997 + _692 + _696 + _874 - mem[64]
                mem[64] = _997 + _692 + _696 + _874 + 32
                if ceil32(_874) == -1:
                    revert with 0, 17
                s = ceil32(_874) + 1
                s = _1084
                u = _357
                continue 
            mem[_874 + _692 + _696 + 32] = 0
            _998 = mem[_493]
            idx = 0
            while idx < _998:
                mem[idx + _692 + _696 + _874 + 32] = mem[idx + _493 + 32]
                idx = idx + 32
                continue 
            if ceil32(_998) <= _998:
                _1085 = mem[64]
                mem[mem[64]] = _998 + _692 + _696 + _874 - mem[64]
                mem[64] = _998 + _692 + _696 + _874 + 32
                if ceil32(_874) == -1:
                    revert with 0, 17
                s = ceil32(_874) + 1
                s = _1085
                u = _357
                continue 
            mem[_998 + _692 + _696 + _874 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _998 + _692 + _696 + _874 - mem[64]
            mem[64] = _998 + _692 + _696 + _874 + 32
            if ceil32(_874) == -1:
                revert with 0, 17
            s = ceil32(_874) + 1
            s = _1086
            u = _357
            continue 
        mem[mem[64]] = 32
        _371 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_371)] = mem[s + 32 len ceil32(_371)]
        if ceil32(_371) > _371:
            mem[_371 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_371) + 32]
    mem[_112 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _70
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[_112]:
            revert with 0, 50
        mem[t + _112 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _215 = mem[64]
    mem[64] = mem[64] + 64
    mem[_215] = 1
    mem[_215 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _112
    u = _67
    while idx < _64:
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 0, 50
        _359 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        _360 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96]
        if not mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96]:
            _374 = mem[64]
            mem[64] = mem[64] + 64
            mem[_374] = 1
            mem[_374 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _376 = mem[64]
            _378 = mem[s]
            u = 0
            while u < _378:
                mem[u + _376 + 32] = mem[u + s + 32]
                u = u + 32
                continue 
            if ceil32(_378) <= _378:
                _497 = mem[_215]
                s = 0
                while s < _497:
                    mem[s + _376 + _378 + 32] = mem[s + _215 + 32]
                    s = s + 32
                    continue 
                if ceil32(_497) <= _497:
                    _703 = mem[_374]
                    s = 0
                    while s < _703:
                        mem[s + _376 + _378 + _497 + 32] = mem[s + _374 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _887 = mem[64]
                        mem[mem[64]] = _703 + _376 + _378 + _497 - mem[64]
                        mem[64] = _703 + _376 + _378 + _497 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _887
                        u = _359
                        continue 
                    mem[_703 + _376 + _378 + _497 + 32] = 0
                    _888 = mem[64]
                    mem[mem[64]] = _703 + _376 + _378 + _497 - mem[64]
                    mem[64] = _703 + _376 + _378 + _497 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _888
                    u = _359
                    continue 
                mem[_497 + _376 + _378 + 32] = 0
                _704 = mem[_374]
                s = 0
                while s < _704:
                    mem[s + _376 + _378 + _497 + 32] = mem[s + _374 + 32]
                    s = s + 32
                    continue 
                if ceil32(_704) <= _704:
                    _889 = mem[64]
                    mem[mem[64]] = _704 + _376 + _378 + _497 - mem[64]
                    mem[64] = _704 + _376 + _378 + _497 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _889
                    u = _359
                    continue 
                mem[_704 + _376 + _378 + _497 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _704 + _376 + _378 + _497 - mem[64]
                mem[64] = _704 + _376 + _378 + _497 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _890
                u = _359
                continue 
            mem[_378 + _376 + 32] = 0
            _498 = mem[_215]
            s = 0
            while s < _498:
                mem[s + _376 + _378 + 32] = mem[s + _215 + 32]
                s = s + 32
                continue 
            if ceil32(_498) <= _498:
                _705 = mem[_374]
                s = 0
                while s < _705:
                    mem[s + _376 + _378 + _498 + 32] = mem[s + _374 + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _891 = mem[64]
                    mem[mem[64]] = _705 + _376 + _378 + _498 - mem[64]
                    mem[64] = _705 + _376 + _378 + _498 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _891
                    u = _359
                    continue 
                mem[_705 + _376 + _378 + _498 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _705 + _376 + _378 + _498 - mem[64]
                mem[64] = _705 + _376 + _378 + _498 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _892
                u = _359
                continue 
            mem[_498 + _376 + _378 + 32] = 0
            _706 = mem[_374]
            s = 0
            while s < _706:
                mem[s + _376 + _378 + _498 + 32] = mem[s + _374 + 32]
                s = s + 32
                continue 
            if ceil32(_706) <= _706:
                _893 = mem[64]
                mem[mem[64]] = _706 + _376 + _378 + _498 - mem[64]
                mem[64] = _706 + _376 + _378 + _498 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _893
                u = _359
                continue 
            mem[_706 + _376 + _378 + _498 + 32] = 0
            _894 = mem[64]
            mem[mem[64]] = _706 + _376 + _378 + _498 - mem[64]
            mem[64] = _706 + _376 + _378 + _498 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _894
            u = _359
            continue 
        u = 0
        t = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 96]
        while t:
            if u == -1:
                revert with 0, 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _494 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _360
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_494]:
                    revert with 0, 50
                mem[v + _494 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _693 = mem[64]
            _701 = mem[s]
            t = 0
            while t < _701:
                mem[t + _693 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_701) <= _701:
                _875 = mem[_215]
                s = 0
                while s < _875:
                    mem[s + _693 + _701 + 32] = mem[s + _215 + 32]
                    s = s + 32
                    continue 
                if ceil32(_875) <= _875:
                    _999 = mem[_494]
                    s = 0
                    while s < _999:
                        mem[s + _693 + _701 + _875 + 32] = mem[s + _494 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_999) <= _999:
                        _1087 = mem[64]
                        mem[mem[64]] = _999 + _693 + _701 + _875 - mem[64]
                        mem[64] = _999 + _693 + _701 + _875 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1087
                        u = _359
                        continue 
                    mem[_999 + _693 + _701 + _875 + 32] = 0
                    _1088 = mem[64]
                    mem[mem[64]] = _999 + _693 + _701 + _875 - mem[64]
                    mem[64] = _999 + _693 + _701 + _875 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1088
                    u = _359
                    continue 
                mem[_875 + _693 + _701 + 32] = 0
                _1000 = mem[_494]
                s = 0
                while s < _1000:
                    mem[s + _693 + _701 + _875 + 32] = mem[s + _494 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1000) <= _1000:
                    _1089 = mem[64]
                    mem[mem[64]] = _1000 + _693 + _701 + _875 - mem[64]
                    mem[64] = _1000 + _693 + _701 + _875 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1089
                    u = _359
                    continue 
                mem[_1000 + _693 + _701 + _875 + 32] = 0
                _1090 = mem[64]
                mem[mem[64]] = _1000 + _693 + _701 + _875 - mem[64]
                mem[64] = _1000 + _693 + _701 + _875 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1090
                u = _359
                continue 
            mem[_701 + _693 + 32] = 0
            _876 = mem[_215]
            s = 0
            while s < _876:
                mem[s + _693 + _701 + 32] = mem[s + _215 + 32]
                s = s + 32
                continue 
            if ceil32(_876) <= _876:
                _1001 = mem[_494]
                s = 0
                while s < _1001:
                    mem[s + _693 + _701 + _876 + 32] = mem[s + _494 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1001) <= _1001:
                    _1091 = mem[64]
                    mem[mem[64]] = _1001 + _693 + _701 + _876 - mem[64]
                    mem[64] = _1001 + _693 + _701 + _876 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1091
                    u = _359
                    continue 
                mem[_1001 + _693 + _701 + _876 + 32] = 0
                _1092 = mem[64]
                mem[mem[64]] = _1001 + _693 + _701 + _876 - mem[64]
                mem[64] = _1001 + _693 + _701 + _876 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1092
                u = _359
                continue 
            mem[_876 + _693 + _701 + 32] = 0
            _1002 = mem[_494]
            s = 0
            while s < _1002:
                mem[s + _693 + _701 + _876 + 32] = mem[s + _494 + 32]
                s = s + 32
                continue 
            if ceil32(_1002) <= _1002:
                _1093 = mem[64]
                mem[mem[64]] = _1002 + _693 + _701 + _876 - mem[64]
                mem[64] = _1002 + _693 + _701 + _876 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1093
                u = _359
                continue 
            mem[_1002 + _693 + _701 + _876 + 32] = 0
            _1094 = mem[64]
            mem[mem[64]] = _1002 + _693 + _701 + _876 - mem[64]
            mem[64] = _1002 + _693 + _701 + _876 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1094
            u = _359
            continue 
        mem[_494 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _360
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_494]:
                revert with 0, 50
            mem[v + _494 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _694 = mem[64]
        _702 = mem[s]
        t = 0
        while t < _702:
            mem[t + _694 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_702) <= _702:
            _877 = mem[_215]
            s = 0
            while s < _877:
                mem[s + _694 + _702 + 32] = mem[s + _215 + 32]
                s = s + 32
                continue 
            if ceil32(_877) <= _877:
                _1003 = mem[_494]
                idx = 0
                while idx < _1003:
                    mem[idx + _694 + _702 + _877 + 32] = mem[idx + _494 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1003) <= _1003:
                    _1095 = mem[64]
                    mem[mem[64]] = _1003 + _694 + _702 + _877 - mem[64]
                    mem[64] = _1003 + _694 + _702 + _877 + 32
                    if ceil32(_877) == -1:
                        revert with 0, 17
                    s = ceil32(_877) + 1
                    s = _1095
                    u = _359
                    continue 
                mem[_1003 + _694 + _702 + _877 + 32] = 0
                _1096 = mem[64]
                mem[mem[64]] = _1003 + _694 + _702 + _877 - mem[64]
                mem[64] = _1003 + _694 + _702 + _877 + 32
                if ceil32(_877) == -1:
                    revert with 0, 17
                s = ceil32(_877) + 1
                s = _1096
                u = _359
                continue 
            mem[_877 + _694 + _702 + 32] = 0
            _1004 = mem[_494]
            idx = 0
            while idx < _1004:
                mem[idx + _694 + _702 + _877 + 32] = mem[idx + _494 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1004) <= _1004:
                _1097 = mem[64]
                mem[mem[64]] = _1004 + _694 + _702 + _877 - mem[64]
                mem[64] = _1004 + _694 + _702 + _877 + 32
                if ceil32(_877) == -1:
                    revert with 0, 17
                s = ceil32(_877) + 1
                s = _1097
                u = _359
                continue 
            mem[_1004 + _694 + _702 + _877 + 32] = 0
            _1098 = mem[64]
            mem[mem[64]] = _1004 + _694 + _702 + _877 - mem[64]
            mem[64] = _1004 + _694 + _702 + _877 + 32
            if ceil32(_877) == -1:
                revert with 0, 17
            s = ceil32(_877) + 1
            s = _1098
            u = _359
            continue 
        mem[_702 + _694 + 32] = 0
        _878 = mem[_215]
        s = 0
        while s < _878:
            mem[s + _694 + _702 + 32] = mem[s + _215 + 32]
            s = s + 32
            continue 
        if ceil32(_878) <= _878:
            _1005 = mem[_494]
            idx = 0
            while idx < _1005:
                mem[idx + _694 + _702 + _878 + 32] = mem[idx + _494 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1005) <= _1005:
                _1099 = mem[64]
                mem[mem[64]] = _1005 + _694 + _702 + _878 - mem[64]
                mem[64] = _1005 + _694 + _702 + _878 + 32
                if ceil32(_878) == -1:
                    revert with 0, 17
                s = ceil32(_878) + 1
                s = _1099
                u = _359
                continue 
            mem[_1005 + _694 + _702 + _878 + 32] = 0
            _1100 = mem[64]
            mem[mem[64]] = _1005 + _694 + _702 + _878 - mem[64]
            mem[64] = _1005 + _694 + _702 + _878 + 32
            if ceil32(_878) == -1:
                revert with 0, 17
            s = ceil32(_878) + 1
            s = _1100
            u = _359
            continue 
        mem[_878 + _694 + _702 + 32] = 0
        _1006 = mem[_494]
        idx = 0
        while idx < _1006:
            mem[idx + _694 + _702 + _878 + 32] = mem[idx + _494 + 32]
            idx = idx + 32
            continue 
        if ceil32(_1006) <= _1006:
            _1101 = mem[64]
            mem[mem[64]] = _1006 + _694 + _702 + _878 - mem[64]
            mem[64] = _1006 + _694 + _702 + _878 + 32
            if ceil32(_878) == -1:
                revert with 0, 17
            s = ceil32(_878) + 1
            s = _1101
            u = _359
            continue 
        mem[_1006 + _694 + _702 + _878 + 32] = 0
        _1102 = mem[64]
        mem[mem[64]] = _1006 + _694 + _702 + _878 - mem[64]
        mem[64] = _1006 + _694 + _702 + _878 + 32
        if ceil32(_878) == -1:
            revert with 0, 17
        s = ceil32(_878) + 1
        s = _1102
        u = _359
        continue 
    _364 = mem[64]
    mem[mem[64]] = 32
    _373 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_373)] = mem[s + 32 len ceil32(_373)]
    if ceil32(_373) <= _373:
        return 32, mem[mem[64] + 32 len ceil32(_373) + 32]
    mem[_373 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_373) + _364 + -mem[64] + 64
}

function getNodesCreatime() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = 6
    mem[132] = msg.sender
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, msg.sender
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 100] = 6
    mem[ceil32(return_data.size) + 132] = msg.sender
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, msg.sender
    mem[ceil32(return_data.size) + 96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET CREATIME: NO NODE OWNER'
    mem[0] = msg.sender
    mem[32] = 10
    mem[64] = (2 * ceil32(return_data.size)) + (32 * stor10[address(msg.sender)].field_0) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = stor10[address(msg.sender)].field_0
    s = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < stor10[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 10)
        _66 = mem[64]
        mem[64] = mem[64] + 160
        if stor10[address(msg.sender)][idx].field_0:
            if stor10[address(msg.sender)][idx].field_0 == uint255(stor10[address(msg.sender)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor10[address(msg.sender)][idx].field_0) * 0.5) + 32
            mem[_71] = uint255(stor10[address(msg.sender)][idx].field_0) * 0.5
            if stor10[address(msg.sender)][idx].field_0:
                if stor10[address(msg.sender)][idx].field_0 == uint255(stor10[address(msg.sender)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor10[address(msg.sender)][idx].field_0):
                    if 31 >= uint255(stor10[address(msg.sender)][idx].field_0) * 0.5:
                        mem[_71 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
                    else:
                        mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
                        mem[_71 + 32] = stor10[address(msg.sender)][idx].field_0
                        t = _71 + 32
                        u = sha3(mem[0])
                        while _71 + (uint255(stor10[address(msg.sender)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = allowance[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_66] = _71
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            if stor10[address(msg.sender)][idx].field_0 == stor10[address(msg.sender)][idx].field_1 < 32:
                revert with 0, 34
            if not stor10[address(msg.sender)][idx].field_1:
                mem[_66] = _71
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor10[address(msg.sender)][idx].field_1:
                mem[_71 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
                mem[_66] = _71
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
            mem[_71 + 32] = stor10[address(msg.sender)][idx].field_0
            t = _71 + 32
            u = sha3(mem[0])
            while _71 + stor10[address(msg.sender)][u].field_1 > t:
                mem[t + 32] = allowance[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_66] = _71
            mem[_66 + 32] = stor10[address(msg.sender)][u].field_256
            mem[_66 + 64] = stor10[address(msg.sender)][u].field_512
            mem[_66 + 96] = stor10[address(msg.sender)][u].field_768
            mem[_66 + 128] = stor10[address(msg.sender)][u].field_1024
            mem[t] = _66
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(msg.sender)][idx].field_0 == stor10[address(msg.sender)][idx].field_1 < 32:
            revert with 0, 34
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(stor10[address(msg.sender)][idx].field_1) + 32
        mem[_73] = stor10[address(msg.sender)][idx].field_1
        if stor10[address(msg.sender)][idx].field_0:
            if stor10[address(msg.sender)][idx].field_0 == uint255(stor10[address(msg.sender)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10[address(msg.sender)][idx].field_0):
                mem[_66] = _73
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor10[address(msg.sender)][idx].field_0) * 0.5:
                mem[_73 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
                mem[_66] = _73
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
            mem[_73 + 32] = stor10[address(msg.sender)][idx].field_0
            t = _73 + 32
            u = sha3(mem[0])
            while _73 + (uint255(stor10[address(msg.sender)][u].field_0) * 0.5) > t:
                mem[t + 32] = allowance[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_66] = _73
            mem[_66 + 32] = stor10[address(msg.sender)][u].field_256
            mem[_66 + 64] = stor10[address(msg.sender)][u].field_512
            mem[_66 + 96] = stor10[address(msg.sender)][u].field_768
            mem[_66 + 128] = stor10[address(msg.sender)][u].field_1024
            mem[t] = _66
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(msg.sender)][idx].field_0 == stor10[address(msg.sender)][idx].field_1 < 32:
            revert with 0, 34
        if stor10[address(msg.sender)][idx].field_1:
            if 31 >= stor10[address(msg.sender)][idx].field_1:
                mem[_73 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
            else:
                mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
                mem[_73 + 32] = stor10[address(msg.sender)][idx].field_0
                t = _73 + 32
                u = sha3(mem[0])
                while _73 + stor10[address(msg.sender)][idx].field_1 > t:
                    mem[t + 32] = allowance[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_66] = _73
        mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
        mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
        mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
        mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
        mem[s] = _66
        s = s + 32
        idx = idx + 1
        continue 
    _64 = mem[(2 * ceil32(return_data.size)) + 96]
    _67 = mem[64]
    mem[64] = mem[64] + 160
    mem[_67] = 96
    mem[_67 + 32] = 0
    mem[_67 + 64] = 0
    mem[_67 + 96] = 0
    mem[_67 + 128] = 0
    if 0 >= mem[(2 * ceil32(return_data.size)) + 96]:
        revert with 0, 50
    _70 = mem[mem[(2 * ceil32(return_data.size)) + 128] + 32]
    if not mem[mem[(2 * ceil32(return_data.size)) + 128] + 32]:
        _72 = mem[64]
        mem[64] = mem[64] + 64
        mem[_72] = 1
        mem[_72 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _74 = mem[64]
        mem[64] = mem[64] + 64
        mem[_74] = 1
        mem[_74 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _72
        t = _67
        while idx < _64:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _113 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            _114 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
            if not mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]:
                _117 = mem[64]
                mem[64] = mem[64] + 64
                mem[_117] = 1
                mem[_117 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _118 = mem[64]
                _120 = mem[s]
                t = 0
                while t < _120:
                    mem[t + _118 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_120) <= _120:
                    _217 = mem[_74]
                    s = 0
                    while s < _217:
                        mem[s + _118 + _120 + 32] = mem[s + _74 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_217) <= _217:
                        _367 = mem[_117]
                        s = 0
                        while s < _367:
                            mem[s + _118 + _120 + _217 + 32] = mem[s + _117 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_367) <= _367:
                            _507 = mem[64]
                            mem[mem[64]] = _367 + _118 + _120 + _217 - mem[64]
                            mem[64] = _367 + _118 + _120 + _217 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _507
                            t = _113
                            continue 
                        mem[_367 + _118 + _120 + _217 + 32] = 0
                        _508 = mem[64]
                        mem[mem[64]] = _367 + _118 + _120 + _217 - mem[64]
                        mem[64] = _367 + _118 + _120 + _217 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _508
                        t = _113
                        continue 
                    mem[_217 + _118 + _120 + 32] = 0
                    _368 = mem[_117]
                    s = 0
                    while s < _368:
                        mem[s + _118 + _120 + _217 + 32] = mem[s + _117 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_368) <= _368:
                        _509 = mem[64]
                        mem[mem[64]] = _368 + _118 + _120 + _217 - mem[64]
                        mem[64] = _368 + _118 + _120 + _217 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _509
                        t = _113
                        continue 
                    mem[_368 + _118 + _120 + _217 + 32] = 0
                    _510 = mem[64]
                    mem[mem[64]] = _368 + _118 + _120 + _217 - mem[64]
                    mem[64] = _368 + _118 + _120 + _217 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _510
                    t = _113
                    continue 
                mem[_120 + _118 + 32] = 0
                _218 = mem[_74]
                s = 0
                while s < _218:
                    mem[s + _118 + _120 + 32] = mem[s + _74 + 32]
                    s = s + 32
                    continue 
                if ceil32(_218) <= _218:
                    _369 = mem[_117]
                    s = 0
                    while s < _369:
                        mem[s + _118 + _120 + _218 + 32] = mem[s + _117 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_369) <= _369:
                        _511 = mem[64]
                        mem[mem[64]] = _369 + _118 + _120 + _218 - mem[64]
                        mem[64] = _369 + _118 + _120 + _218 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _511
                        t = _113
                        continue 
                    mem[_369 + _118 + _120 + _218 + 32] = 0
                    _512 = mem[64]
                    mem[mem[64]] = _369 + _118 + _120 + _218 - mem[64]
                    mem[64] = _369 + _118 + _120 + _218 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _512
                    t = _113
                    continue 
                mem[_218 + _118 + _120 + 32] = 0
                _370 = mem[_117]
                s = 0
                while s < _370:
                    mem[s + _118 + _120 + _218 + 32] = mem[s + _117 + 32]
                    s = s + 32
                    continue 
                if ceil32(_370) <= _370:
                    _513 = mem[64]
                    mem[mem[64]] = _370 + _118 + _120 + _218 - mem[64]
                    mem[64] = _370 + _118 + _120 + _218 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _513
                    t = _113
                    continue 
                mem[_370 + _118 + _120 + _218 + 32] = 0
                _514 = mem[64]
                mem[mem[64]] = _370 + _118 + _120 + _218 - mem[64]
                mem[64] = _370 + _118 + _120 + _218 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _514
                t = _113
                continue 
            u = 0
            t = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _216 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _114
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_216]:
                        revert with 0, 50
                    mem[v + _216 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _361 = mem[64]
                _365 = mem[s]
                t = 0
                while t < _365:
                    mem[t + _361 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_365) <= _365:
                    _499 = mem[_74]
                    s = 0
                    while s < _499:
                        mem[s + _361 + _365 + 32] = mem[s + _74 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_499) <= _499:
                        _707 = mem[_216]
                        s = 0
                        while s < _707:
                            mem[s + _361 + _365 + _499 + 32] = mem[s + _216 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_707) <= _707:
                            _895 = mem[64]
                            mem[mem[64]] = _707 + _361 + _365 + _499 - mem[64]
                            mem[64] = _707 + _361 + _365 + _499 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _895
                            t = _113
                            continue 
                        mem[_707 + _361 + _365 + _499 + 32] = 0
                        _896 = mem[64]
                        mem[mem[64]] = _707 + _361 + _365 + _499 - mem[64]
                        mem[64] = _707 + _361 + _365 + _499 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _896
                        t = _113
                        continue 
                    mem[_499 + _361 + _365 + 32] = 0
                    _708 = mem[_216]
                    s = 0
                    while s < _708:
                        mem[s + _361 + _365 + _499 + 32] = mem[s + _216 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_708) <= _708:
                        _897 = mem[64]
                        mem[mem[64]] = _708 + _361 + _365 + _499 - mem[64]
                        mem[64] = _708 + _361 + _365 + _499 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _897
                        t = _113
                        continue 
                    mem[_708 + _361 + _365 + _499 + 32] = 0
                    _898 = mem[64]
                    mem[mem[64]] = _708 + _361 + _365 + _499 - mem[64]
                    mem[64] = _708 + _361 + _365 + _499 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _898
                    t = _113
                    continue 
                mem[_365 + _361 + 32] = 0
                _500 = mem[_74]
                s = 0
                while s < _500:
                    mem[s + _361 + _365 + 32] = mem[s + _74 + 32]
                    s = s + 32
                    continue 
                if ceil32(_500) <= _500:
                    _709 = mem[_216]
                    s = 0
                    while s < _709:
                        mem[s + _361 + _365 + _500 + 32] = mem[s + _216 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_709) <= _709:
                        _899 = mem[64]
                        mem[mem[64]] = _709 + _361 + _365 + _500 - mem[64]
                        mem[64] = _709 + _361 + _365 + _500 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _899
                        t = _113
                        continue 
                    mem[_709 + _361 + _365 + _500 + 32] = 0
                    _900 = mem[64]
                    mem[mem[64]] = _709 + _361 + _365 + _500 - mem[64]
                    mem[64] = _709 + _361 + _365 + _500 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _900
                    t = _113
                    continue 
                mem[_500 + _361 + _365 + 32] = 0
                _710 = mem[_216]
                s = 0
                while s < _710:
                    mem[s + _361 + _365 + _500 + 32] = mem[s + _216 + 32]
                    s = s + 32
                    continue 
                if ceil32(_710) <= _710:
                    _901 = mem[64]
                    mem[mem[64]] = _710 + _361 + _365 + _500 - mem[64]
                    mem[64] = _710 + _361 + _365 + _500 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _901
                    t = _113
                    continue 
                mem[_710 + _361 + _365 + _500 + 32] = 0
                _902 = mem[64]
                mem[mem[64]] = _710 + _361 + _365 + _500 - mem[64]
                mem[64] = _710 + _361 + _365 + _500 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _902
                t = _113
                continue 
            mem[_216 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _114
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_216]:
                    revert with 0, 50
                mem[v + _216 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _362 = mem[64]
            _366 = mem[s]
            t = 0
            while t < _366:
                mem[t + _362 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_366) <= _366:
                _501 = mem[_74]
                s = 0
                while s < _501:
                    mem[s + _362 + _366 + 32] = mem[s + _74 + 32]
                    s = s + 32
                    continue 
                if ceil32(_501) <= _501:
                    _711 = mem[_216]
                    idx = 0
                    while idx < _711:
                        mem[idx + _362 + _366 + _501 + 32] = mem[idx + _216 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_711) <= _711:
                        _903 = mem[64]
                        mem[mem[64]] = _711 + _362 + _366 + _501 - mem[64]
                        mem[64] = _711 + _362 + _366 + _501 + 32
                        if ceil32(_501) == -1:
                            revert with 0, 17
                        s = ceil32(_501) + 1
                        s = _903
                        t = _113
                        continue 
                    mem[_711 + _362 + _366 + _501 + 32] = 0
                    _904 = mem[64]
                    mem[mem[64]] = _711 + _362 + _366 + _501 - mem[64]
                    mem[64] = _711 + _362 + _366 + _501 + 32
                    if ceil32(_501) == -1:
                        revert with 0, 17
                    s = ceil32(_501) + 1
                    s = _904
                    t = _113
                    continue 
                mem[_501 + _362 + _366 + 32] = 0
                _712 = mem[_216]
                idx = 0
                while idx < _712:
                    mem[idx + _362 + _366 + _501 + 32] = mem[idx + _216 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_712) <= _712:
                    _905 = mem[64]
                    mem[mem[64]] = _712 + _362 + _366 + _501 - mem[64]
                    mem[64] = _712 + _362 + _366 + _501 + 32
                    if ceil32(_501) == -1:
                        revert with 0, 17
                    s = ceil32(_501) + 1
                    s = _905
                    t = _113
                    continue 
                mem[_712 + _362 + _366 + _501 + 32] = 0
                _906 = mem[64]
                mem[mem[64]] = _712 + _362 + _366 + _501 - mem[64]
                mem[64] = _712 + _362 + _366 + _501 + 32
                if ceil32(_501) == -1:
                    revert with 0, 17
                s = ceil32(_501) + 1
                s = _906
                t = _113
                continue 
            mem[_366 + _362 + 32] = 0
            _502 = mem[_74]
            s = 0
            while s < _502:
                mem[s + _362 + _366 + 32] = mem[s + _74 + 32]
                s = s + 32
                continue 
            if ceil32(_502) <= _502:
                _713 = mem[_216]
                idx = 0
                while idx < _713:
                    mem[idx + _362 + _366 + _502 + 32] = mem[idx + _216 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_713) <= _713:
                    _907 = mem[64]
                    mem[mem[64]] = _713 + _362 + _366 + _502 - mem[64]
                    mem[64] = _713 + _362 + _366 + _502 + 32
                    if ceil32(_502) == -1:
                        revert with 0, 17
                    s = ceil32(_502) + 1
                    s = _907
                    t = _113
                    continue 
                mem[_713 + _362 + _366 + _502 + 32] = 0
                _908 = mem[64]
                mem[mem[64]] = _713 + _362 + _366 + _502 - mem[64]
                mem[64] = _713 + _362 + _366 + _502 + 32
                if ceil32(_502) == -1:
                    revert with 0, 17
                s = ceil32(_502) + 1
                s = _908
                t = _113
                continue 
            mem[_502 + _362 + _366 + 32] = 0
            _714 = mem[_216]
            idx = 0
            while idx < _714:
                mem[idx + _362 + _366 + _502 + 32] = mem[idx + _216 + 32]
                idx = idx + 32
                continue 
            if ceil32(_714) <= _714:
                _909 = mem[64]
                mem[mem[64]] = _714 + _362 + _366 + _502 - mem[64]
                mem[64] = _714 + _362 + _366 + _502 + 32
                if ceil32(_502) == -1:
                    revert with 0, 17
                s = ceil32(_502) + 1
                s = _909
                t = _113
                continue 
            mem[_714 + _362 + _366 + _502 + 32] = 0
            _910 = mem[64]
            mem[mem[64]] = _714 + _362 + _366 + _502 - mem[64]
            mem[64] = _714 + _362 + _366 + _502 + 32
            if ceil32(_502) == -1:
                revert with 0, 17
            s = ceil32(_502) + 1
            s = _910
            t = _113
            continue 
        _115 = mem[64]
        mem[mem[64]] = 32
        _116 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_116)] = mem[s + 32 len ceil32(_116)]
        if ceil32(_116) <= _116:
            return 32, mem[mem[64] + 32 len ceil32(_116) + 32]
        mem[_116 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_116) + _115 + -mem[64] + 64
    s = 0
    idx = mem[mem[(2 * ceil32(return_data.size)) + 128] + 32]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _112 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _70
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_112]:
                revert with 0, 50
            mem[t + _112 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _214 = mem[64]
        mem[64] = mem[64] + 64
        mem[_214] = 1
        mem[_214 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _112
        u = _67
        while idx < _64:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _357 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            _358 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
            if not mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]:
                _372 = mem[64]
                mem[64] = mem[64] + 64
                mem[_372] = 1
                mem[_372 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _375 = mem[64]
                _377 = mem[s]
                u = 0
                while u < _377:
                    mem[u + _375 + 32] = mem[u + s + 32]
                    u = u + 32
                    continue 
                if ceil32(_377) <= _377:
                    _495 = mem[_214]
                    s = 0
                    while s < _495:
                        mem[s + _375 + _377 + 32] = mem[s + _214 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_495) <= _495:
                        _697 = mem[_372]
                        s = 0
                        while s < _697:
                            mem[s + _375 + _377 + _495 + 32] = mem[s + _372 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_697) <= _697:
                            _879 = mem[64]
                            mem[mem[64]] = _697 + _375 + _377 + _495 - mem[64]
                            mem[64] = _697 + _375 + _377 + _495 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _879
                            u = _357
                            continue 
                        mem[_697 + _375 + _377 + _495 + 32] = 0
                        _880 = mem[64]
                        mem[mem[64]] = _697 + _375 + _377 + _495 - mem[64]
                        mem[64] = _697 + _375 + _377 + _495 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        u = _357
                        continue 
                    mem[_495 + _375 + _377 + 32] = 0
                    _698 = mem[_372]
                    s = 0
                    while s < _698:
                        mem[s + _375 + _377 + _495 + 32] = mem[s + _372 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_698) <= _698:
                        _881 = mem[64]
                        mem[mem[64]] = _698 + _375 + _377 + _495 - mem[64]
                        mem[64] = _698 + _375 + _377 + _495 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _881
                        u = _357
                        continue 
                    mem[_698 + _375 + _377 + _495 + 32] = 0
                    _882 = mem[64]
                    mem[mem[64]] = _698 + _375 + _377 + _495 - mem[64]
                    mem[64] = _698 + _375 + _377 + _495 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    u = _357
                    continue 
                mem[_377 + _375 + 32] = 0
                _496 = mem[_214]
                s = 0
                while s < _496:
                    mem[s + _375 + _377 + 32] = mem[s + _214 + 32]
                    s = s + 32
                    continue 
                if ceil32(_496) <= _496:
                    _699 = mem[_372]
                    s = 0
                    while s < _699:
                        mem[s + _375 + _377 + _496 + 32] = mem[s + _372 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _883 = mem[64]
                        mem[mem[64]] = _699 + _375 + _377 + _496 - mem[64]
                        mem[64] = _699 + _375 + _377 + _496 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _883
                        u = _357
                        continue 
                    mem[_699 + _375 + _377 + _496 + 32] = 0
                    _884 = mem[64]
                    mem[mem[64]] = _699 + _375 + _377 + _496 - mem[64]
                    mem[64] = _699 + _375 + _377 + _496 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    u = _357
                    continue 
                mem[_496 + _375 + _377 + 32] = 0
                _700 = mem[_372]
                s = 0
                while s < _700:
                    mem[s + _375 + _377 + _496 + 32] = mem[s + _372 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _885 = mem[64]
                    mem[mem[64]] = _700 + _375 + _377 + _496 - mem[64]
                    mem[64] = _700 + _375 + _377 + _496 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _885
                    u = _357
                    continue 
                mem[_700 + _375 + _377 + _496 + 32] = 0
                _886 = mem[64]
                mem[mem[64]] = _700 + _375 + _377 + _496 - mem[64]
                mem[64] = _700 + _375 + _377 + _496 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _886
                u = _357
                continue 
            u = 0
            t = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _493 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _358
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_493]:
                        revert with 0, 50
                    mem[v + _493 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _691 = mem[64]
                _695 = mem[s]
                t = 0
                while t < _695:
                    mem[t + _691 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_695) <= _695:
                    _871 = mem[_214]
                    s = 0
                    while s < _871:
                        mem[s + _691 + _695 + 32] = mem[s + _214 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_871) <= _871:
                        _991 = mem[_493]
                        s = 0
                        while s < _991:
                            mem[s + _691 + _695 + _871 + 32] = mem[s + _493 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_991) <= _991:
                            _1071 = mem[64]
                            mem[mem[64]] = _991 + _691 + _695 + _871 - mem[64]
                            mem[64] = _991 + _691 + _695 + _871 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1071
                            u = _357
                            continue 
                        mem[_991 + _691 + _695 + _871 + 32] = 0
                        _1072 = mem[64]
                        mem[mem[64]] = _991 + _691 + _695 + _871 - mem[64]
                        mem[64] = _991 + _691 + _695 + _871 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1072
                        u = _357
                        continue 
                    mem[_871 + _691 + _695 + 32] = 0
                    _992 = mem[_493]
                    s = 0
                    while s < _992:
                        mem[s + _691 + _695 + _871 + 32] = mem[s + _493 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_992) <= _992:
                        _1073 = mem[64]
                        mem[mem[64]] = _992 + _691 + _695 + _871 - mem[64]
                        mem[64] = _992 + _691 + _695 + _871 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1073
                        u = _357
                        continue 
                    mem[_992 + _691 + _695 + _871 + 32] = 0
                    _1074 = mem[64]
                    mem[mem[64]] = _992 + _691 + _695 + _871 - mem[64]
                    mem[64] = _992 + _691 + _695 + _871 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1074
                    u = _357
                    continue 
                mem[_695 + _691 + 32] = 0
                _872 = mem[_214]
                s = 0
                while s < _872:
                    mem[s + _691 + _695 + 32] = mem[s + _214 + 32]
                    s = s + 32
                    continue 
                if ceil32(_872) <= _872:
                    _993 = mem[_493]
                    s = 0
                    while s < _993:
                        mem[s + _691 + _695 + _872 + 32] = mem[s + _493 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_993) <= _993:
                        _1075 = mem[64]
                        mem[mem[64]] = _993 + _691 + _695 + _872 - mem[64]
                        mem[64] = _993 + _691 + _695 + _872 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1075
                        u = _357
                        continue 
                    mem[_993 + _691 + _695 + _872 + 32] = 0
                    _1076 = mem[64]
                    mem[mem[64]] = _993 + _691 + _695 + _872 - mem[64]
                    mem[64] = _993 + _691 + _695 + _872 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1076
                    u = _357
                    continue 
                mem[_872 + _691 + _695 + 32] = 0
                _994 = mem[_493]
                s = 0
                while s < _994:
                    mem[s + _691 + _695 + _872 + 32] = mem[s + _493 + 32]
                    s = s + 32
                    continue 
                if ceil32(_994) <= _994:
                    _1077 = mem[64]
                    mem[mem[64]] = _994 + _691 + _695 + _872 - mem[64]
                    mem[64] = _994 + _691 + _695 + _872 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1077
                    u = _357
                    continue 
                mem[_994 + _691 + _695 + _872 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _994 + _691 + _695 + _872 - mem[64]
                mem[64] = _994 + _691 + _695 + _872 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1078
                u = _357
                continue 
            mem[_493 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _358
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_493]:
                    revert with 0, 50
                mem[v + _493 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _692 = mem[64]
            _696 = mem[s]
            t = 0
            while t < _696:
                mem[t + _692 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_696) <= _696:
                _873 = mem[_214]
                s = 0
                while s < _873:
                    mem[s + _692 + _696 + 32] = mem[s + _214 + 32]
                    s = s + 32
                    continue 
                if ceil32(_873) <= _873:
                    _995 = mem[_493]
                    idx = 0
                    while idx < _995:
                        mem[idx + _692 + _696 + _873 + 32] = mem[idx + _493 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_995) <= _995:
                        _1079 = mem[64]
                        mem[mem[64]] = _995 + _692 + _696 + _873 - mem[64]
                        mem[64] = _995 + _692 + _696 + _873 + 32
                        if ceil32(_873) == -1:
                            revert with 0, 17
                        s = ceil32(_873) + 1
                        s = _1079
                        u = _357
                        continue 
                    mem[_995 + _692 + _696 + _873 + 32] = 0
                    _1080 = mem[64]
                    mem[mem[64]] = _995 + _692 + _696 + _873 - mem[64]
                    mem[64] = _995 + _692 + _696 + _873 + 32
                    if ceil32(_873) == -1:
                        revert with 0, 17
                    s = ceil32(_873) + 1
                    s = _1080
                    u = _357
                    continue 
                mem[_873 + _692 + _696 + 32] = 0
                _996 = mem[_493]
                idx = 0
                while idx < _996:
                    mem[idx + _692 + _696 + _873 + 32] = mem[idx + _493 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_996) <= _996:
                    _1081 = mem[64]
                    mem[mem[64]] = _996 + _692 + _696 + _873 - mem[64]
                    mem[64] = _996 + _692 + _696 + _873 + 32
                    if ceil32(_873) == -1:
                        revert with 0, 17
                    s = ceil32(_873) + 1
                    s = _1081
                    u = _357
                    continue 
                mem[_996 + _692 + _696 + _873 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _996 + _692 + _696 + _873 - mem[64]
                mem[64] = _996 + _692 + _696 + _873 + 32
                if ceil32(_873) == -1:
                    revert with 0, 17
                s = ceil32(_873) + 1
                s = _1082
                u = _357
                continue 
            mem[_696 + _692 + 32] = 0
            _874 = mem[_214]
            s = 0
            while s < _874:
                mem[s + _692 + _696 + 32] = mem[s + _214 + 32]
                s = s + 32
                continue 
            if ceil32(_874) <= _874:
                _997 = mem[_493]
                idx = 0
                while idx < _997:
                    mem[idx + _692 + _696 + _874 + 32] = mem[idx + _493 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_997) <= _997:
                    _1083 = mem[64]
                    mem[mem[64]] = _997 + _692 + _696 + _874 - mem[64]
                    mem[64] = _997 + _692 + _696 + _874 + 32
                    if ceil32(_874) == -1:
                        revert with 0, 17
                    s = ceil32(_874) + 1
                    s = _1083
                    u = _357
                    continue 
                mem[_997 + _692 + _696 + _874 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _997 + _692 + _696 + _874 - mem[64]
                mem[64] = _997 + _692 + _696 + _874 + 32
                if ceil32(_874) == -1:
                    revert with 0, 17
                s = ceil32(_874) + 1
                s = _1084
                u = _357
                continue 
            mem[_874 + _692 + _696 + 32] = 0
            _998 = mem[_493]
            idx = 0
            while idx < _998:
                mem[idx + _692 + _696 + _874 + 32] = mem[idx + _493 + 32]
                idx = idx + 32
                continue 
            if ceil32(_998) <= _998:
                _1085 = mem[64]
                mem[mem[64]] = _998 + _692 + _696 + _874 - mem[64]
                mem[64] = _998 + _692 + _696 + _874 + 32
                if ceil32(_874) == -1:
                    revert with 0, 17
                s = ceil32(_874) + 1
                s = _1085
                u = _357
                continue 
            mem[_998 + _692 + _696 + _874 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _998 + _692 + _696 + _874 - mem[64]
            mem[64] = _998 + _692 + _696 + _874 + 32
            if ceil32(_874) == -1:
                revert with 0, 17
            s = ceil32(_874) + 1
            s = _1086
            u = _357
            continue 
        mem[mem[64]] = 32
        _371 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_371)] = mem[s + 32 len ceil32(_371)]
        if ceil32(_371) > _371:
            mem[_371 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_371) + 32]
    mem[_112 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _70
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[_112]:
            revert with 0, 50
        mem[t + _112 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _215 = mem[64]
    mem[64] = mem[64] + 64
    mem[_215] = 1
    mem[_215 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _112
    u = _67
    while idx < _64:
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 0, 50
        _359 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        _360 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
        if not mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]:
            _374 = mem[64]
            mem[64] = mem[64] + 64
            mem[_374] = 1
            mem[_374 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _376 = mem[64]
            _378 = mem[s]
            u = 0
            while u < _378:
                mem[u + _376 + 32] = mem[u + s + 32]
                u = u + 32
                continue 
            if ceil32(_378) <= _378:
                _497 = mem[_215]
                s = 0
                while s < _497:
                    mem[s + _376 + _378 + 32] = mem[s + _215 + 32]
                    s = s + 32
                    continue 
                if ceil32(_497) <= _497:
                    _703 = mem[_374]
                    s = 0
                    while s < _703:
                        mem[s + _376 + _378 + _497 + 32] = mem[s + _374 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _887 = mem[64]
                        mem[mem[64]] = _703 + _376 + _378 + _497 - mem[64]
                        mem[64] = _703 + _376 + _378 + _497 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _887
                        u = _359
                        continue 
                    mem[_703 + _376 + _378 + _497 + 32] = 0
                    _888 = mem[64]
                    mem[mem[64]] = _703 + _376 + _378 + _497 - mem[64]
                    mem[64] = _703 + _376 + _378 + _497 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _888
                    u = _359
                    continue 
                mem[_497 + _376 + _378 + 32] = 0
                _704 = mem[_374]
                s = 0
                while s < _704:
                    mem[s + _376 + _378 + _497 + 32] = mem[s + _374 + 32]
                    s = s + 32
                    continue 
                if ceil32(_704) <= _704:
                    _889 = mem[64]
                    mem[mem[64]] = _704 + _376 + _378 + _497 - mem[64]
                    mem[64] = _704 + _376 + _378 + _497 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _889
                    u = _359
                    continue 
                mem[_704 + _376 + _378 + _497 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _704 + _376 + _378 + _497 - mem[64]
                mem[64] = _704 + _376 + _378 + _497 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _890
                u = _359
                continue 
            mem[_378 + _376 + 32] = 0
            _498 = mem[_215]
            s = 0
            while s < _498:
                mem[s + _376 + _378 + 32] = mem[s + _215 + 32]
                s = s + 32
                continue 
            if ceil32(_498) <= _498:
                _705 = mem[_374]
                s = 0
                while s < _705:
                    mem[s + _376 + _378 + _498 + 32] = mem[s + _374 + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _891 = mem[64]
                    mem[mem[64]] = _705 + _376 + _378 + _498 - mem[64]
                    mem[64] = _705 + _376 + _378 + _498 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _891
                    u = _359
                    continue 
                mem[_705 + _376 + _378 + _498 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _705 + _376 + _378 + _498 - mem[64]
                mem[64] = _705 + _376 + _378 + _498 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _892
                u = _359
                continue 
            mem[_498 + _376 + _378 + 32] = 0
            _706 = mem[_374]
            s = 0
            while s < _706:
                mem[s + _376 + _378 + _498 + 32] = mem[s + _374 + 32]
                s = s + 32
                continue 
            if ceil32(_706) <= _706:
                _893 = mem[64]
                mem[mem[64]] = _706 + _376 + _378 + _498 - mem[64]
                mem[64] = _706 + _376 + _378 + _498 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _893
                u = _359
                continue 
            mem[_706 + _376 + _378 + _498 + 32] = 0
            _894 = mem[64]
            mem[mem[64]] = _706 + _376 + _378 + _498 - mem[64]
            mem[64] = _706 + _376 + _378 + _498 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _894
            u = _359
            continue 
        u = 0
        t = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
        while t:
            if u == -1:
                revert with 0, 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _494 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _360
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_494]:
                    revert with 0, 50
                mem[v + _494 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _693 = mem[64]
            _701 = mem[s]
            t = 0
            while t < _701:
                mem[t + _693 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_701) <= _701:
                _875 = mem[_215]
                s = 0
                while s < _875:
                    mem[s + _693 + _701 + 32] = mem[s + _215 + 32]
                    s = s + 32
                    continue 
                if ceil32(_875) <= _875:
                    _999 = mem[_494]
                    s = 0
                    while s < _999:
                        mem[s + _693 + _701 + _875 + 32] = mem[s + _494 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_999) <= _999:
                        _1087 = mem[64]
                        mem[mem[64]] = _999 + _693 + _701 + _875 - mem[64]
                        mem[64] = _999 + _693 + _701 + _875 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1087
                        u = _359
                        continue 
                    mem[_999 + _693 + _701 + _875 + 32] = 0
                    _1088 = mem[64]
                    mem[mem[64]] = _999 + _693 + _701 + _875 - mem[64]
                    mem[64] = _999 + _693 + _701 + _875 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1088
                    u = _359
                    continue 
                mem[_875 + _693 + _701 + 32] = 0
                _1000 = mem[_494]
                s = 0
                while s < _1000:
                    mem[s + _693 + _701 + _875 + 32] = mem[s + _494 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1000) <= _1000:
                    _1089 = mem[64]
                    mem[mem[64]] = _1000 + _693 + _701 + _875 - mem[64]
                    mem[64] = _1000 + _693 + _701 + _875 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1089
                    u = _359
                    continue 
                mem[_1000 + _693 + _701 + _875 + 32] = 0
                _1090 = mem[64]
                mem[mem[64]] = _1000 + _693 + _701 + _875 - mem[64]
                mem[64] = _1000 + _693 + _701 + _875 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1090
                u = _359
                continue 
            mem[_701 + _693 + 32] = 0
            _876 = mem[_215]
            s = 0
            while s < _876:
                mem[s + _693 + _701 + 32] = mem[s + _215 + 32]
                s = s + 32
                continue 
            if ceil32(_876) <= _876:
                _1001 = mem[_494]
                s = 0
                while s < _1001:
                    mem[s + _693 + _701 + _876 + 32] = mem[s + _494 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1001) <= _1001:
                    _1091 = mem[64]
                    mem[mem[64]] = _1001 + _693 + _701 + _876 - mem[64]
                    mem[64] = _1001 + _693 + _701 + _876 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1091
                    u = _359
                    continue 
                mem[_1001 + _693 + _701 + _876 + 32] = 0
                _1092 = mem[64]
                mem[mem[64]] = _1001 + _693 + _701 + _876 - mem[64]
                mem[64] = _1001 + _693 + _701 + _876 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1092
                u = _359
                continue 
            mem[_876 + _693 + _701 + 32] = 0
            _1002 = mem[_494]
            s = 0
            while s < _1002:
                mem[s + _693 + _701 + _876 + 32] = mem[s + _494 + 32]
                s = s + 32
                continue 
            if ceil32(_1002) <= _1002:
                _1093 = mem[64]
                mem[mem[64]] = _1002 + _693 + _701 + _876 - mem[64]
                mem[64] = _1002 + _693 + _701 + _876 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1093
                u = _359
                continue 
            mem[_1002 + _693 + _701 + _876 + 32] = 0
            _1094 = mem[64]
            mem[mem[64]] = _1002 + _693 + _701 + _876 - mem[64]
            mem[64] = _1002 + _693 + _701 + _876 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1094
            u = _359
            continue 
        mem[_494 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _360
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_494]:
                revert with 0, 50
            mem[v + _494 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _694 = mem[64]
        _702 = mem[s]
        t = 0
        while t < _702:
            mem[t + _694 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_702) <= _702:
            _877 = mem[_215]
            s = 0
            while s < _877:
                mem[s + _694 + _702 + 32] = mem[s + _215 + 32]
                s = s + 32
                continue 
            if ceil32(_877) <= _877:
                _1003 = mem[_494]
                idx = 0
                while idx < _1003:
                    mem[idx + _694 + _702 + _877 + 32] = mem[idx + _494 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1003) <= _1003:
                    _1095 = mem[64]
                    mem[mem[64]] = _1003 + _694 + _702 + _877 - mem[64]
                    mem[64] = _1003 + _694 + _702 + _877 + 32
                    if ceil32(_877) == -1:
                        revert with 0, 17
                    s = ceil32(_877) + 1
                    s = _1095
                    u = _359
                    continue 
                mem[_1003 + _694 + _702 + _877 + 32] = 0
                _1096 = mem[64]
                mem[mem[64]] = _1003 + _694 + _702 + _877 - mem[64]
                mem[64] = _1003 + _694 + _702 + _877 + 32
                if ceil32(_877) == -1:
                    revert with 0, 17
                s = ceil32(_877) + 1
                s = _1096
                u = _359
                continue 
            mem[_877 + _694 + _702 + 32] = 0
            _1004 = mem[_494]
            idx = 0
            while idx < _1004:
                mem[idx + _694 + _702 + _877 + 32] = mem[idx + _494 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1004) <= _1004:
                _1097 = mem[64]
                mem[mem[64]] = _1004 + _694 + _702 + _877 - mem[64]
                mem[64] = _1004 + _694 + _702 + _877 + 32
                if ceil32(_877) == -1:
                    revert with 0, 17
                s = ceil32(_877) + 1
                s = _1097
                u = _359
                continue 
            mem[_1004 + _694 + _702 + _877 + 32] = 0
            _1098 = mem[64]
            mem[mem[64]] = _1004 + _694 + _702 + _877 - mem[64]
            mem[64] = _1004 + _694 + _702 + _877 + 32
            if ceil32(_877) == -1:
                revert with 0, 17
            s = ceil32(_877) + 1
            s = _1098
            u = _359
            continue 
        mem[_702 + _694 + 32] = 0
        _878 = mem[_215]
        s = 0
        while s < _878:
            mem[s + _694 + _702 + 32] = mem[s + _215 + 32]
            s = s + 32
            continue 
        if ceil32(_878) <= _878:
            _1005 = mem[_494]
            idx = 0
            while idx < _1005:
                mem[idx + _694 + _702 + _878 + 32] = mem[idx + _494 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1005) <= _1005:
                _1099 = mem[64]
                mem[mem[64]] = _1005 + _694 + _702 + _878 - mem[64]
                mem[64] = _1005 + _694 + _702 + _878 + 32
                if ceil32(_878) == -1:
                    revert with 0, 17
                s = ceil32(_878) + 1
                s = _1099
                u = _359
                continue 
            mem[_1005 + _694 + _702 + _878 + 32] = 0
            _1100 = mem[64]
            mem[mem[64]] = _1005 + _694 + _702 + _878 - mem[64]
            mem[64] = _1005 + _694 + _702 + _878 + 32
            if ceil32(_878) == -1:
                revert with 0, 17
            s = ceil32(_878) + 1
            s = _1100
            u = _359
            continue 
        mem[_878 + _694 + _702 + 32] = 0
        _1006 = mem[_494]
        idx = 0
        while idx < _1006:
            mem[idx + _694 + _702 + _878 + 32] = mem[idx + _494 + 32]
            idx = idx + 32
            continue 
        if ceil32(_1006) <= _1006:
            _1101 = mem[64]
            mem[mem[64]] = _1006 + _694 + _702 + _878 - mem[64]
            mem[64] = _1006 + _694 + _702 + _878 + 32
            if ceil32(_878) == -1:
                revert with 0, 17
            s = ceil32(_878) + 1
            s = _1101
            u = _359
            continue 
        mem[_1006 + _694 + _702 + _878 + 32] = 0
        _1102 = mem[64]
        mem[mem[64]] = _1006 + _694 + _702 + _878 - mem[64]
        mem[64] = _1006 + _694 + _702 + _878 + 32
        if ceil32(_878) == -1:
            revert with 0, 17
        s = ceil32(_878) + 1
        s = _1102
        u = _359
        continue 
    _364 = mem[64]
    mem[mem[64]] = 32
    _373 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_373)] = mem[s + 32 len ceil32(_373)]
    if ceil32(_373) <= _373:
        return 32, mem[mem[64] + 32 len ceil32(_373) + 32]
    mem[_373 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_373) + _364 + -mem[64] + 64
}

function getNodesLastClaims() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = 6
    mem[132] = msg.sender
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, msg.sender
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 100] = 6
    mem[ceil32(return_data.size) + 132] = msg.sender
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, msg.sender
    mem[ceil32(return_data.size) + 96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'LAST CLAIM TIME: NO NODE OWNER'
    mem[0] = msg.sender
    mem[32] = 10
    mem[64] = (2 * ceil32(return_data.size)) + (32 * stor10[address(msg.sender)].field_0) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = stor10[address(msg.sender)].field_0
    s = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < stor10[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 10)
        _66 = mem[64]
        mem[64] = mem[64] + 160
        if stor10[address(msg.sender)][idx].field_0:
            if stor10[address(msg.sender)][idx].field_0 == uint255(stor10[address(msg.sender)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor10[address(msg.sender)][idx].field_0) * 0.5) + 32
            mem[_71] = uint255(stor10[address(msg.sender)][idx].field_0) * 0.5
            if stor10[address(msg.sender)][idx].field_0:
                if stor10[address(msg.sender)][idx].field_0 == uint255(stor10[address(msg.sender)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor10[address(msg.sender)][idx].field_0):
                    if 31 >= uint255(stor10[address(msg.sender)][idx].field_0) * 0.5:
                        mem[_71 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
                    else:
                        mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
                        mem[_71 + 32] = stor10[address(msg.sender)][idx].field_0
                        t = _71 + 32
                        u = sha3(mem[0])
                        while _71 + (uint255(stor10[address(msg.sender)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = allowance[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_66] = _71
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            if stor10[address(msg.sender)][idx].field_0 == stor10[address(msg.sender)][idx].field_1 < 32:
                revert with 0, 34
            if not stor10[address(msg.sender)][idx].field_1:
                mem[_66] = _71
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor10[address(msg.sender)][idx].field_1:
                mem[_71 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
                mem[_66] = _71
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
            mem[_71 + 32] = stor10[address(msg.sender)][idx].field_0
            t = _71 + 32
            u = sha3(mem[0])
            while _71 + stor10[address(msg.sender)][u].field_1 > t:
                mem[t + 32] = allowance[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_66] = _71
            mem[_66 + 32] = stor10[address(msg.sender)][u].field_256
            mem[_66 + 64] = stor10[address(msg.sender)][u].field_512
            mem[_66 + 96] = stor10[address(msg.sender)][u].field_768
            mem[_66 + 128] = stor10[address(msg.sender)][u].field_1024
            mem[t] = _66
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(msg.sender)][idx].field_0 == stor10[address(msg.sender)][idx].field_1 < 32:
            revert with 0, 34
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(stor10[address(msg.sender)][idx].field_1) + 32
        mem[_73] = stor10[address(msg.sender)][idx].field_1
        if stor10[address(msg.sender)][idx].field_0:
            if stor10[address(msg.sender)][idx].field_0 == uint255(stor10[address(msg.sender)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10[address(msg.sender)][idx].field_0):
                mem[_66] = _73
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor10[address(msg.sender)][idx].field_0) * 0.5:
                mem[_73 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
                mem[_66] = _73
                mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
                mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
                mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
                mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
                mem[s] = _66
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
            mem[_73 + 32] = stor10[address(msg.sender)][idx].field_0
            t = _73 + 32
            u = sha3(mem[0])
            while _73 + (uint255(stor10[address(msg.sender)][u].field_0) * 0.5) > t:
                mem[t + 32] = allowance[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_66] = _73
            mem[_66 + 32] = stor10[address(msg.sender)][u].field_256
            mem[_66 + 64] = stor10[address(msg.sender)][u].field_512
            mem[_66 + 96] = stor10[address(msg.sender)][u].field_768
            mem[_66 + 128] = stor10[address(msg.sender)][u].field_1024
            mem[t] = _66
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(msg.sender)][idx].field_0 == stor10[address(msg.sender)][idx].field_1 < 32:
            revert with 0, 34
        if stor10[address(msg.sender)][idx].field_1:
            if 31 >= stor10[address(msg.sender)][idx].field_1:
                mem[_73 + 32] = 256 * stor10[address(msg.sender)][idx].field_8
            else:
                mem[0] = (5 * idx) + sha3(sha3(address(msg.sender), 10))
                mem[_73 + 32] = stor10[address(msg.sender)][idx].field_0
                t = _73 + 32
                u = sha3(mem[0])
                while _73 + stor10[address(msg.sender)][idx].field_1 > t:
                    mem[t + 32] = allowance[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_66] = _73
        mem[_66 + 32] = stor10[address(msg.sender)][idx].field_256
        mem[_66 + 64] = stor10[address(msg.sender)][idx].field_512
        mem[_66 + 96] = stor10[address(msg.sender)][idx].field_768
        mem[_66 + 128] = stor10[address(msg.sender)][idx].field_1024
        mem[s] = _66
        s = s + 32
        idx = idx + 1
        continue 
    _64 = mem[(2 * ceil32(return_data.size)) + 96]
    _67 = mem[64]
    mem[64] = mem[64] + 160
    mem[_67] = 96
    mem[_67 + 32] = 0
    mem[_67 + 64] = 0
    mem[_67 + 96] = 0
    mem[_67 + 128] = 0
    if 0 >= mem[(2 * ceil32(return_data.size)) + 96]:
        revert with 0, 50
    _70 = mem[mem[(2 * ceil32(return_data.size)) + 128] + 64]
    if not mem[mem[(2 * ceil32(return_data.size)) + 128] + 64]:
        _72 = mem[64]
        mem[64] = mem[64] + 64
        mem[_72] = 1
        mem[_72 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _74 = mem[64]
        mem[64] = mem[64] + 64
        mem[_74] = 1
        mem[_74 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _72
        t = _67
        while idx < _64:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _113 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            _114 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]
            if not mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]:
                _117 = mem[64]
                mem[64] = mem[64] + 64
                mem[_117] = 1
                mem[_117 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _118 = mem[64]
                _120 = mem[s]
                t = 0
                while t < _120:
                    mem[t + _118 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_120) <= _120:
                    _217 = mem[_74]
                    s = 0
                    while s < _217:
                        mem[s + _118 + _120 + 32] = mem[s + _74 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_217) <= _217:
                        _367 = mem[_117]
                        s = 0
                        while s < _367:
                            mem[s + _118 + _120 + _217 + 32] = mem[s + _117 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_367) <= _367:
                            _507 = mem[64]
                            mem[mem[64]] = _367 + _118 + _120 + _217 - mem[64]
                            mem[64] = _367 + _118 + _120 + _217 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _507
                            t = _113
                            continue 
                        mem[_367 + _118 + _120 + _217 + 32] = 0
                        _508 = mem[64]
                        mem[mem[64]] = _367 + _118 + _120 + _217 - mem[64]
                        mem[64] = _367 + _118 + _120 + _217 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _508
                        t = _113
                        continue 
                    mem[_217 + _118 + _120 + 32] = 0
                    _368 = mem[_117]
                    s = 0
                    while s < _368:
                        mem[s + _118 + _120 + _217 + 32] = mem[s + _117 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_368) <= _368:
                        _509 = mem[64]
                        mem[mem[64]] = _368 + _118 + _120 + _217 - mem[64]
                        mem[64] = _368 + _118 + _120 + _217 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _509
                        t = _113
                        continue 
                    mem[_368 + _118 + _120 + _217 + 32] = 0
                    _510 = mem[64]
                    mem[mem[64]] = _368 + _118 + _120 + _217 - mem[64]
                    mem[64] = _368 + _118 + _120 + _217 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _510
                    t = _113
                    continue 
                mem[_120 + _118 + 32] = 0
                _218 = mem[_74]
                s = 0
                while s < _218:
                    mem[s + _118 + _120 + 32] = mem[s + _74 + 32]
                    s = s + 32
                    continue 
                if ceil32(_218) <= _218:
                    _369 = mem[_117]
                    s = 0
                    while s < _369:
                        mem[s + _118 + _120 + _218 + 32] = mem[s + _117 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_369) <= _369:
                        _511 = mem[64]
                        mem[mem[64]] = _369 + _118 + _120 + _218 - mem[64]
                        mem[64] = _369 + _118 + _120 + _218 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _511
                        t = _113
                        continue 
                    mem[_369 + _118 + _120 + _218 + 32] = 0
                    _512 = mem[64]
                    mem[mem[64]] = _369 + _118 + _120 + _218 - mem[64]
                    mem[64] = _369 + _118 + _120 + _218 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _512
                    t = _113
                    continue 
                mem[_218 + _118 + _120 + 32] = 0
                _370 = mem[_117]
                s = 0
                while s < _370:
                    mem[s + _118 + _120 + _218 + 32] = mem[s + _117 + 32]
                    s = s + 32
                    continue 
                if ceil32(_370) <= _370:
                    _513 = mem[64]
                    mem[mem[64]] = _370 + _118 + _120 + _218 - mem[64]
                    mem[64] = _370 + _118 + _120 + _218 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _513
                    t = _113
                    continue 
                mem[_370 + _118 + _120 + _218 + 32] = 0
                _514 = mem[64]
                mem[mem[64]] = _370 + _118 + _120 + _218 - mem[64]
                mem[64] = _370 + _118 + _120 + _218 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _514
                t = _113
                continue 
            u = 0
            t = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _216 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _114
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_216]:
                        revert with 0, 50
                    mem[v + _216 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _361 = mem[64]
                _365 = mem[s]
                t = 0
                while t < _365:
                    mem[t + _361 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_365) <= _365:
                    _499 = mem[_74]
                    s = 0
                    while s < _499:
                        mem[s + _361 + _365 + 32] = mem[s + _74 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_499) <= _499:
                        _707 = mem[_216]
                        s = 0
                        while s < _707:
                            mem[s + _361 + _365 + _499 + 32] = mem[s + _216 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_707) <= _707:
                            _895 = mem[64]
                            mem[mem[64]] = _707 + _361 + _365 + _499 - mem[64]
                            mem[64] = _707 + _361 + _365 + _499 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _895
                            t = _113
                            continue 
                        mem[_707 + _361 + _365 + _499 + 32] = 0
                        _896 = mem[64]
                        mem[mem[64]] = _707 + _361 + _365 + _499 - mem[64]
                        mem[64] = _707 + _361 + _365 + _499 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _896
                        t = _113
                        continue 
                    mem[_499 + _361 + _365 + 32] = 0
                    _708 = mem[_216]
                    s = 0
                    while s < _708:
                        mem[s + _361 + _365 + _499 + 32] = mem[s + _216 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_708) <= _708:
                        _897 = mem[64]
                        mem[mem[64]] = _708 + _361 + _365 + _499 - mem[64]
                        mem[64] = _708 + _361 + _365 + _499 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _897
                        t = _113
                        continue 
                    mem[_708 + _361 + _365 + _499 + 32] = 0
                    _898 = mem[64]
                    mem[mem[64]] = _708 + _361 + _365 + _499 - mem[64]
                    mem[64] = _708 + _361 + _365 + _499 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _898
                    t = _113
                    continue 
                mem[_365 + _361 + 32] = 0
                _500 = mem[_74]
                s = 0
                while s < _500:
                    mem[s + _361 + _365 + 32] = mem[s + _74 + 32]
                    s = s + 32
                    continue 
                if ceil32(_500) <= _500:
                    _709 = mem[_216]
                    s = 0
                    while s < _709:
                        mem[s + _361 + _365 + _500 + 32] = mem[s + _216 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_709) <= _709:
                        _899 = mem[64]
                        mem[mem[64]] = _709 + _361 + _365 + _500 - mem[64]
                        mem[64] = _709 + _361 + _365 + _500 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _899
                        t = _113
                        continue 
                    mem[_709 + _361 + _365 + _500 + 32] = 0
                    _900 = mem[64]
                    mem[mem[64]] = _709 + _361 + _365 + _500 - mem[64]
                    mem[64] = _709 + _361 + _365 + _500 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _900
                    t = _113
                    continue 
                mem[_500 + _361 + _365 + 32] = 0
                _710 = mem[_216]
                s = 0
                while s < _710:
                    mem[s + _361 + _365 + _500 + 32] = mem[s + _216 + 32]
                    s = s + 32
                    continue 
                if ceil32(_710) <= _710:
                    _901 = mem[64]
                    mem[mem[64]] = _710 + _361 + _365 + _500 - mem[64]
                    mem[64] = _710 + _361 + _365 + _500 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _901
                    t = _113
                    continue 
                mem[_710 + _361 + _365 + _500 + 32] = 0
                _902 = mem[64]
                mem[mem[64]] = _710 + _361 + _365 + _500 - mem[64]
                mem[64] = _710 + _361 + _365 + _500 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _902
                t = _113
                continue 
            mem[_216 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _114
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_216]:
                    revert with 0, 50
                mem[v + _216 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _362 = mem[64]
            _366 = mem[s]
            t = 0
            while t < _366:
                mem[t + _362 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_366) <= _366:
                _501 = mem[_74]
                s = 0
                while s < _501:
                    mem[s + _362 + _366 + 32] = mem[s + _74 + 32]
                    s = s + 32
                    continue 
                if ceil32(_501) <= _501:
                    _711 = mem[_216]
                    idx = 0
                    while idx < _711:
                        mem[idx + _362 + _366 + _501 + 32] = mem[idx + _216 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_711) <= _711:
                        _903 = mem[64]
                        mem[mem[64]] = _711 + _362 + _366 + _501 - mem[64]
                        mem[64] = _711 + _362 + _366 + _501 + 32
                        if ceil32(_501) == -1:
                            revert with 0, 17
                        s = ceil32(_501) + 1
                        s = _903
                        t = _113
                        continue 
                    mem[_711 + _362 + _366 + _501 + 32] = 0
                    _904 = mem[64]
                    mem[mem[64]] = _711 + _362 + _366 + _501 - mem[64]
                    mem[64] = _711 + _362 + _366 + _501 + 32
                    if ceil32(_501) == -1:
                        revert with 0, 17
                    s = ceil32(_501) + 1
                    s = _904
                    t = _113
                    continue 
                mem[_501 + _362 + _366 + 32] = 0
                _712 = mem[_216]
                idx = 0
                while idx < _712:
                    mem[idx + _362 + _366 + _501 + 32] = mem[idx + _216 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_712) <= _712:
                    _905 = mem[64]
                    mem[mem[64]] = _712 + _362 + _366 + _501 - mem[64]
                    mem[64] = _712 + _362 + _366 + _501 + 32
                    if ceil32(_501) == -1:
                        revert with 0, 17
                    s = ceil32(_501) + 1
                    s = _905
                    t = _113
                    continue 
                mem[_712 + _362 + _366 + _501 + 32] = 0
                _906 = mem[64]
                mem[mem[64]] = _712 + _362 + _366 + _501 - mem[64]
                mem[64] = _712 + _362 + _366 + _501 + 32
                if ceil32(_501) == -1:
                    revert with 0, 17
                s = ceil32(_501) + 1
                s = _906
                t = _113
                continue 
            mem[_366 + _362 + 32] = 0
            _502 = mem[_74]
            s = 0
            while s < _502:
                mem[s + _362 + _366 + 32] = mem[s + _74 + 32]
                s = s + 32
                continue 
            if ceil32(_502) <= _502:
                _713 = mem[_216]
                idx = 0
                while idx < _713:
                    mem[idx + _362 + _366 + _502 + 32] = mem[idx + _216 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_713) <= _713:
                    _907 = mem[64]
                    mem[mem[64]] = _713 + _362 + _366 + _502 - mem[64]
                    mem[64] = _713 + _362 + _366 + _502 + 32
                    if ceil32(_502) == -1:
                        revert with 0, 17
                    s = ceil32(_502) + 1
                    s = _907
                    t = _113
                    continue 
                mem[_713 + _362 + _366 + _502 + 32] = 0
                _908 = mem[64]
                mem[mem[64]] = _713 + _362 + _366 + _502 - mem[64]
                mem[64] = _713 + _362 + _366 + _502 + 32
                if ceil32(_502) == -1:
                    revert with 0, 17
                s = ceil32(_502) + 1
                s = _908
                t = _113
                continue 
            mem[_502 + _362 + _366 + 32] = 0
            _714 = mem[_216]
            idx = 0
            while idx < _714:
                mem[idx + _362 + _366 + _502 + 32] = mem[idx + _216 + 32]
                idx = idx + 32
                continue 
            if ceil32(_714) <= _714:
                _909 = mem[64]
                mem[mem[64]] = _714 + _362 + _366 + _502 - mem[64]
                mem[64] = _714 + _362 + _366 + _502 + 32
                if ceil32(_502) == -1:
                    revert with 0, 17
                s = ceil32(_502) + 1
                s = _909
                t = _113
                continue 
            mem[_714 + _362 + _366 + _502 + 32] = 0
            _910 = mem[64]
            mem[mem[64]] = _714 + _362 + _366 + _502 - mem[64]
            mem[64] = _714 + _362 + _366 + _502 + 32
            if ceil32(_502) == -1:
                revert with 0, 17
            s = ceil32(_502) + 1
            s = _910
            t = _113
            continue 
        _115 = mem[64]
        mem[mem[64]] = 32
        _116 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_116)] = mem[s + 32 len ceil32(_116)]
        if ceil32(_116) <= _116:
            return 32, mem[mem[64] + 32 len ceil32(_116) + 32]
        mem[_116 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_116) + _115 + -mem[64] + 64
    s = 0
    idx = mem[mem[(2 * ceil32(return_data.size)) + 128] + 64]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _112 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _70
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_112]:
                revert with 0, 50
            mem[t + _112 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _214 = mem[64]
        mem[64] = mem[64] + 64
        mem[_214] = 1
        mem[_214 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _112
        u = _67
        while idx < _64:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _357 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            _358 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]
            if not mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]:
                _372 = mem[64]
                mem[64] = mem[64] + 64
                mem[_372] = 1
                mem[_372 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _375 = mem[64]
                _377 = mem[s]
                u = 0
                while u < _377:
                    mem[u + _375 + 32] = mem[u + s + 32]
                    u = u + 32
                    continue 
                if ceil32(_377) <= _377:
                    _495 = mem[_214]
                    s = 0
                    while s < _495:
                        mem[s + _375 + _377 + 32] = mem[s + _214 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_495) <= _495:
                        _697 = mem[_372]
                        s = 0
                        while s < _697:
                            mem[s + _375 + _377 + _495 + 32] = mem[s + _372 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_697) <= _697:
                            _879 = mem[64]
                            mem[mem[64]] = _697 + _375 + _377 + _495 - mem[64]
                            mem[64] = _697 + _375 + _377 + _495 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _879
                            u = _357
                            continue 
                        mem[_697 + _375 + _377 + _495 + 32] = 0
                        _880 = mem[64]
                        mem[mem[64]] = _697 + _375 + _377 + _495 - mem[64]
                        mem[64] = _697 + _375 + _377 + _495 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        u = _357
                        continue 
                    mem[_495 + _375 + _377 + 32] = 0
                    _698 = mem[_372]
                    s = 0
                    while s < _698:
                        mem[s + _375 + _377 + _495 + 32] = mem[s + _372 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_698) <= _698:
                        _881 = mem[64]
                        mem[mem[64]] = _698 + _375 + _377 + _495 - mem[64]
                        mem[64] = _698 + _375 + _377 + _495 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _881
                        u = _357
                        continue 
                    mem[_698 + _375 + _377 + _495 + 32] = 0
                    _882 = mem[64]
                    mem[mem[64]] = _698 + _375 + _377 + _495 - mem[64]
                    mem[64] = _698 + _375 + _377 + _495 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    u = _357
                    continue 
                mem[_377 + _375 + 32] = 0
                _496 = mem[_214]
                s = 0
                while s < _496:
                    mem[s + _375 + _377 + 32] = mem[s + _214 + 32]
                    s = s + 32
                    continue 
                if ceil32(_496) <= _496:
                    _699 = mem[_372]
                    s = 0
                    while s < _699:
                        mem[s + _375 + _377 + _496 + 32] = mem[s + _372 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _883 = mem[64]
                        mem[mem[64]] = _699 + _375 + _377 + _496 - mem[64]
                        mem[64] = _699 + _375 + _377 + _496 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _883
                        u = _357
                        continue 
                    mem[_699 + _375 + _377 + _496 + 32] = 0
                    _884 = mem[64]
                    mem[mem[64]] = _699 + _375 + _377 + _496 - mem[64]
                    mem[64] = _699 + _375 + _377 + _496 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    u = _357
                    continue 
                mem[_496 + _375 + _377 + 32] = 0
                _700 = mem[_372]
                s = 0
                while s < _700:
                    mem[s + _375 + _377 + _496 + 32] = mem[s + _372 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _885 = mem[64]
                    mem[mem[64]] = _700 + _375 + _377 + _496 - mem[64]
                    mem[64] = _700 + _375 + _377 + _496 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _885
                    u = _357
                    continue 
                mem[_700 + _375 + _377 + _496 + 32] = 0
                _886 = mem[64]
                mem[mem[64]] = _700 + _375 + _377 + _496 - mem[64]
                mem[64] = _700 + _375 + _377 + _496 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _886
                u = _357
                continue 
            u = 0
            t = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _493 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _358
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_493]:
                        revert with 0, 50
                    mem[v + _493 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _691 = mem[64]
                _695 = mem[s]
                t = 0
                while t < _695:
                    mem[t + _691 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_695) <= _695:
                    _871 = mem[_214]
                    s = 0
                    while s < _871:
                        mem[s + _691 + _695 + 32] = mem[s + _214 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_871) <= _871:
                        _991 = mem[_493]
                        s = 0
                        while s < _991:
                            mem[s + _691 + _695 + _871 + 32] = mem[s + _493 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_991) <= _991:
                            _1071 = mem[64]
                            mem[mem[64]] = _991 + _691 + _695 + _871 - mem[64]
                            mem[64] = _991 + _691 + _695 + _871 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1071
                            u = _357
                            continue 
                        mem[_991 + _691 + _695 + _871 + 32] = 0
                        _1072 = mem[64]
                        mem[mem[64]] = _991 + _691 + _695 + _871 - mem[64]
                        mem[64] = _991 + _691 + _695 + _871 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1072
                        u = _357
                        continue 
                    mem[_871 + _691 + _695 + 32] = 0
                    _992 = mem[_493]
                    s = 0
                    while s < _992:
                        mem[s + _691 + _695 + _871 + 32] = mem[s + _493 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_992) <= _992:
                        _1073 = mem[64]
                        mem[mem[64]] = _992 + _691 + _695 + _871 - mem[64]
                        mem[64] = _992 + _691 + _695 + _871 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1073
                        u = _357
                        continue 
                    mem[_992 + _691 + _695 + _871 + 32] = 0
                    _1074 = mem[64]
                    mem[mem[64]] = _992 + _691 + _695 + _871 - mem[64]
                    mem[64] = _992 + _691 + _695 + _871 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1074
                    u = _357
                    continue 
                mem[_695 + _691 + 32] = 0
                _872 = mem[_214]
                s = 0
                while s < _872:
                    mem[s + _691 + _695 + 32] = mem[s + _214 + 32]
                    s = s + 32
                    continue 
                if ceil32(_872) <= _872:
                    _993 = mem[_493]
                    s = 0
                    while s < _993:
                        mem[s + _691 + _695 + _872 + 32] = mem[s + _493 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_993) <= _993:
                        _1075 = mem[64]
                        mem[mem[64]] = _993 + _691 + _695 + _872 - mem[64]
                        mem[64] = _993 + _691 + _695 + _872 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1075
                        u = _357
                        continue 
                    mem[_993 + _691 + _695 + _872 + 32] = 0
                    _1076 = mem[64]
                    mem[mem[64]] = _993 + _691 + _695 + _872 - mem[64]
                    mem[64] = _993 + _691 + _695 + _872 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1076
                    u = _357
                    continue 
                mem[_872 + _691 + _695 + 32] = 0
                _994 = mem[_493]
                s = 0
                while s < _994:
                    mem[s + _691 + _695 + _872 + 32] = mem[s + _493 + 32]
                    s = s + 32
                    continue 
                if ceil32(_994) <= _994:
                    _1077 = mem[64]
                    mem[mem[64]] = _994 + _691 + _695 + _872 - mem[64]
                    mem[64] = _994 + _691 + _695 + _872 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1077
                    u = _357
                    continue 
                mem[_994 + _691 + _695 + _872 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _994 + _691 + _695 + _872 - mem[64]
                mem[64] = _994 + _691 + _695 + _872 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1078
                u = _357
                continue 
            mem[_493 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _358
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_493]:
                    revert with 0, 50
                mem[v + _493 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _692 = mem[64]
            _696 = mem[s]
            t = 0
            while t < _696:
                mem[t + _692 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_696) <= _696:
                _873 = mem[_214]
                s = 0
                while s < _873:
                    mem[s + _692 + _696 + 32] = mem[s + _214 + 32]
                    s = s + 32
                    continue 
                if ceil32(_873) <= _873:
                    _995 = mem[_493]
                    idx = 0
                    while idx < _995:
                        mem[idx + _692 + _696 + _873 + 32] = mem[idx + _493 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_995) <= _995:
                        _1079 = mem[64]
                        mem[mem[64]] = _995 + _692 + _696 + _873 - mem[64]
                        mem[64] = _995 + _692 + _696 + _873 + 32
                        if ceil32(_873) == -1:
                            revert with 0, 17
                        s = ceil32(_873) + 1
                        s = _1079
                        u = _357
                        continue 
                    mem[_995 + _692 + _696 + _873 + 32] = 0
                    _1080 = mem[64]
                    mem[mem[64]] = _995 + _692 + _696 + _873 - mem[64]
                    mem[64] = _995 + _692 + _696 + _873 + 32
                    if ceil32(_873) == -1:
                        revert with 0, 17
                    s = ceil32(_873) + 1
                    s = _1080
                    u = _357
                    continue 
                mem[_873 + _692 + _696 + 32] = 0
                _996 = mem[_493]
                idx = 0
                while idx < _996:
                    mem[idx + _692 + _696 + _873 + 32] = mem[idx + _493 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_996) <= _996:
                    _1081 = mem[64]
                    mem[mem[64]] = _996 + _692 + _696 + _873 - mem[64]
                    mem[64] = _996 + _692 + _696 + _873 + 32
                    if ceil32(_873) == -1:
                        revert with 0, 17
                    s = ceil32(_873) + 1
                    s = _1081
                    u = _357
                    continue 
                mem[_996 + _692 + _696 + _873 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _996 + _692 + _696 + _873 - mem[64]
                mem[64] = _996 + _692 + _696 + _873 + 32
                if ceil32(_873) == -1:
                    revert with 0, 17
                s = ceil32(_873) + 1
                s = _1082
                u = _357
                continue 
            mem[_696 + _692 + 32] = 0
            _874 = mem[_214]
            s = 0
            while s < _874:
                mem[s + _692 + _696 + 32] = mem[s + _214 + 32]
                s = s + 32
                continue 
            if ceil32(_874) <= _874:
                _997 = mem[_493]
                idx = 0
                while idx < _997:
                    mem[idx + _692 + _696 + _874 + 32] = mem[idx + _493 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_997) <= _997:
                    _1083 = mem[64]
                    mem[mem[64]] = _997 + _692 + _696 + _874 - mem[64]
                    mem[64] = _997 + _692 + _696 + _874 + 32
                    if ceil32(_874) == -1:
                        revert with 0, 17
                    s = ceil32(_874) + 1
                    s = _1083
                    u = _357
                    continue 
                mem[_997 + _692 + _696 + _874 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _997 + _692 + _696 + _874 - mem[64]
                mem[64] = _997 + _692 + _696 + _874 + 32
                if ceil32(_874) == -1:
                    revert with 0, 17
                s = ceil32(_874) + 1
                s = _1084
                u = _357
                continue 
            mem[_874 + _692 + _696 + 32] = 0
            _998 = mem[_493]
            idx = 0
            while idx < _998:
                mem[idx + _692 + _696 + _874 + 32] = mem[idx + _493 + 32]
                idx = idx + 32
                continue 
            if ceil32(_998) <= _998:
                _1085 = mem[64]
                mem[mem[64]] = _998 + _692 + _696 + _874 - mem[64]
                mem[64] = _998 + _692 + _696 + _874 + 32
                if ceil32(_874) == -1:
                    revert with 0, 17
                s = ceil32(_874) + 1
                s = _1085
                u = _357
                continue 
            mem[_998 + _692 + _696 + _874 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _998 + _692 + _696 + _874 - mem[64]
            mem[64] = _998 + _692 + _696 + _874 + 32
            if ceil32(_874) == -1:
                revert with 0, 17
            s = ceil32(_874) + 1
            s = _1086
            u = _357
            continue 
        mem[mem[64]] = 32
        _371 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_371)] = mem[s + 32 len ceil32(_371)]
        if ceil32(_371) > _371:
            mem[_371 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_371) + 32]
    mem[_112 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _70
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[_112]:
            revert with 0, 50
        mem[t + _112 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _215 = mem[64]
    mem[64] = mem[64] + 64
    mem[_215] = 1
    mem[_215 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _112
    u = _67
    while idx < _64:
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 0, 50
        _359 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        _360 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]
        if not mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]:
            _374 = mem[64]
            mem[64] = mem[64] + 64
            mem[_374] = 1
            mem[_374 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _376 = mem[64]
            _378 = mem[s]
            u = 0
            while u < _378:
                mem[u + _376 + 32] = mem[u + s + 32]
                u = u + 32
                continue 
            if ceil32(_378) <= _378:
                _497 = mem[_215]
                s = 0
                while s < _497:
                    mem[s + _376 + _378 + 32] = mem[s + _215 + 32]
                    s = s + 32
                    continue 
                if ceil32(_497) <= _497:
                    _703 = mem[_374]
                    s = 0
                    while s < _703:
                        mem[s + _376 + _378 + _497 + 32] = mem[s + _374 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _887 = mem[64]
                        mem[mem[64]] = _703 + _376 + _378 + _497 - mem[64]
                        mem[64] = _703 + _376 + _378 + _497 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _887
                        u = _359
                        continue 
                    mem[_703 + _376 + _378 + _497 + 32] = 0
                    _888 = mem[64]
                    mem[mem[64]] = _703 + _376 + _378 + _497 - mem[64]
                    mem[64] = _703 + _376 + _378 + _497 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _888
                    u = _359
                    continue 
                mem[_497 + _376 + _378 + 32] = 0
                _704 = mem[_374]
                s = 0
                while s < _704:
                    mem[s + _376 + _378 + _497 + 32] = mem[s + _374 + 32]
                    s = s + 32
                    continue 
                if ceil32(_704) <= _704:
                    _889 = mem[64]
                    mem[mem[64]] = _704 + _376 + _378 + _497 - mem[64]
                    mem[64] = _704 + _376 + _378 + _497 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _889
                    u = _359
                    continue 
                mem[_704 + _376 + _378 + _497 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _704 + _376 + _378 + _497 - mem[64]
                mem[64] = _704 + _376 + _378 + _497 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _890
                u = _359
                continue 
            mem[_378 + _376 + 32] = 0
            _498 = mem[_215]
            s = 0
            while s < _498:
                mem[s + _376 + _378 + 32] = mem[s + _215 + 32]
                s = s + 32
                continue 
            if ceil32(_498) <= _498:
                _705 = mem[_374]
                s = 0
                while s < _705:
                    mem[s + _376 + _378 + _498 + 32] = mem[s + _374 + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _891 = mem[64]
                    mem[mem[64]] = _705 + _376 + _378 + _498 - mem[64]
                    mem[64] = _705 + _376 + _378 + _498 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _891
                    u = _359
                    continue 
                mem[_705 + _376 + _378 + _498 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _705 + _376 + _378 + _498 - mem[64]
                mem[64] = _705 + _376 + _378 + _498 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _892
                u = _359
                continue 
            mem[_498 + _376 + _378 + 32] = 0
            _706 = mem[_374]
            s = 0
            while s < _706:
                mem[s + _376 + _378 + _498 + 32] = mem[s + _374 + 32]
                s = s + 32
                continue 
            if ceil32(_706) <= _706:
                _893 = mem[64]
                mem[mem[64]] = _706 + _376 + _378 + _498 - mem[64]
                mem[64] = _706 + _376 + _378 + _498 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _893
                u = _359
                continue 
            mem[_706 + _376 + _378 + _498 + 32] = 0
            _894 = mem[64]
            mem[mem[64]] = _706 + _376 + _378 + _498 - mem[64]
            mem[64] = _706 + _376 + _378 + _498 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _894
            u = _359
            continue 
        u = 0
        t = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 64]
        while t:
            if u == -1:
                revert with 0, 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _494 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _360
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_494]:
                    revert with 0, 50
                mem[v + _494 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _693 = mem[64]
            _701 = mem[s]
            t = 0
            while t < _701:
                mem[t + _693 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_701) <= _701:
                _875 = mem[_215]
                s = 0
                while s < _875:
                    mem[s + _693 + _701 + 32] = mem[s + _215 + 32]
                    s = s + 32
                    continue 
                if ceil32(_875) <= _875:
                    _999 = mem[_494]
                    s = 0
                    while s < _999:
                        mem[s + _693 + _701 + _875 + 32] = mem[s + _494 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_999) <= _999:
                        _1087 = mem[64]
                        mem[mem[64]] = _999 + _693 + _701 + _875 - mem[64]
                        mem[64] = _999 + _693 + _701 + _875 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1087
                        u = _359
                        continue 
                    mem[_999 + _693 + _701 + _875 + 32] = 0
                    _1088 = mem[64]
                    mem[mem[64]] = _999 + _693 + _701 + _875 - mem[64]
                    mem[64] = _999 + _693 + _701 + _875 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1088
                    u = _359
                    continue 
                mem[_875 + _693 + _701 + 32] = 0
                _1000 = mem[_494]
                s = 0
                while s < _1000:
                    mem[s + _693 + _701 + _875 + 32] = mem[s + _494 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1000) <= _1000:
                    _1089 = mem[64]
                    mem[mem[64]] = _1000 + _693 + _701 + _875 - mem[64]
                    mem[64] = _1000 + _693 + _701 + _875 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1089
                    u = _359
                    continue 
                mem[_1000 + _693 + _701 + _875 + 32] = 0
                _1090 = mem[64]
                mem[mem[64]] = _1000 + _693 + _701 + _875 - mem[64]
                mem[64] = _1000 + _693 + _701 + _875 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1090
                u = _359
                continue 
            mem[_701 + _693 + 32] = 0
            _876 = mem[_215]
            s = 0
            while s < _876:
                mem[s + _693 + _701 + 32] = mem[s + _215 + 32]
                s = s + 32
                continue 
            if ceil32(_876) <= _876:
                _1001 = mem[_494]
                s = 0
                while s < _1001:
                    mem[s + _693 + _701 + _876 + 32] = mem[s + _494 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1001) <= _1001:
                    _1091 = mem[64]
                    mem[mem[64]] = _1001 + _693 + _701 + _876 - mem[64]
                    mem[64] = _1001 + _693 + _701 + _876 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1091
                    u = _359
                    continue 
                mem[_1001 + _693 + _701 + _876 + 32] = 0
                _1092 = mem[64]
                mem[mem[64]] = _1001 + _693 + _701 + _876 - mem[64]
                mem[64] = _1001 + _693 + _701 + _876 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1092
                u = _359
                continue 
            mem[_876 + _693 + _701 + 32] = 0
            _1002 = mem[_494]
            s = 0
            while s < _1002:
                mem[s + _693 + _701 + _876 + 32] = mem[s + _494 + 32]
                s = s + 32
                continue 
            if ceil32(_1002) <= _1002:
                _1093 = mem[64]
                mem[mem[64]] = _1002 + _693 + _701 + _876 - mem[64]
                mem[64] = _1002 + _693 + _701 + _876 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1093
                u = _359
                continue 
            mem[_1002 + _693 + _701 + _876 + 32] = 0
            _1094 = mem[64]
            mem[mem[64]] = _1002 + _693 + _701 + _876 - mem[64]
            mem[64] = _1002 + _693 + _701 + _876 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1094
            u = _359
            continue 
        mem[_494 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _360
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_494]:
                revert with 0, 50
            mem[v + _494 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _694 = mem[64]
        _702 = mem[s]
        t = 0
        while t < _702:
            mem[t + _694 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_702) <= _702:
            _877 = mem[_215]
            s = 0
            while s < _877:
                mem[s + _694 + _702 + 32] = mem[s + _215 + 32]
                s = s + 32
                continue 
            if ceil32(_877) <= _877:
                _1003 = mem[_494]
                idx = 0
                while idx < _1003:
                    mem[idx + _694 + _702 + _877 + 32] = mem[idx + _494 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1003) <= _1003:
                    _1095 = mem[64]
                    mem[mem[64]] = _1003 + _694 + _702 + _877 - mem[64]
                    mem[64] = _1003 + _694 + _702 + _877 + 32
                    if ceil32(_877) == -1:
                        revert with 0, 17
                    s = ceil32(_877) + 1
                    s = _1095
                    u = _359
                    continue 
                mem[_1003 + _694 + _702 + _877 + 32] = 0
                _1096 = mem[64]
                mem[mem[64]] = _1003 + _694 + _702 + _877 - mem[64]
                mem[64] = _1003 + _694 + _702 + _877 + 32
                if ceil32(_877) == -1:
                    revert with 0, 17
                s = ceil32(_877) + 1
                s = _1096
                u = _359
                continue 
            mem[_877 + _694 + _702 + 32] = 0
            _1004 = mem[_494]
            idx = 0
            while idx < _1004:
                mem[idx + _694 + _702 + _877 + 32] = mem[idx + _494 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1004) <= _1004:
                _1097 = mem[64]
                mem[mem[64]] = _1004 + _694 + _702 + _877 - mem[64]
                mem[64] = _1004 + _694 + _702 + _877 + 32
                if ceil32(_877) == -1:
                    revert with 0, 17
                s = ceil32(_877) + 1
                s = _1097
                u = _359
                continue 
            mem[_1004 + _694 + _702 + _877 + 32] = 0
            _1098 = mem[64]
            mem[mem[64]] = _1004 + _694 + _702 + _877 - mem[64]
            mem[64] = _1004 + _694 + _702 + _877 + 32
            if ceil32(_877) == -1:
                revert with 0, 17
            s = ceil32(_877) + 1
            s = _1098
            u = _359
            continue 
        mem[_702 + _694 + 32] = 0
        _878 = mem[_215]
        s = 0
        while s < _878:
            mem[s + _694 + _702 + 32] = mem[s + _215 + 32]
            s = s + 32
            continue 
        if ceil32(_878) <= _878:
            _1005 = mem[_494]
            idx = 0
            while idx < _1005:
                mem[idx + _694 + _702 + _878 + 32] = mem[idx + _494 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1005) <= _1005:
                _1099 = mem[64]
                mem[mem[64]] = _1005 + _694 + _702 + _878 - mem[64]
                mem[64] = _1005 + _694 + _702 + _878 + 32
                if ceil32(_878) == -1:
                    revert with 0, 17
                s = ceil32(_878) + 1
                s = _1099
                u = _359
                continue 
            mem[_1005 + _694 + _702 + _878 + 32] = 0
            _1100 = mem[64]
            mem[mem[64]] = _1005 + _694 + _702 + _878 - mem[64]
            mem[64] = _1005 + _694 + _702 + _878 + 32
            if ceil32(_878) == -1:
                revert with 0, 17
            s = ceil32(_878) + 1
            s = _1100
            u = _359
            continue 
        mem[_878 + _694 + _702 + 32] = 0
        _1006 = mem[_494]
        idx = 0
        while idx < _1006:
            mem[idx + _694 + _702 + _878 + 32] = mem[idx + _494 + 32]
            idx = idx + 32
            continue 
        if ceil32(_1006) <= _1006:
            _1101 = mem[64]
            mem[mem[64]] = _1006 + _694 + _702 + _878 - mem[64]
            mem[64] = _1006 + _694 + _702 + _878 + 32
            if ceil32(_878) == -1:
                revert with 0, 17
            s = ceil32(_878) + 1
            s = _1101
            u = _359
            continue 
        mem[_1006 + _694 + _702 + _878 + 32] = 0
        _1102 = mem[64]
        mem[mem[64]] = _1006 + _694 + _702 + _878 - mem[64]
        mem[64] = _1006 + _694 + _702 + _878 + 32
        if ceil32(_878) == -1:
            revert with 0, 17
        s = ceil32(_878) + 1
        s = _1102
        u = _359
        continue 
    _364 = mem[64]
    mem[mem[64]] = 32
    _373 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_373)] = mem[s + 32 len ceil32(_373)]
    if ceil32(_373) <= _373:
        return 32, mem[mem[64] + 32 len ceil32(_373) + 32]
    mem[_373 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_373) + _364 + -mem[64] + 64
}

function cashoutAll() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CASHOUT: zero address cannot cash out rewards'
    if stor41[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CASHOUT: Blacklisted address cannot cash out rewards'
    if sub_47b29845Address == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CASHOUT: future and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CASHOUT: future and rewardsPool cannot cashout rewards'
    mem[100] = 6
    mem[132] = msg.sender
    require ext_code.size(0xedf71e25770b45f579334be405a8db11d7642cb4)
    delegate 0xedf71e25770b45f579334be405a8db11d7642cb4.0x732a2ccf with:
         gas gas_remaining wei
        args 6, msg.sender
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    idx = 0
    s = 0
    while idx < stor10[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 10)
        if s > !stor10[address(msg.sender)][idx].field_768:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor10[address(msg.sender)][idx].field_768
        continue 
    if s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 <= 0:
        revert with 0, 'CASHOUT: You don't have enough reward to cash out'
    if not uint8(stor39):
        if not distributionPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor28] < s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor28] += -1 * s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0
        if balanceOf[msg.sender] > !(s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0):
            revert with 0, 17
        balanceOf[msg.sender] += s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0
        emit Transfer((s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0), distributionPoolAddress, msg.sender);
    else:
        if not cashoutFee:
            if s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 < 0:
                revert with 0, 17
            if not distributionPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor28] < s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor28] += -1 * s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0
            if balanceOf[msg.sender] > !(s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0):
                revert with 0, 17
            balanceOf[msg.sender] += s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0
            emit Transfer((s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0), distributionPoolAddress, msg.sender);
        else:
            if s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 and cashoutFee > -1 / s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0:
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
            allowance[address(this.address)][stor29] = s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * cashoutFee / 100
            mem[(2 * ceil32(return_data.size)) + 192] = s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * cashoutFee / 100
            emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, dexRouterAddress);
            mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * cashoutFee / 100
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            t = (2 * ceil32(return_data.size)) + 388
            u = ceil32(return_data.size) + 128
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[t] = mem[u + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(dexRouterAddress)
            call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call sub_47b29845Address with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 < s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * cashoutFee / 100:
                revert with 0, 17
            if not distributionPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor28] < (s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0) - (s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * cashoutFee / 100):
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor28] = balanceOf[stor28] - (s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0) + (s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * cashoutFee / 100)
            if balanceOf[msg.sender] > !((s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0) - (s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * cashoutFee / 100)):
                revert with 0, 17
            balanceOf[msg.sender] = balanceOf[msg.sender] + (s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0) - (s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * cashoutFee / 100)
            emit Transfer(((s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0) - (s * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * stor10[address(msg.sender)].field_0 * cashoutFee / 100)), distributionPoolAddress, msg.sender);
    if not stor10[address(msg.sender)].field_0:
        revert with 0, 'NODE: CREATIME must be higher than zero'
    idx = 0
    s = 0
    t = 0
    while idx < stor10[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 10)
        if s > !stor10[address(msg.sender)][idx].field_768:
            revert with 0, 17
        stor10[address(msg.sender)][idx].field_768 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor10[address(msg.sender)][idx].field_768
        t = (5 * idx) + sha3(sha3(address(msg.sender), 10))
        continue 
}



}
