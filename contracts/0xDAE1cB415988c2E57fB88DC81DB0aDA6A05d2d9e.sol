contract main {




// =====================  Runtime code  =====================


#
#  - getNodesRewards()
#  - _getNodeRewardAmountOf(address arg1, uint256 arg2)
#  - cashoutReward(uint256 arg1)
#  - _fallback()
#
address owner;
array of uint256 stor1;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
address stor8;
array of uint256 stor10;
uint256 stor11;
uint8 stor12;
uint256 stor13;
address dexRouterAddress;
address lpPairAddress;
array of struct nodeNumberOf;
array of struct distributions;
array of address stor18;
uint256 nodePrice;
uint256 rewardPerNode;
uint256 claimTime;
uint8 autoDistri;
uint8 distribution; offset 8
uint256 lastDistributionCount;
uint256 totalNodesCreated;
uint256 totalRewardStaked;
mapping of uint8 stor26;
mapping of uint8 stor27;
address _routerAddress;
uint256 stor29;
uint8 stor30;
uint8 stor30; offset 8
uint256 stor30; offset 8
uint256 swapTokensAmount;
address sub_47b29845Address;
address distributionPoolAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 sub_600b02d4;
uint256 totalFees;
uint256 cashoutFee;
uint256 sub_054a2430;
array of uint256 stor22581645139872629890233439717971975110198959689450188087151966948260709403753;

function sub_054a2430(?) {
    return sub_054a2430
}

function dexRouter() {
    return dexRouterAddress
}

function totalFees() {
    return totalFees
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor26[arg1])
}

function claimTime() {
    return claimTime
}

function rewardsFee() {
    return rewardsFee
}

function totalShares() {
    return stor1.length
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function distributions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < distributions.length
    return distributions[arg1].field_0, distributions[arg1].field_256
}

function _getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nodeNumberOf[address(arg1)].field_0
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

function getTotalNodesCreated() {
    return totalNodesCreated
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
    return bool(stor27[arg1])
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

function _routerAddress() {
    return _routerAddress
}

function getDistriCount() {
    return lastDistributionCount
}

function getRewardPerNode() {
    return rewardPerNode
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

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nodeNumberOf[address(arg1)].field_0
}

function getAutoDistri() {
    return bool(autoDistri)
}

function lastDistributionCount() {
    return lastDistributionCount
}

function sub_fe909cf3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_61ddd043(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_054a2430 = arg1
}

function sub_3fd52f92(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0 >= stor10.length:
        revert with 0, 50
    else:
        return 0
}

function changeBonusRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
}

function updateRwSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29 = arg1
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

function sub_484e45a0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = address(arg1)
}

function sub_98c4b668(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = uint8(bool(arg1))
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
    Mask(248, 0, stor30.field_8) = Mask(248, 0, arg1)
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26[address(arg1)] = uint8(arg2)
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

function distributeRewards() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if distributions.length < 1:
        revert with 0, 17
    if distributions.length - 1 >= distributions.length:
        revert with 0, 50
    if distributions[distributions.length - 1].field_0 > !claimTime:
        revert with 0, 17
    if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
        distribution = 1
        if not stor18.length:
            revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
        distributions.length++
        distributions[distributions.length].field_0 = block.timestamp
        stor31EC[stor17.length] = rewardPerNode
        if lastDistributionCount == -1:
            revert with 0, 17
        lastDistributionCount++
        distribution = 0
        emit 0xc2d3e44e: block.timestamp, rewardPerNode
}

function sub_eca80dae(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            stor10[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
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

function setJoeV2RouterAndCreatePair() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(_routerAddress)
    staticcall _routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(_routerAddress)
    staticcall _routerAddress.0x73b295c2 with:
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
    dexRouterAddress = _routerAddress
    if 1 == bool(stor27[ext_call.return_data[12 len 20]]):
        revert with 0, 'TKN: Automated market maker pair is already set to that value'
    stor27[address(ext_call.return_data[0])] = 1
    emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
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
    if not stor1.length:
        revert with 0, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / stor1.length < released[address(arg1)]:
        revert with 0, 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / stor1.length) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / stor1.length) - released[address(arg1)]):
        revert with 0, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / stor1.length
    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / stor1.length) - released[address(arg1)]):
        revert with 0, 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / stor1.length) - released[address(arg1)]
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / stor1.length) - released[address(arg1)]:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / stor1.length) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / stor1.length) - released[address(arg1)]);
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
    if not stor1.length:
        revert with 0, 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length < released[address(arg1)][address(arg2)]:
        revert with 0, 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)]:
        revert with 0, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length
    if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)], 0) << 288)
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
    emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / stor1.length) - released[address(arg1)][address(arg2)], arg1);
}

function getNodesNames() payable {
    mem[64] = 96
    require not msg.value
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    idx = 0
    while idx < stor18.length:
        mem[0] = 18
        if stor18[idx] != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor18.length:
            mem[0] = 18
            if stor18[idx] != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[0] = msg.sender
            mem[32] = 16
            mem[64] = (32 * nodeNumberOf[address(msg.sender)].field_0) + 128
            mem[96] = nodeNumberOf[address(msg.sender)].field_0
            s = 128
            idx = 0
            while idx < nodeNumberOf[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 16)
                _167 = mem[64]
                mem[64] = mem[64] + 96
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _175 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) + 32
                    mem[_175] = uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                        if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, nodeNumberOf[address(msg.sender)][idx].field_0):
                            if 31 >= uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                                mem[_175 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                            else:
                                mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                mem[_175 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                                t = _175 + 32
                                u = sha3(mem[0])
                                while _175 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_167] = _175
                        mem[_167 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_167 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _167
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                        mem[_167] = _175
                        mem[_167 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_167 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _167
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                        mem[_175 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                        mem[_167] = _175
                        mem[_167 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_167 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _167
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                    mem[_175 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                    t = _175 + 32
                    u = sha3(mem[0])
                    while _175 + nodeNumberOf[address(msg.sender)][u].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_167] = _175
                    mem[_167 + 32] = nodeNumberOf[address(msg.sender)][u].field_256
                    mem[_167 + 64] = nodeNumberOf[address(msg.sender)][u].field_512
                    mem[t] = _167
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                _177 = mem[64]
                mem[64] = mem[64] + ceil32(nodeNumberOf[address(msg.sender)][idx].field_1 % 128) + 32
                mem[_177] = nodeNumberOf[address(msg.sender)][idx].field_1 % 128
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, nodeNumberOf[address(msg.sender)][idx].field_0):
                        mem[_167] = _177
                        mem[_167 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_167 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _167
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                        mem[_177 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                        mem[_167] = _177
                        mem[_167 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_167 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _167
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                    mem[_177 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                    t = _177 + 32
                    u = sha3(mem[0])
                    while _177 + (uint255(nodeNumberOf[address(msg.sender)][u].field_0) * 0.5) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_167] = _177
                    mem[_167 + 32] = nodeNumberOf[address(msg.sender)][u].field_256
                    mem[_167 + 64] = nodeNumberOf[address(msg.sender)][u].field_512
                    mem[t] = _167
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                    if 31 >= nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                        mem[_177 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                    else:
                        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                        mem[_177 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                        t = _177 + 32
                        u = sha3(mem[0])
                        while _177 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_167] = _177
                mem[_167 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                mem[_167 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                mem[s] = _167
                s = s + 32
                idx = idx + 1
                continue 
            _165 = mem[96]
            if not mem[96]:
                revert with 0, 'GET NAMES: OWNER DOES NOT OWN NODES'
            _168 = mem[64]
            mem[64] = mem[64] + 96
            mem[_168] = 96
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if 0 >= mem[96]:
                revert with 0, 50
            _173 = mem[mem[128]]
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 1
            mem[_174 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            idx = 1
            t = _173
            u = _168
            while idx < _165:
                if idx >= mem[96]:
                    revert with 0, 50
                _213 = mem[(32 * idx) + 128]
                _214 = mem[mem[(32 * idx) + 128]]
                _215 = mem[64]
                _217 = mem[t]
                s = 0
                while s < _217:
                    mem[s + _215 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_217) <= _217:
                    _245 = mem[_174]
                    s = 0
                    while s < _245:
                        mem[s + _215 + _217 + 32] = mem[s + _174 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_245) <= _245:
                        _269 = mem[_214]
                        s = 0
                        while s < _269:
                            mem[s + _215 + _217 + _245 + 32] = mem[s + _214 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_269) <= _269:
                            _289 = mem[64]
                            mem[mem[64]] = _269 + _215 + _217 + _245 - mem[64]
                            mem[64] = _269 + _215 + _217 + _245 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _289
                            u = _213
                            continue 
                        mem[_269 + _215 + _217 + _245 + 32] = 0
                        _290 = mem[64]
                        mem[mem[64]] = _269 + _215 + _217 + _245 - mem[64]
                        mem[64] = _269 + _215 + _217 + _245 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _290
                        u = _213
                        continue 
                    mem[_245 + _215 + _217 + 32] = 0
                    _270 = mem[_214]
                    s = 0
                    while s < _270:
                        mem[s + _215 + _217 + _245 + 32] = mem[s + _214 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_270) <= _270:
                        _291 = mem[64]
                        mem[mem[64]] = _270 + _215 + _217 + _245 - mem[64]
                        mem[64] = _270 + _215 + _217 + _245 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _291
                        u = _213
                        continue 
                    mem[_270 + _215 + _217 + _245 + 32] = 0
                    _292 = mem[64]
                    mem[mem[64]] = _270 + _215 + _217 + _245 - mem[64]
                    mem[64] = _270 + _215 + _217 + _245 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _292
                    u = _213
                    continue 
                mem[_217 + _215 + 32] = 0
                _246 = mem[_174]
                s = 0
                while s < _246:
                    mem[s + _215 + _217 + 32] = mem[s + _174 + 32]
                    s = s + 32
                    continue 
                if ceil32(_246) <= _246:
                    _271 = mem[_214]
                    s = 0
                    while s < _271:
                        mem[s + _215 + _217 + _246 + 32] = mem[s + _214 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_271) <= _271:
                        _293 = mem[64]
                        mem[mem[64]] = _271 + _215 + _217 + _246 - mem[64]
                        mem[64] = _271 + _215 + _217 + _246 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _293
                        u = _213
                        continue 
                    mem[_271 + _215 + _217 + _246 + 32] = 0
                    _294 = mem[64]
                    mem[mem[64]] = _271 + _215 + _217 + _246 - mem[64]
                    mem[64] = _271 + _215 + _217 + _246 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _294
                    u = _213
                    continue 
                mem[_246 + _215 + _217 + 32] = 0
                _272 = mem[_214]
                s = 0
                while s < _272:
                    mem[s + _215 + _217 + _246 + 32] = mem[s + _214 + 32]
                    s = s + 32
                    continue 
                if ceil32(_272) <= _272:
                    _295 = mem[64]
                    mem[mem[64]] = _272 + _215 + _217 + _246 - mem[64]
                    mem[64] = _272 + _215 + _217 + _246 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _295
                    u = _213
                    continue 
                mem[_272 + _215 + _217 + _246 + 32] = 0
                _296 = mem[64]
                mem[mem[64]] = _272 + _215 + _217 + _246 - mem[64]
                mem[64] = _272 + _215 + _217 + _246 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _296
                u = _213
                continue 
            _216 = mem[64]
            mem[mem[64]] = 32
            _218 = mem[t]
            mem[mem[64] + 32] = mem[t]
            idx = 0
            while idx < _218:
                mem[idx + _216 + 64] = mem[idx + t + 32]
                idx = idx + 32
                continue 
            if ceil32(_218) > _218:
                mem[_218 + _216 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_218) + _216 + -mem[64] + 64
        revert with 0, 'GET NAMES: NO NODE OWNER'
    revert with 0, 'NO NODE OWNER'
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
    mem[64] = ceil32(ceil32(arg2.length)) + 97
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length <= 3:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if arg2.length >= 32:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if not address(arg1):
        revert with 0, 'NODE CREATION:  creation from the zero address'
    if stor26[address(arg1)]:
        revert with 0, 'NODE CREATION: Blacklisted address'
    if sub_47b29845Address == address(arg1):
        revert with 0, 'NODE CREATION: futureUsePool and distributionPool cannot create node'
    if distributionPoolAddress == address(arg1):
        revert with 0, 'NODE CREATION: futureUsePool and distributionPool cannot create node'
    mem[0] = address(arg1)
    mem[32] = 16
    idx = 0
    while idx < nodeNumberOf[address(arg1)].field_0:
        _966 = sha3(mem[128 len mem[96]])
        mem[0] = sha3(address(arg1), 16)
        _968 = mem[64]
        if bool(nodeNumberOf[address(arg1)][idx].field_0):
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not bool(nodeNumberOf[address(arg1)][idx].field_0):
                mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(arg1)][idx].field_0)
                if sha3(mem[mem[64] len uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5]) == _966:
                    revert with 0, 'CREATE NODE: Name not available'
            else:
                if bool(nodeNumberOf[address(arg1)][idx].field_0) != 1:
                    if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                        revert with 0, 'CREATE NODE: Name not available'
                else:
                    mem[0] = (3 * idx) + sha3(sha3(address(arg1), 16))
                    s = 0
                    t = sha3(mem[0])
                    while s < uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                        mem[s + _968] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    if sha3(mem[mem[64] len _968 + (uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5) - mem[64]]) == _966:
                        revert with 0, 'CREATE NODE: Name not available'
        else:
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not bool(nodeNumberOf[address(arg1)][idx].field_0):
                mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(arg1)][idx].field_0)
                if sha3(mem[mem[64] len nodeNumberOf[address(arg1)][idx].field_1 % 128]) == _966:
                    revert with 0, 'CREATE NODE: Name not available'
            else:
                if bool(nodeNumberOf[address(arg1)][idx].field_0) != 1:
                    if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                        revert with 0, 'CREATE NODE: Name not available'
                else:
                    mem[0] = (3 * idx) + sha3(sha3(address(arg1), 16))
                    s = 0
                    t = sha3(mem[0])
                    while s < nodeNumberOf[address(arg1)][idx].field_1 % 128:
                        mem[s + _968] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    if sha3(mem[mem[64] len _968 + nodeNumberOf[address(arg1)][idx].field_1 % 128 - mem[64]]) == _966:
                        revert with 0, 'CREATE NODE: Name not available'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor18.length > test266151307():
        revert with 0, 65
    _969 = mem[64]
    mem[mem[64]] = stor18.length
    mem[64] = mem[64] + (32 * stor18.length) + 32
    if not stor18.length:
        s = 0
        while s < mem[_969]:
            if s >= mem[_969]:
                revert with 0, 50
            if mem[(32 * s) + _969 + 44 len 20] != address(arg1):
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            stor18.length++
            stor18[stor18.length] = address(arg1)
            mem[_969 + (32 * stor18.length) + 32] = 96
            mem[_969 + (32 * stor18.length) + 64] = block.timestamp
            mem[_969 + (32 * stor18.length) + 96] = block.timestamp
            nodeNumberOf[address(arg1)].field_0++
            if bool(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0):
                if bool(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) == uint255(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not mem[96]:
                    nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0 = 0
                    idx = sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0))
                    while sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0)) + ((uint255(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0 = (2 * mem[96]) + 1
                    s = sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0))
                    idx = 128
                    while mem[96] + 128 > idx:
                        stor[s] = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0)) + ((uint255(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) == nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_1 % 128 < 32:
                    revert with 0, 34
                if not mem[96]:
                    nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0 = 0
                    idx = sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0))
                    while sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0)) + (nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_1 % 128 + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0 = (2 * mem[96]) + 1
                    s = sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0))
                    idx = 128
                    while mem[96] + 128 > idx:
                        stor[s] = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0)) + (nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_1 % 128 + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_256 = block.timestamp
            nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_512 = block.timestamp
            idx = 0
            while idx < mem[96]:
                mem[idx + _969 + (32 * stor18.length) + 128] = mem[idx + 128]
                idx = idx + 32
                continue 
            if ceil32(mem[96]) > mem[96]:
                mem[mem[96] + _969 + (32 * stor18.length) + 128] = 0
            emit 0x49392756: block.timestamp, block.timestamp, address(arg1), sha3(mem[_969 + (32 * stor18.length) + 128 len mem[96]])
            if totalNodesCreated == -1:
                revert with 0, 17
            totalNodesCreated++
            if autoDistri:
                if not distribution:
                    if distributions.length < 1:
                        revert with 0, 17
                    if distributions.length - 1 >= distributions.length:
                        revert with 0, 50
                    if distributions[distributions.length - 1].field_0 > !claimTime:
                        revert with 0, 17
                    if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                        distribution = 1
                        if not stor18.length:
                            revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                        distributions.length++
                        distributions[distributions.length].field_0 = block.timestamp
                        stor31EC[stor17.length] = rewardPerNode
                        if lastDistributionCount == -1:
                            revert with 0, 17
                        lastDistributionCount++
                        distribution = 0
                        emit 0xc2d3e44e: block.timestamp, rewardPerNode
    else:
        mem[_969 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
        idx = 0
        while idx < mem[_969]:
            if idx >= mem[_969]:
                revert with 0, 50
            if mem[(32 * idx) + _969 + 44 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            stor18.length++
            stor18[stor18.length] = address(arg1)
            mem[_969 + (32 * stor18.length) + 32] = 96
            mem[_969 + (32 * stor18.length) + 64] = block.timestamp
            mem[_969 + (32 * stor18.length) + 96] = block.timestamp
            nodeNumberOf[address(arg1)].field_0++
            if bool(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0):
                if bool(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) == uint255(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not mem[96]:
                    nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0 = 0
                    idx = sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0))
                    while sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0)) + ((uint255(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0 = (2 * mem[96]) + 1
                    s = sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0))
                    idx = 128
                    while mem[96] + 128 > idx:
                        stor[s] = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0)) + ((uint255(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) == nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_1 % 128 < 32:
                    revert with 0, 34
                if not mem[96]:
                    nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0 = 0
                    idx = sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0))
                    while sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0)) + (nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_1 % 128 + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0 = (2 * mem[96]) + 1
                    s = sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0))
                    idx = 128
                    while mem[96] + 128 > idx:
                        stor[s] = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3(sha3(sha3(address(arg1), 16)) + (3 * nodeNumberOf[address(arg1)].field_0)) + (nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_1 % 128 + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_256 = block.timestamp
            nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_512 = block.timestamp
            idx = 0
            while idx < mem[96]:
                mem[idx + _969 + (32 * stor18.length) + 128] = mem[idx + 128]
                idx = idx + 32
                continue 
            if ceil32(mem[96]) > mem[96]:
                mem[mem[96] + _969 + (32 * stor18.length) + 128] = 0
            emit 0x49392756: block.timestamp, block.timestamp, address(arg1), sha3(mem[_969 + (32 * stor18.length) + 128 len mem[96]])
            if totalNodesCreated == -1:
                revert with 0, 17
            totalNodesCreated++
            if autoDistri:
                if not distribution:
                    if distributions.length < 1:
                        revert with 0, 17
                    if distributions.length - 1 >= distributions.length:
                        revert with 0, 50
                    if distributions[distributions.length - 1].field_0 > !claimTime:
                        revert with 0, 17
                    if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                        distribution = 1
                        if not stor18.length:
                            revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                        distributions.length++
                        distributions[distributions.length].field_0 = block.timestamp
                        stor31EC[stor17.length] = rewardPerNode
                        if lastDistributionCount == -1:
                            revert with 0, 17
                        lastDistributionCount++
                        distribution = 0
                        emit 0xc2d3e44e: block.timestamp, rewardPerNode
    mem[_969 + (32 * stor18.length) + 32] = 96
    mem[_969 + (32 * stor18.length) + 64] = block.timestamp
    mem[_969 + (32 * stor18.length) + 96] = block.timestamp
    nodeNumberOf[address(arg1)].field_0++
    if bool(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0):
        if bool(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) == uint255(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) * 0.5 < 32:
            revert with 0, 34
        if mem[96]:
            nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0 = 0
            idx = 0
            while (uint255(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                nodeNumberOf[address(arg1)][(3 * nodeNumberOf[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0) == nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_1 % 128 < 32:
            revert with 0, 34
        if mem[96]:
            nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_0 = 0
            idx = 0
            while nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_1 % 128 + 31 / 32 > idx:
                nodeNumberOf[address(arg1)][(3 * nodeNumberOf[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_256 = block.timestamp
    nodeNumberOf[address(arg1)][nodeNumberOf[address(arg1)].field_0].field_512 = block.timestamp
    mem[_969 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + _969 + (32 * stor18.length) + 128] = 0
    emit 0x49392756: block.timestamp, block.timestamp, address(arg1), sha3(mem[_969 + (32 * stor18.length) + 128 len mem[96]])
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
    if autoDistri:
        if not distribution:
            if distributions.length < 1:
                revert with 0, 17
            if distributions.length - 1 >= distributions.length:
                revert with 0, 50
            if distributions[distributions.length - 1].field_0 > !claimTime:
                revert with 0, 17
            if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                distribution = 1
                if not stor18.length:
                    revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                distributions.length++
                distributions[distributions.length].field_0 = block.timestamp
                stor31EC[stor17.length] = rewardPerNode
                if lastDistributionCount == -1:
                    revert with 0, 17
                lastDistributionCount++
                distribution = 0
                emit 0xc2d3e44e: block.timestamp, rewardPerNode
}

function getRewardAmountOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor18.length:
        mem[0] = 18
        if stor18[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = arg1
        if not nodeNumberOf[address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CASHOUT ERROR: You don't have nodes to cash-out'
        idx = 0
        s = 0
        while idx < nodeNumberOf[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 16)
            _106 = mem[64]
            mem[64] = mem[64] + 96
            if bool(nodeNumberOf[address(arg1)][idx].field_0):
                if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _109 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5) + 32
                mem[_109] = uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5
                if bool(nodeNumberOf[address(arg1)][idx].field_0):
                    if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, nodeNumberOf[address(arg1)][idx].field_0):
                        mem[_106] = _109
                        mem[_106 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                        mem[_106 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                        if distributions.length < 1:
                            revert with 0, 17
                        if var48001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var50001].field_0 <= nodeNumberOf[address(arg1)][idx].field_512:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var50006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(arg1), 16))
                            continue 
                        if var52001 >= distributions.length:
                            revert with 0, 50
                        if var56001 > !var56002:
                            revert with 0, 17
                        if not var64001:
                            revert with 0, 17
                        if var70001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var72001].field_0 > nodeNumberOf[address(arg1)][idx].field_512:
                            if var74001 >= distributions.length:
                                revert with 0, 50
                            if var78001 > !var78002:
                                revert with 0, 17
                            # nil
                        else:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var72006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(arg1), 16))
                            continue 
                    else:
                        if 31 >= uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                            mem[_109 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                            mem[_106] = _109
                            mem[_106 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                            mem[_106 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var50001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var52001].field_0 <= nodeNumberOf[address(arg1)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var52006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                            if var54001 >= distributions.length:
                                revert with 0, 50
                            if var58001 > !var58002:
                                revert with 0, 17
                            if not var66001:
                                revert with 0, 17
                            if var72001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var74001].field_0 > nodeNumberOf[address(arg1)][idx].field_512:
                                if var76001 >= distributions.length:
                                    revert with 0, 50
                                if var80001 > !var80002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var74006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                        else:
                            mem[0] = (3 * idx) + sha3(sha3(address(arg1), 16))
                            mem[_109 + 32] = nodeNumberOf[address(arg1)][idx].field_0
                            s = _109 + 32
                            t = sha3(mem[0])
                            while _109 + (uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_106] = _109
                            mem[_106 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                            mem[_106 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var53001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var55001].field_0 <= nodeNumberOf[address(arg1)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var55006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                            if idx >= distributions.length:
                                revert with 0, 50
                            if var61001 > !var61002:
                                revert with 0, 17
                            if not var69001:
                                revert with 0, 17
                            if var75001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var77001].field_0 > nodeNumberOf[address(arg1)][idx].field_512:
                                if var79001 >= distributions.length:
                                    revert with 0, 50
                                if var83001 > !var83002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var77006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                else:
                    if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not nodeNumberOf[address(arg1)][idx].field_1 % 128:
                        mem[_106] = _109
                        mem[_106 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                        mem[_106 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                        if distributions.length < 1:
                            revert with 0, 17
                        if var49001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var51001].field_0 <= nodeNumberOf[address(arg1)][idx].field_512:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var51006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(arg1), 16))
                            continue 
                        if var53001 >= distributions.length:
                            revert with 0, 50
                        if idx > !var57002:
                            revert with 0, 17
                        if not var65001:
                            revert with 0, 17
                        if var71001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var73001].field_0 > nodeNumberOf[address(arg1)][idx].field_512:
                            if var75001 >= distributions.length:
                                revert with 0, 50
                            if var79001 > !var79002:
                                revert with 0, 17
                            # nil
                        else:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var73006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(arg1), 16))
                            continue 
                    else:
                        if 31 >= nodeNumberOf[address(arg1)][idx].field_1 % 128:
                            mem[_109 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                            mem[_106] = _109
                            mem[_106 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                            mem[_106 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var51001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var53001].field_0 <= nodeNumberOf[address(arg1)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var53006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                            if var55001 >= distributions.length:
                                revert with 0, 50
                            if var59001 > !var59002:
                                revert with 0, 17
                            if not var67001:
                                revert with 0, 17
                            if var73001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var75001].field_0 > nodeNumberOf[address(arg1)][idx].field_512:
                                if var77001 >= distributions.length:
                                    revert with 0, 50
                                if var81001 > !var81002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var75006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                        else:
                            mem[0] = (3 * idx) + sha3(sha3(address(arg1), 16))
                            mem[_109 + 32] = nodeNumberOf[address(arg1)][idx].field_0
                            s = _109 + 32
                            t = sha3(mem[0])
                            while _109 + nodeNumberOf[address(arg1)][idx].field_1 % 128 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_106] = _109
                            mem[_106 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                            mem[_106 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var54001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var56001].field_0 <= nodeNumberOf[address(arg1)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var56006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                            if var58001 >= distributions.length:
                                revert with 0, 50
                            if var62001 > !var62002:
                                revert with 0, 17
                            if not var70001:
                                revert with 0, 17
                            if var76001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var78001].field_0 > nodeNumberOf[address(arg1)][idx].field_512:
                                if var80001 >= distributions.length:
                                    revert with 0, 50
                                if var84001 > !var84002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var78006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
            else:
                if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                _110 = mem[64]
                mem[64] = mem[64] + ceil32(nodeNumberOf[address(arg1)][idx].field_1 % 128) + 32
                mem[_110] = nodeNumberOf[address(arg1)][idx].field_1 % 128
                if bool(nodeNumberOf[address(arg1)][idx].field_0):
                    if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, nodeNumberOf[address(arg1)][idx].field_0):
                        mem[_106] = _110
                        mem[_106 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                        mem[_106 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                        if distributions.length < 1:
                            revert with 0, 17
                        if var49001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var51001].field_0 <= nodeNumberOf[address(arg1)][idx].field_512:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var51006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(arg1), 16))
                            continue 
                        if var53001 >= distributions.length:
                            revert with 0, 50
                        if idx > !var57002:
                            revert with 0, 17
                        if not var65001:
                            revert with 0, 17
                        if var71001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var73001].field_0 > nodeNumberOf[address(arg1)][idx].field_512:
                            if var75001 >= distributions.length:
                                revert with 0, 50
                            if var79001 > !var79002:
                                revert with 0, 17
                            # nil
                        else:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var73006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(arg1), 16))
                            continue 
                    else:
                        if 31 >= uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                            mem[_110 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                            mem[_106] = _110
                            mem[_106 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                            mem[_106 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var51001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var53001].field_0 <= nodeNumberOf[address(arg1)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var53006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                            if var55001 >= distributions.length:
                                revert with 0, 50
                            if var59001 > !var59002:
                                revert with 0, 17
                            if not var67001:
                                revert with 0, 17
                            if var73001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var75001].field_0 > nodeNumberOf[address(arg1)][idx].field_512:
                                if var77001 >= distributions.length:
                                    revert with 0, 50
                                if var81001 > !var81002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var75006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                        else:
                            mem[0] = (3 * idx) + sha3(sha3(address(arg1), 16))
                            mem[_110 + 32] = nodeNumberOf[address(arg1)][idx].field_0
                            s = _110 + 32
                            t = sha3(mem[0])
                            while _110 + (uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_106] = _110
                            mem[_106 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                            mem[_106 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var54001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var56001].field_0 <= nodeNumberOf[address(arg1)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var56006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                            if var58001 >= distributions.length:
                                revert with 0, 50
                            if var62001 > !var62002:
                                revert with 0, 17
                            if not var70001:
                                revert with 0, 17
                            if var76001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var78001].field_0 > nodeNumberOf[address(arg1)][idx].field_512:
                                if var80001 >= distributions.length:
                                    revert with 0, 50
                                if var84001 > !var84002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var78006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                else:
                    if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not nodeNumberOf[address(arg1)][idx].field_1 % 128:
                        mem[_106] = _110
                        mem[_106 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                        mem[_106 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                        if distributions.length < 1:
                            revert with 0, 17
                        if var50001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var52001].field_0 <= nodeNumberOf[address(arg1)][idx].field_512:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var52006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(arg1), 16))
                            continue 
                        if var54001 >= distributions.length:
                            revert with 0, 50
                        if var58001 > !var58002:
                            revert with 0, 17
                        if not var66001:
                            revert with 0, 17
                        if var72001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var74001].field_0 > nodeNumberOf[address(arg1)][idx].field_512:
                            if var76001 >= distributions.length:
                                revert with 0, 50
                            if var80001 > !var80002:
                                revert with 0, 17
                            # nil
                        else:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var74006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(arg1), 16))
                            continue 
                    else:
                        if 31 >= nodeNumberOf[address(arg1)][idx].field_1 % 128:
                            mem[_110 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                            mem[_106] = _110
                            mem[_106 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                            mem[_106 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var52001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var54001].field_0 <= nodeNumberOf[address(arg1)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var54006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                            if var56001 >= distributions.length:
                                revert with 0, 50
                            if var60001 > !var60002:
                                revert with 0, 17
                            if not var68001:
                                revert with 0, 17
                            if var74001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var76001].field_0 > nodeNumberOf[address(arg1)][idx].field_512:
                                if var78001 >= distributions.length:
                                    revert with 0, 50
                                if var82001 > !var82002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var76006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                        else:
                            mem[0] = (3 * idx) + sha3(sha3(address(arg1), 16))
                            mem[_110 + 32] = nodeNumberOf[address(arg1)][idx].field_0
                            s = _110 + 32
                            t = sha3(mem[0])
                            while _110 + nodeNumberOf[address(arg1)][idx].field_1 % 128 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_106] = _110
                            mem[_106 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                            mem[_106 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var55001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[idx].field_0 <= nodeNumberOf[address(arg1)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var57006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
                            if var59001 >= distributions.length:
                                revert with 0, 50
                            if var63001 > !var63002:
                                revert with 0, 17
                            if not var71001:
                                revert with 0, 17
                            if var77001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var79001].field_0 > nodeNumberOf[address(arg1)][idx].field_512:
                                if var81001 >= distributions.length:
                                    revert with 0, 50
                                if var85001 > !var85002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var79006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(arg1), 16))
                                continue 
        return 0
    revert with 0, 'GET REWARD OF: NO NODE OWNER'
}

function cashoutAll() payable {
    mem[64] = 96
    require not msg.value
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CASHOUT: zero address cannot cash out rewards'
    mem[0] = msg.sender
    if stor26[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CASHOUT: Blacklisted address cannot cash out rewards'
    if sub_47b29845Address == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CASHOUT: future and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CASHOUT: future and rewardsPool cannot cashout rewards'
    idx = 0
    while idx < stor18.length:
        mem[0] = 18
        if stor18[idx] != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        if not nodeNumberOf[address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CASHOUT ERROR: You don't have nodes to cash-out'
        idx = 0
        s = 0
        while idx < nodeNumberOf[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 16)
            _115 = mem[64]
            mem[64] = mem[64] + 96
            if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _118 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) + 32
                mem[_118] = uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, nodeNumberOf[address(msg.sender)][idx].field_0):
                        mem[_115] = _118
                        mem[_115 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_115 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        if distributions.length < 1:
                            revert with 0, 17
                        if var48001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var50001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var50006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            continue 
                        if var52001 >= distributions.length:
                            revert with 0, 50
                        if var56001 > !var56002:
                            revert with 0, 17
                        if not var64001:
                            revert with 0, 17
                        if var70001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var72001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                            if var74001 >= distributions.length:
                                revert with 0, 50
                            if var78001 > !var78002:
                                revert with 0, 17
                            # nil
                        else:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var72006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            continue 
                    else:
                        if 31 >= uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                            mem[_118 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                            mem[_115] = _118
                            mem[_115 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                            mem[_115 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var50001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var52001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var52006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                            if var54001 >= distributions.length:
                                revert with 0, 50
                            if var58001 > !var58002:
                                revert with 0, 17
                            if not var66001:
                                revert with 0, 17
                            if var72001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var74001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                if var76001 >= distributions.length:
                                    revert with 0, 50
                                if var80001 > !var80002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var74006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                        else:
                            mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            mem[_118 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                            s = _118 + 32
                            t = sha3(mem[0])
                            while _118 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_115] = _118
                            mem[_115 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                            mem[_115 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var53001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var55001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var55006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                            if idx >= distributions.length:
                                revert with 0, 50
                            if var61001 > !var61002:
                                revert with 0, 17
                            if not var69001:
                                revert with 0, 17
                            if var75001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var77001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                if var79001 >= distributions.length:
                                    revert with 0, 50
                                if var83001 > !var83002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var77006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                else:
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                        mem[_115] = _118
                        mem[_115 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_115 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        if distributions.length < 1:
                            revert with 0, 17
                        if var49001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var51001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var51006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            continue 
                        if var53001 >= distributions.length:
                            revert with 0, 50
                        if idx > !var57002:
                            revert with 0, 17
                        if not var65001:
                            revert with 0, 17
                        if var71001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var73001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                            if var75001 >= distributions.length:
                                revert with 0, 50
                            if var79001 > !var79002:
                                revert with 0, 17
                            # nil
                        else:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var73006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            continue 
                    else:
                        if 31 >= nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                            mem[_118 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                            mem[_115] = _118
                            mem[_115 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                            mem[_115 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var51001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var53001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var53006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                            if var55001 >= distributions.length:
                                revert with 0, 50
                            if var59001 > !var59002:
                                revert with 0, 17
                            if not var67001:
                                revert with 0, 17
                            if var73001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var75001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                if var77001 >= distributions.length:
                                    revert with 0, 50
                                if var81001 > !var81002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var75006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                        else:
                            mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            mem[_118 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                            s = _118 + 32
                            t = sha3(mem[0])
                            while _118 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_115] = _118
                            mem[_115 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                            mem[_115 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var54001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var56001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var56006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                            if var58001 >= distributions.length:
                                revert with 0, 50
                            if var62001 > !var62002:
                                revert with 0, 17
                            if not var70001:
                                revert with 0, 17
                            if var76001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var78001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                if var80001 >= distributions.length:
                                    revert with 0, 50
                                if var84001 > !var84002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var78006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
            else:
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                _119 = mem[64]
                mem[64] = mem[64] + ceil32(nodeNumberOf[address(msg.sender)][idx].field_1 % 128) + 32
                mem[_119] = nodeNumberOf[address(msg.sender)][idx].field_1 % 128
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, nodeNumberOf[address(msg.sender)][idx].field_0):
                        mem[_115] = _119
                        mem[_115 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_115 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        if distributions.length < 1:
                            revert with 0, 17
                        if var49001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var51001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var51006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            continue 
                        if var53001 >= distributions.length:
                            revert with 0, 50
                        if idx > !var57002:
                            revert with 0, 17
                        if not var65001:
                            revert with 0, 17
                        if var71001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var73001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                            if var75001 >= distributions.length:
                                revert with 0, 50
                            if var79001 > !var79002:
                                revert with 0, 17
                            # nil
                        else:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var73006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            continue 
                    else:
                        if 31 >= uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                            mem[_119 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                            mem[_115] = _119
                            mem[_115 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                            mem[_115 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var51001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var53001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var53006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                            if var55001 >= distributions.length:
                                revert with 0, 50
                            if var59001 > !var59002:
                                revert with 0, 17
                            if not var67001:
                                revert with 0, 17
                            if var73001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var75001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                if var77001 >= distributions.length:
                                    revert with 0, 50
                                if var81001 > !var81002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var75006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                        else:
                            mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            mem[_119 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                            s = _119 + 32
                            t = sha3(mem[0])
                            while _119 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_115] = _119
                            mem[_115 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                            mem[_115 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var54001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var56001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var56006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                            if var58001 >= distributions.length:
                                revert with 0, 50
                            if var62001 > !var62002:
                                revert with 0, 17
                            if not var70001:
                                revert with 0, 17
                            if var76001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var78001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                if var80001 >= distributions.length:
                                    revert with 0, 50
                                if var84001 > !var84002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var78006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                else:
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                        mem[_115] = _119
                        mem[_115 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_115 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        if distributions.length < 1:
                            revert with 0, 17
                        if var50001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var52001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var52006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            continue 
                        if var54001 >= distributions.length:
                            revert with 0, 50
                        if var58001 > !var58002:
                            revert with 0, 17
                        if not var66001:
                            revert with 0, 17
                        if var72001 >= distributions.length:
                            revert with 0, 50
                        mem[0] = 17
                        if distributions[var74001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                            if var76001 >= distributions.length:
                                revert with 0, 50
                            if var80001 > !var80002:
                                revert with 0, 17
                            # nil
                        else:
                            if stor12:
                                if 0 >= stor10.length:
                                    revert with 0, 50
                            if 0 > !var74006:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            continue 
                    else:
                        if 31 >= nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                            mem[_119 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                            mem[_115] = _119
                            mem[_115 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                            mem[_115 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var52001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var54001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var54006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                            if var56001 >= distributions.length:
                                revert with 0, 50
                            if var60001 > !var60002:
                                revert with 0, 17
                            if not var68001:
                                revert with 0, 17
                            if var74001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var76001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                if var78001 >= distributions.length:
                                    revert with 0, 50
                                if var82001 > !var82002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var76006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                        else:
                            mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            mem[_119 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                            s = _119 + 32
                            t = sha3(mem[0])
                            while _119 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_115] = _119
                            mem[_115 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                            mem[_115 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var55001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[idx].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var57006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                            if var59001 >= distributions.length:
                                revert with 0, 50
                            if var63001 > !var63002:
                                revert with 0, 17
                            if not var71001:
                                revert with 0, 17
                            if var77001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var79001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                if var81001 >= distributions.length:
                                    revert with 0, 50
                                if var85001 > !var85002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var79006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
        revert with 0, 'CASHOUT: You don't have enough reward to cash out'
    revert with 0, 'GET REWARD OF: NO NODE OWNER'
}

function getRewardAmount() payable {
    mem[64] = 96
    require not msg.value
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    idx = 0
    while idx < stor18.length:
        mem[0] = 18
        if stor18[idx] != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor18.length:
            mem[0] = 18
            if stor18[idx] != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[0] = msg.sender
            if not nodeNumberOf[address(msg.sender)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CASHOUT ERROR: You don't have nodes to cash-out'
            idx = 0
            s = 0
            while idx < nodeNumberOf[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 16)
                _166 = mem[64]
                mem[64] = mem[64] + 96
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _169 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) + 32
                    mem[_169] = uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                        if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, nodeNumberOf[address(msg.sender)][idx].field_0):
                            mem[_166] = _169
                            mem[_166 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                            mem[_166 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var51001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var53001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var53006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                            if var55001 >= distributions.length:
                                revert with 0, 50
                            if var59001 > !var59002:
                                revert with 0, 17
                            if not var67001:
                                revert with 0, 17
                            if var73001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var75001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                if var77001 >= distributions.length:
                                    revert with 0, 50
                                if var81001 > !var81002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var75006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                        else:
                            if 31 >= uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                                mem[_169 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                                mem[_166] = _169
                                mem[_166 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                                mem[_166 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                                if distributions.length < 1:
                                    revert with 0, 17
                                if var53001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var55001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var55006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                                if var57001 >= distributions.length:
                                    revert with 0, 50
                                if var61001 > !var61002:
                                    revert with 0, 17
                                if not var69001:
                                    revert with 0, 17
                                if var75001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var77001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if var79001 >= distributions.length:
                                        revert with 0, 50
                                    if var83001 > !var83002:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var77006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                            else:
                                mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                mem[_169 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                                s = _169 + 32
                                t = sha3(mem[0])
                                while _169 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_166] = _169
                                mem[_166 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                                mem[_166 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                                if distributions.length < 1:
                                    revert with 0, 17
                                if var56001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var58001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var58006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                                if idx >= distributions.length:
                                    revert with 0, 50
                                if var64001 > !var64002:
                                    revert with 0, 17
                                if not var72001:
                                    revert with 0, 17
                                if var78001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var80001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if var82001 >= distributions.length:
                                        revert with 0, 50
                                    # nil
                                else:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var80006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                    else:
                        if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if not nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                            mem[_166] = _169
                            mem[_166 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                            mem[_166 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var52001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var54001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var54006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                            if var56001 >= distributions.length:
                                revert with 0, 50
                            if idx > !var60002:
                                revert with 0, 17
                            if not var68001:
                                revert with 0, 17
                            if var74001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var76001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                if var78001 >= distributions.length:
                                    revert with 0, 50
                                if var82001 > !var82002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var76006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                        else:
                            if 31 >= nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                                mem[_169 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                                mem[_166] = _169
                                mem[_166 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                                mem[_166 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                                if distributions.length < 1:
                                    revert with 0, 17
                                if var54001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var56001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var56006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                                if var58001 >= distributions.length:
                                    revert with 0, 50
                                if var62001 > !var62002:
                                    revert with 0, 17
                                if not var70001:
                                    revert with 0, 17
                                if var76001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var78001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if var80001 >= distributions.length:
                                        revert with 0, 50
                                    if var84001 > !var84002:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var78006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                            else:
                                mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                mem[_169 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                                s = _169 + 32
                                t = sha3(mem[0])
                                while _169 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_166] = _169
                                mem[_166 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                                mem[_166 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                                if distributions.length < 1:
                                    revert with 0, 17
                                if var57001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var59001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var59006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                                if var61001 >= distributions.length:
                                    revert with 0, 50
                                if var65001 > !var65002:
                                    revert with 0, 17
                                if not var73001:
                                    revert with 0, 17
                                if var79001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var81001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if var83001 >= distributions.length:
                                        revert with 0, 50
                                    # nil
                                else:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var81006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                else:
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    _170 = mem[64]
                    mem[64] = mem[64] + ceil32(nodeNumberOf[address(msg.sender)][idx].field_1 % 128) + 32
                    mem[_170] = nodeNumberOf[address(msg.sender)][idx].field_1 % 128
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                        if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, nodeNumberOf[address(msg.sender)][idx].field_0):
                            mem[_166] = _170
                            mem[_166 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                            mem[_166 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var52001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var54001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var54006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                            if var56001 >= distributions.length:
                                revert with 0, 50
                            if idx > !var60002:
                                revert with 0, 17
                            if not var68001:
                                revert with 0, 17
                            if var74001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var76001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                if var78001 >= distributions.length:
                                    revert with 0, 50
                                if var82001 > !var82002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var76006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                        else:
                            if 31 >= uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                                mem[_170 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                                mem[_166] = _170
                                mem[_166 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                                mem[_166 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                                if distributions.length < 1:
                                    revert with 0, 17
                                if var54001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var56001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var56006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                                if var58001 >= distributions.length:
                                    revert with 0, 50
                                if var62001 > !var62002:
                                    revert with 0, 17
                                if not var70001:
                                    revert with 0, 17
                                if var76001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var78001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if var80001 >= distributions.length:
                                        revert with 0, 50
                                    if var84001 > !var84002:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var78006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                            else:
                                mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                mem[_170 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                                s = _170 + 32
                                t = sha3(mem[0])
                                while _170 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_166] = _170
                                mem[_166 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                                mem[_166 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                                if distributions.length < 1:
                                    revert with 0, 17
                                if var57001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var59001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var59006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                                if var61001 >= distributions.length:
                                    revert with 0, 50
                                if var65001 > !var65002:
                                    revert with 0, 17
                                if not var73001:
                                    revert with 0, 17
                                if var79001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var81001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if var83001 >= distributions.length:
                                        revert with 0, 50
                                    # nil
                                else:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var81006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                    else:
                        if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if not nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                            mem[_166] = _170
                            mem[_166 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                            mem[_166 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                            if distributions.length < 1:
                                revert with 0, 17
                            if var53001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var55001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var55006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                            if var57001 >= distributions.length:
                                revert with 0, 50
                            if var61001 > !var61002:
                                revert with 0, 17
                            if not var69001:
                                revert with 0, 17
                            if var75001 >= distributions.length:
                                revert with 0, 50
                            mem[0] = 17
                            if distributions[var77001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                if var79001 >= distributions.length:
                                    revert with 0, 50
                                if var83001 > !var83002:
                                    revert with 0, 17
                                # nil
                            else:
                                if stor12:
                                    if 0 >= stor10.length:
                                        revert with 0, 50
                                if 0 > !var77006:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                continue 
                        else:
                            if 31 >= nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                                mem[_170 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                                mem[_166] = _170
                                mem[_166 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                                mem[_166 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                                if distributions.length < 1:
                                    revert with 0, 17
                                if var55001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var57001].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var57006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                                if var59001 >= distributions.length:
                                    revert with 0, 50
                                if var63001 > !var63002:
                                    revert with 0, 17
                                if not var71001:
                                    revert with 0, 17
                                if var77001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var79001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if var81001 >= distributions.length:
                                        revert with 0, 50
                                    if var85001 > !var85002:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var79006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                            else:
                                mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                mem[_170 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                                s = _170 + 32
                                t = sha3(mem[0])
                                while _170 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_166] = _170
                                mem[_166 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                                mem[_166 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                                if distributions.length < 1:
                                    revert with 0, 17
                                if var58001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[idx].field_0 <= nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var60006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
                                if var62001 >= distributions.length:
                                    revert with 0, 50
                                if var66001 > !var66002:
                                    revert with 0, 17
                                if not var74001:
                                    revert with 0, 17
                                if var80001 >= distributions.length:
                                    revert with 0, 50
                                mem[0] = 17
                                if distributions[var82001].field_0 > nodeNumberOf[address(msg.sender)][idx].field_512:
                                    if var84001 >= distributions.length:
                                        revert with 0, 50
                                    # nil
                                else:
                                    if stor12:
                                        if 0 >= stor10.length:
                                            revert with 0, 50
                                    if 0 > !var82006:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    continue 
            return 0
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    revert with 0, 'NO NODE OWNER'
}

function getNodesCreatime() payable {
    mem[64] = 96
    require not msg.value
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    idx = 0
    while idx < stor18.length:
        mem[0] = 18
        if stor18[idx] != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor18.length:
            mem[0] = 18
            if stor18[idx] != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[0] = msg.sender
            mem[32] = 16
            mem[64] = (32 * nodeNumberOf[address(msg.sender)].field_0) + 128
            mem[96] = nodeNumberOf[address(msg.sender)].field_0
            s = 128
            idx = 0
            while idx < nodeNumberOf[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 16)
                _168 = mem[64]
                mem[64] = mem[64] + 96
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _173 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) + 32
                    mem[_173] = uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                        if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, nodeNumberOf[address(msg.sender)][idx].field_0):
                            if 31 >= uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                                mem[_173 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                            else:
                                mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                mem[_173 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                                t = _173 + 32
                                u = sha3(mem[0])
                                while _173 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_168] = _173
                        mem[_168 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_168 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _168
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                        mem[_168] = _173
                        mem[_168 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_168 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _168
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                        mem[_173 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                        mem[_168] = _173
                        mem[_168 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_168 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _168
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                    mem[_173 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                    t = _173 + 32
                    u = sha3(mem[0])
                    while _173 + nodeNumberOf[address(msg.sender)][u].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_168] = _173
                    mem[_168 + 32] = nodeNumberOf[address(msg.sender)][u].field_256
                    mem[_168 + 64] = nodeNumberOf[address(msg.sender)][u].field_512
                    mem[t] = _168
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(nodeNumberOf[address(msg.sender)][idx].field_1 % 128) + 32
                mem[_175] = nodeNumberOf[address(msg.sender)][idx].field_1 % 128
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, nodeNumberOf[address(msg.sender)][idx].field_0):
                        mem[_168] = _175
                        mem[_168 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_168 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _168
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                        mem[_175 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                        mem[_168] = _175
                        mem[_168 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_168 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _168
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                    mem[_175 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                    t = _175 + 32
                    u = sha3(mem[0])
                    while _175 + (uint255(nodeNumberOf[address(msg.sender)][u].field_0) * 0.5) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_168] = _175
                    mem[_168 + 32] = nodeNumberOf[address(msg.sender)][u].field_256
                    mem[_168 + 64] = nodeNumberOf[address(msg.sender)][u].field_512
                    mem[t] = _168
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                    if 31 >= nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                        mem[_175 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                    else:
                        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                        mem[_175 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                        t = _175 + 32
                        u = sha3(mem[0])
                        while _175 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_168] = _175
                mem[_168 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                mem[_168 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                mem[s] = _168
                s = s + 32
                idx = idx + 1
                continue 
            _165 = mem[96]
            _166 = mem[64]
            mem[64] = mem[64] + 96
            mem[_166] = 96
            mem[_166 + 32] = 0
            mem[_166 + 64] = 0
            if 0 >= mem[96]:
                revert with 0, 50
            _171 = mem[mem[128] + 32]
            if not mem[mem[128] + 32]:
                _172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_172] = 1
                mem[_172 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_174] = 1
                mem[_174 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                idx = 1
                s = _172
                t = _166
                while idx < _165:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _214 = mem[(32 * idx) + 128]
                    _215 = mem[mem[(32 * idx) + 128] + 32]
                    if not mem[mem[(32 * idx) + 128] + 32]:
                        _218 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_218] = 1
                        mem[_218 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _219 = mem[64]
                        _221 = mem[s]
                        t = 0
                        while t < _221:
                            mem[t + _219 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_221) <= _221:
                            _318 = mem[_174]
                            s = 0
                            while s < _318:
                                mem[s + _219 + _221 + 32] = mem[s + _174 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_318) <= _318:
                                _468 = mem[_218]
                                s = 0
                                while s < _468:
                                    mem[s + _219 + _221 + _318 + 32] = mem[s + _218 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_468) <= _468:
                                    _608 = mem[64]
                                    mem[mem[64]] = _468 + _219 + _221 + _318 - mem[64]
                                    mem[64] = _468 + _219 + _221 + _318 + 32
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _608
                                    t = _214
                                    continue 
                                mem[_468 + _219 + _221 + _318 + 32] = 0
                                _609 = mem[64]
                                mem[mem[64]] = _468 + _219 + _221 + _318 - mem[64]
                                mem[64] = _468 + _219 + _221 + _318 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _609
                                t = _214
                                continue 
                            mem[_318 + _219 + _221 + 32] = 0
                            _469 = mem[_218]
                            s = 0
                            while s < _469:
                                mem[s + _219 + _221 + _318 + 32] = mem[s + _218 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_469) <= _469:
                                _610 = mem[64]
                                mem[mem[64]] = _469 + _219 + _221 + _318 - mem[64]
                                mem[64] = _469 + _219 + _221 + _318 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _610
                                t = _214
                                continue 
                            mem[_469 + _219 + _221 + _318 + 32] = 0
                            _611 = mem[64]
                            mem[mem[64]] = _469 + _219 + _221 + _318 - mem[64]
                            mem[64] = _469 + _219 + _221 + _318 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _611
                            t = _214
                            continue 
                        mem[_221 + _219 + 32] = 0
                        _319 = mem[_174]
                        s = 0
                        while s < _319:
                            mem[s + _219 + _221 + 32] = mem[s + _174 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_319) <= _319:
                            _470 = mem[_218]
                            s = 0
                            while s < _470:
                                mem[s + _219 + _221 + _319 + 32] = mem[s + _218 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_470) <= _470:
                                _612 = mem[64]
                                mem[mem[64]] = _470 + _219 + _221 + _319 - mem[64]
                                mem[64] = _470 + _219 + _221 + _319 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _612
                                t = _214
                                continue 
                            mem[_470 + _219 + _221 + _319 + 32] = 0
                            _613 = mem[64]
                            mem[mem[64]] = _470 + _219 + _221 + _319 - mem[64]
                            mem[64] = _470 + _219 + _221 + _319 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _613
                            t = _214
                            continue 
                        mem[_319 + _219 + _221 + 32] = 0
                        _471 = mem[_218]
                        s = 0
                        while s < _471:
                            mem[s + _219 + _221 + _319 + 32] = mem[s + _218 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_471) <= _471:
                            _614 = mem[64]
                            mem[mem[64]] = _471 + _219 + _221 + _319 - mem[64]
                            mem[64] = _471 + _219 + _221 + _319 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _614
                            t = _214
                            continue 
                        mem[_471 + _219 + _221 + _319 + 32] = 0
                        _615 = mem[64]
                        mem[mem[64]] = _471 + _219 + _221 + _319 - mem[64]
                        mem[64] = _471 + _219 + _221 + _319 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _615
                        t = _214
                        continue 
                    u = 0
                    t = mem[mem[(32 * idx) + 128] + 32]
                    while t:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        t = t / 10
                        continue 
                    if u > test266151307():
                        revert with 0, 65
                    _317 = mem[64]
                    mem[mem[64]] = u
                    mem[64] = mem[64] + ceil32(u) + 32
                    if not u:
                        v = u
                        t = _215
                        while t:
                            if v < 1:
                                revert with 0, 17
                            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if t < 10 * t / 10:
                                revert with 0, 17
                            if 48 > -uint8(t - (10 * t / 10)) + 255:
                                revert with 0, 17
                            if v - 1 >= mem[_317]:
                                revert with 0, 50
                            mem[v + _317 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                            v = v - 1
                            t = t / 10
                            continue 
                        _462 = mem[64]
                        _466 = mem[s]
                        t = 0
                        while t < _466:
                            mem[t + _462 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_466) <= _466:
                            _600 = mem[_174]
                            s = 0
                            while s < _600:
                                mem[s + _462 + _466 + 32] = mem[s + _174 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_600) <= _600:
                                _808 = mem[_317]
                                s = 0
                                while s < _808:
                                    mem[s + _462 + _466 + _600 + 32] = mem[s + _317 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_808) <= _808:
                                    _996 = mem[64]
                                    mem[mem[64]] = _808 + _462 + _466 + _600 - mem[64]
                                    mem[64] = _808 + _462 + _466 + _600 + 32
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _996
                                    t = _214
                                    continue 
                                mem[_808 + _462 + _466 + _600 + 32] = 0
                                _997 = mem[64]
                                mem[mem[64]] = _808 + _462 + _466 + _600 - mem[64]
                                mem[64] = _808 + _462 + _466 + _600 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _997
                                t = _214
                                continue 
                            mem[_600 + _462 + _466 + 32] = 0
                            _809 = mem[_317]
                            s = 0
                            while s < _809:
                                mem[s + _462 + _466 + _600 + 32] = mem[s + _317 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_809) <= _809:
                                _998 = mem[64]
                                mem[mem[64]] = _809 + _462 + _466 + _600 - mem[64]
                                mem[64] = _809 + _462 + _466 + _600 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _998
                                t = _214
                                continue 
                            mem[_809 + _462 + _466 + _600 + 32] = 0
                            _999 = mem[64]
                            mem[mem[64]] = _809 + _462 + _466 + _600 - mem[64]
                            mem[64] = _809 + _462 + _466 + _600 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _999
                            t = _214
                            continue 
                        mem[_466 + _462 + 32] = 0
                        _601 = mem[_174]
                        s = 0
                        while s < _601:
                            mem[s + _462 + _466 + 32] = mem[s + _174 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_601) <= _601:
                            _810 = mem[_317]
                            s = 0
                            while s < _810:
                                mem[s + _462 + _466 + _601 + 32] = mem[s + _317 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_810) <= _810:
                                _1000 = mem[64]
                                mem[mem[64]] = _810 + _462 + _466 + _601 - mem[64]
                                mem[64] = _810 + _462 + _466 + _601 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1000
                                t = _214
                                continue 
                            mem[_810 + _462 + _466 + _601 + 32] = 0
                            _1001 = mem[64]
                            mem[mem[64]] = _810 + _462 + _466 + _601 - mem[64]
                            mem[64] = _810 + _462 + _466 + _601 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1001
                            t = _214
                            continue 
                        mem[_601 + _462 + _466 + 32] = 0
                        _811 = mem[_317]
                        s = 0
                        while s < _811:
                            mem[s + _462 + _466 + _601 + 32] = mem[s + _317 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_811) <= _811:
                            _1002 = mem[64]
                            mem[mem[64]] = _811 + _462 + _466 + _601 - mem[64]
                            mem[64] = _811 + _462 + _466 + _601 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1002
                            t = _214
                            continue 
                        mem[_811 + _462 + _466 + _601 + 32] = 0
                        _1003 = mem[64]
                        mem[mem[64]] = _811 + _462 + _466 + _601 - mem[64]
                        mem[64] = _811 + _462 + _466 + _601 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1003
                        t = _214
                        continue 
                    mem[_317 + 32 len u] = call.data[calldata.size len u]
                    v = u
                    t = _215
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_317]:
                            revert with 0, 50
                        mem[v + _317 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        v = v - 1
                        t = t / 10
                        continue 
                    _463 = mem[64]
                    _467 = mem[s]
                    t = 0
                    while t < _467:
                        mem[t + _463 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_467) <= _467:
                        _602 = mem[_174]
                        s = 0
                        while s < _602:
                            mem[s + _463 + _467 + 32] = mem[s + _174 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_602) <= _602:
                            _812 = mem[_317]
                            idx = 0
                            while idx < _812:
                                mem[idx + _463 + _467 + _602 + 32] = mem[idx + _317 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_812) <= _812:
                                _1004 = mem[64]
                                mem[mem[64]] = _812 + _463 + _467 + _602 - mem[64]
                                mem[64] = _812 + _463 + _467 + _602 + 32
                                if ceil32(_602) == -1:
                                    revert with 0, 17
                                s = ceil32(_602) + 1
                                s = _1004
                                t = _214
                                continue 
                            mem[_812 + _463 + _467 + _602 + 32] = 0
                            _1005 = mem[64]
                            mem[mem[64]] = _812 + _463 + _467 + _602 - mem[64]
                            mem[64] = _812 + _463 + _467 + _602 + 32
                            if ceil32(_602) == -1:
                                revert with 0, 17
                            s = ceil32(_602) + 1
                            s = _1005
                            t = _214
                            continue 
                        mem[_602 + _463 + _467 + 32] = 0
                        _813 = mem[_317]
                        idx = 0
                        while idx < _813:
                            mem[idx + _463 + _467 + _602 + 32] = mem[idx + _317 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_813) <= _813:
                            _1006 = mem[64]
                            mem[mem[64]] = _813 + _463 + _467 + _602 - mem[64]
                            mem[64] = _813 + _463 + _467 + _602 + 32
                            if ceil32(_602) == -1:
                                revert with 0, 17
                            s = ceil32(_602) + 1
                            s = _1006
                            t = _214
                            continue 
                        mem[_813 + _463 + _467 + _602 + 32] = 0
                        _1007 = mem[64]
                        mem[mem[64]] = _813 + _463 + _467 + _602 - mem[64]
                        mem[64] = _813 + _463 + _467 + _602 + 32
                        if ceil32(_602) == -1:
                            revert with 0, 17
                        s = ceil32(_602) + 1
                        s = _1007
                        t = _214
                        continue 
                    mem[_467 + _463 + 32] = 0
                    _603 = mem[_174]
                    s = 0
                    while s < _603:
                        mem[s + _463 + _467 + 32] = mem[s + _174 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_603) <= _603:
                        _814 = mem[_317]
                        idx = 0
                        while idx < _814:
                            mem[idx + _463 + _467 + _603 + 32] = mem[idx + _317 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_814) <= _814:
                            _1008 = mem[64]
                            mem[mem[64]] = _814 + _463 + _467 + _603 - mem[64]
                            mem[64] = _814 + _463 + _467 + _603 + 32
                            if ceil32(_603) == -1:
                                revert with 0, 17
                            s = ceil32(_603) + 1
                            s = _1008
                            t = _214
                            continue 
                        mem[_814 + _463 + _467 + _603 + 32] = 0
                        _1009 = mem[64]
                        mem[mem[64]] = _814 + _463 + _467 + _603 - mem[64]
                        mem[64] = _814 + _463 + _467 + _603 + 32
                        if ceil32(_603) == -1:
                            revert with 0, 17
                        s = ceil32(_603) + 1
                        s = _1009
                        t = _214
                        continue 
                    mem[_603 + _463 + _467 + 32] = 0
                    _815 = mem[_317]
                    idx = 0
                    while idx < _815:
                        mem[idx + _463 + _467 + _603 + 32] = mem[idx + _317 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_815) <= _815:
                        _1010 = mem[64]
                        mem[mem[64]] = _815 + _463 + _467 + _603 - mem[64]
                        mem[64] = _815 + _463 + _467 + _603 + 32
                        if ceil32(_603) == -1:
                            revert with 0, 17
                        s = ceil32(_603) + 1
                        s = _1010
                        t = _214
                        continue 
                    mem[_815 + _463 + _467 + _603 + 32] = 0
                    _1011 = mem[64]
                    mem[mem[64]] = _815 + _463 + _467 + _603 - mem[64]
                    mem[64] = _815 + _463 + _467 + _603 + 32
                    if ceil32(_603) == -1:
                        revert with 0, 17
                    s = ceil32(_603) + 1
                    s = _1011
                    t = _214
                    continue 
                _216 = mem[64]
                mem[mem[64]] = 32
                _217 = mem[s]
                mem[mem[64] + 32] = mem[s]
                idx = 0
                while idx < _217:
                    mem[idx + _216 + 64] = mem[idx + s + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_217) > _217:
                    mem[_217 + _216 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_217) + _216 + -mem[64] + 64
            u = 0
            t = mem[mem[128] + 32]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _213 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                s = u
                idx = _171
                while idx:
                    if s < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if s - 1 >= mem[_213]:
                        revert with 0, 50
                    mem[s + _213 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    s = s - 1
                    idx = idx / 10
                    continue 
                _315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_315] = 1
                mem[_315 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                idx = 1
                t = _213
                u = _166
                while idx < _165:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _458 = mem[(32 * idx) + 128]
                    _459 = mem[mem[(32 * idx) + 128] + 32]
                    if not mem[mem[(32 * idx) + 128] + 32]:
                        _473 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_473] = 1
                        mem[_473 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _476 = mem[64]
                        _478 = mem[t]
                        u = 0
                        while u < _478:
                            mem[u + _476 + 32] = mem[u + t + 32]
                            u = u + 32
                            continue 
                        if ceil32(_478) <= _478:
                            _596 = mem[_315]
                            t = 0
                            while t < _596:
                                mem[t + _476 + _478 + 32] = mem[t + _315 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_596) <= _596:
                                _798 = mem[_473]
                                s = 0
                                while s < _798:
                                    mem[s + _476 + _478 + _596 + 32] = mem[s + _473 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_798) <= _798:
                                    _980 = mem[64]
                                    mem[mem[64]] = _798 + _476 + _478 + _596 - mem[64]
                                    mem[64] = _798 + _476 + _478 + _596 + 32
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    t = _980
                                    u = _458
                                    continue 
                                mem[_798 + _476 + _478 + _596 + 32] = 0
                                _981 = mem[64]
                                mem[mem[64]] = _798 + _476 + _478 + _596 - mem[64]
                                mem[64] = _798 + _476 + _478 + _596 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _981
                                u = _458
                                continue 
                            mem[_596 + _476 + _478 + 32] = 0
                            _799 = mem[_473]
                            s = 0
                            while s < _799:
                                mem[s + _476 + _478 + _596 + 32] = mem[s + _473 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_799) <= _799:
                                _982 = mem[64]
                                mem[mem[64]] = _799 + _476 + _478 + _596 - mem[64]
                                mem[64] = _799 + _476 + _478 + _596 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _982
                                u = _458
                                continue 
                            mem[_799 + _476 + _478 + _596 + 32] = 0
                            _983 = mem[64]
                            mem[mem[64]] = _799 + _476 + _478 + _596 - mem[64]
                            mem[64] = _799 + _476 + _478 + _596 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _983
                            u = _458
                            continue 
                        mem[_478 + _476 + 32] = 0
                        _597 = mem[_315]
                        t = 0
                        while t < _597:
                            mem[t + _476 + _478 + 32] = mem[t + _315 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_597) <= _597:
                            _800 = mem[_473]
                            s = 0
                            while s < _800:
                                mem[s + _476 + _478 + _597 + 32] = mem[s + _473 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_800) <= _800:
                                _984 = mem[64]
                                mem[mem[64]] = _800 + _476 + _478 + _597 - mem[64]
                                mem[64] = _800 + _476 + _478 + _597 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _984
                                u = _458
                                continue 
                            mem[_800 + _476 + _478 + _597 + 32] = 0
                            _985 = mem[64]
                            mem[mem[64]] = _800 + _476 + _478 + _597 - mem[64]
                            mem[64] = _800 + _476 + _478 + _597 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _985
                            u = _458
                            continue 
                        mem[_597 + _476 + _478 + 32] = 0
                        _801 = mem[_473]
                        s = 0
                        while s < _801:
                            mem[s + _476 + _478 + _597 + 32] = mem[s + _473 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_801) <= _801:
                            _986 = mem[64]
                            mem[mem[64]] = _801 + _476 + _478 + _597 - mem[64]
                            mem[64] = _801 + _476 + _478 + _597 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _986
                            u = _458
                            continue 
                        mem[_801 + _476 + _478 + _597 + 32] = 0
                        _987 = mem[64]
                        mem[mem[64]] = _801 + _476 + _478 + _597 - mem[64]
                        mem[64] = _801 + _476 + _478 + _597 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _987
                        u = _458
                        continue 
                    u = 0
                    s = mem[mem[(32 * idx) + 128] + 32]
                    while s:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        s = s / 10
                        continue 
                    if u > test266151307():
                        revert with 0, 65
                    _594 = mem[64]
                    mem[mem[64]] = u
                    mem[64] = mem[64] + ceil32(u) + 32
                    if not u:
                        v = u
                        s = _459
                        while s:
                            if v < 1:
                                revert with 0, 17
                            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if s < 10 * s / 10:
                                revert with 0, 17
                            if 48 > -uint8(s - (10 * s / 10)) + 255:
                                revert with 0, 17
                            if v - 1 >= mem[_594]:
                                revert with 0, 50
                            mem[v + _594 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                            v = v - 1
                            s = s / 10
                            continue 
                        _792 = mem[64]
                        _796 = mem[t]
                        s = 0
                        while s < _796:
                            mem[s + _792 + 32] = mem[s + t + 32]
                            s = s + 32
                            continue 
                        if ceil32(_796) <= _796:
                            _972 = mem[_315]
                            s = 0
                            while s < _972:
                                mem[s + _792 + _796 + 32] = mem[s + _315 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_972) <= _972:
                                _1092 = mem[_594]
                                s = 0
                                while s < _1092:
                                    mem[s + _792 + _796 + _972 + 32] = mem[s + _594 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1092) <= _1092:
                                    _1172 = mem[64]
                                    mem[mem[64]] = _1092 + _792 + _796 + _972 - mem[64]
                                    mem[64] = _1092 + _792 + _796 + _972 + 32
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    t = _1172
                                    u = _458
                                    continue 
                                mem[_1092 + _792 + _796 + _972 + 32] = 0
                                _1173 = mem[64]
                                mem[mem[64]] = _1092 + _792 + _796 + _972 - mem[64]
                                mem[64] = _1092 + _792 + _796 + _972 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _1173
                                u = _458
                                continue 
                            mem[_972 + _792 + _796 + 32] = 0
                            _1093 = mem[_594]
                            s = 0
                            while s < _1093:
                                mem[s + _792 + _796 + _972 + 32] = mem[s + _594 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1093) <= _1093:
                                _1174 = mem[64]
                                mem[mem[64]] = _1093 + _792 + _796 + _972 - mem[64]
                                mem[64] = _1093 + _792 + _796 + _972 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _1174
                                u = _458
                                continue 
                            mem[_1093 + _792 + _796 + _972 + 32] = 0
                            _1175 = mem[64]
                            mem[mem[64]] = _1093 + _792 + _796 + _972 - mem[64]
                            mem[64] = _1093 + _792 + _796 + _972 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1175
                            u = _458
                            continue 
                        mem[_796 + _792 + 32] = 0
                        _973 = mem[_315]
                        s = 0
                        while s < _973:
                            mem[s + _792 + _796 + 32] = mem[s + _315 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_973) <= _973:
                            _1094 = mem[_594]
                            s = 0
                            while s < _1094:
                                mem[s + _792 + _796 + _973 + 32] = mem[s + _594 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1094) <= _1094:
                                _1176 = mem[64]
                                mem[mem[64]] = _1094 + _792 + _796 + _973 - mem[64]
                                mem[64] = _1094 + _792 + _796 + _973 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _1176
                                u = _458
                                continue 
                            mem[_1094 + _792 + _796 + _973 + 32] = 0
                            _1177 = mem[64]
                            mem[mem[64]] = _1094 + _792 + _796 + _973 - mem[64]
                            mem[64] = _1094 + _792 + _796 + _973 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1177
                            u = _458
                            continue 
                        mem[_973 + _792 + _796 + 32] = 0
                        _1095 = mem[_594]
                        s = 0
                        while s < _1095:
                            mem[s + _792 + _796 + _973 + 32] = mem[s + _594 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1095) <= _1095:
                            _1178 = mem[64]
                            mem[mem[64]] = _1095 + _792 + _796 + _973 - mem[64]
                            mem[64] = _1095 + _792 + _796 + _973 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1178
                            u = _458
                            continue 
                        mem[_1095 + _792 + _796 + _973 + 32] = 0
                        _1179 = mem[64]
                        mem[mem[64]] = _1095 + _792 + _796 + _973 - mem[64]
                        mem[64] = _1095 + _792 + _796 + _973 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1179
                        u = _458
                        continue 
                    mem[_594 + 32 len u] = call.data[calldata.size len u]
                    v = u
                    s = _459
                    while s:
                        if v < 1:
                            revert with 0, 17
                        if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if s < 10 * s / 10:
                            revert with 0, 17
                        if 48 > -uint8(s - (10 * s / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_594]:
                            revert with 0, 50
                        mem[v + _594 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                        v = v - 1
                        s = s / 10
                        continue 
                    _793 = mem[64]
                    _797 = mem[t]
                    s = 0
                    while s < _797:
                        mem[s + _793 + 32] = mem[s + t + 32]
                        s = s + 32
                        continue 
                    if ceil32(_797) <= _797:
                        _974 = mem[_315]
                        s = 0
                        while s < _974:
                            mem[s + _793 + _797 + 32] = mem[s + _315 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_974) <= _974:
                            _1096 = mem[_594]
                            idx = 0
                            while idx < _1096:
                                mem[idx + _793 + _797 + _974 + 32] = mem[idx + _594 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1096) <= _1096:
                                _1180 = mem[64]
                                mem[mem[64]] = _1096 + _793 + _797 + _974 - mem[64]
                                mem[64] = _1096 + _793 + _797 + _974 + 32
                                if ceil32(_974) == -1:
                                    revert with 0, 17
                                s = ceil32(_974) + 1
                                t = _1180
                                u = _458
                                continue 
                            mem[_1096 + _793 + _797 + _974 + 32] = 0
                            _1181 = mem[64]
                            mem[mem[64]] = _1096 + _793 + _797 + _974 - mem[64]
                            mem[64] = _1096 + _793 + _797 + _974 + 32
                            if ceil32(_974) == -1:
                                revert with 0, 17
                            s = ceil32(_974) + 1
                            t = _1181
                            u = _458
                            continue 
                        mem[_974 + _793 + _797 + 32] = 0
                        _1097 = mem[_594]
                        idx = 0
                        while idx < _1097:
                            mem[idx + _793 + _797 + _974 + 32] = mem[idx + _594 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1097) <= _1097:
                            _1182 = mem[64]
                            mem[mem[64]] = _1097 + _793 + _797 + _974 - mem[64]
                            mem[64] = _1097 + _793 + _797 + _974 + 32
                            if ceil32(_974) == -1:
                                revert with 0, 17
                            s = ceil32(_974) + 1
                            t = _1182
                            u = _458
                            continue 
                        mem[_1097 + _793 + _797 + _974 + 32] = 0
                        _1183 = mem[64]
                        mem[mem[64]] = _1097 + _793 + _797 + _974 - mem[64]
                        mem[64] = _1097 + _793 + _797 + _974 + 32
                        if ceil32(_974) == -1:
                            revert with 0, 17
                        s = ceil32(_974) + 1
                        t = _1183
                        u = _458
                        continue 
                    mem[_797 + _793 + 32] = 0
                    _975 = mem[_315]
                    s = 0
                    while s < _975:
                        mem[s + _793 + _797 + 32] = mem[s + _315 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_975) <= _975:
                        _1098 = mem[_594]
                        idx = 0
                        while idx < _1098:
                            mem[idx + _793 + _797 + _975 + 32] = mem[idx + _594 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1098) <= _1098:
                            _1184 = mem[64]
                            mem[mem[64]] = _1098 + _793 + _797 + _975 - mem[64]
                            mem[64] = _1098 + _793 + _797 + _975 + 32
                            if ceil32(_975) == -1:
                                revert with 0, 17
                            s = ceil32(_975) + 1
                            t = _1184
                            u = _458
                            continue 
                        mem[_1098 + _793 + _797 + _975 + 32] = 0
                        _1185 = mem[64]
                        mem[mem[64]] = _1098 + _793 + _797 + _975 - mem[64]
                        mem[64] = _1098 + _793 + _797 + _975 + 32
                        if ceil32(_975) == -1:
                            revert with 0, 17
                        s = ceil32(_975) + 1
                        t = _1185
                        u = _458
                        continue 
                    mem[_975 + _793 + _797 + 32] = 0
                    _1099 = mem[_594]
                    idx = 0
                    while idx < _1099:
                        mem[idx + _793 + _797 + _975 + 32] = mem[idx + _594 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1099) <= _1099:
                        _1186 = mem[64]
                        mem[mem[64]] = _1099 + _793 + _797 + _975 - mem[64]
                        mem[64] = _1099 + _793 + _797 + _975 + 32
                        if ceil32(_975) == -1:
                            revert with 0, 17
                        s = ceil32(_975) + 1
                        t = _1186
                        u = _458
                        continue 
                    mem[_1099 + _793 + _797 + _975 + 32] = 0
                    _1187 = mem[64]
                    mem[mem[64]] = _1099 + _793 + _797 + _975 - mem[64]
                    mem[64] = _1099 + _793 + _797 + _975 + 32
                    if ceil32(_975) == -1:
                        revert with 0, 17
                    s = ceil32(_975) + 1
                    t = _1187
                    u = _458
                    continue 
                _464 = mem[64]
                mem[mem[64]] = 32
                _472 = mem[t]
                mem[mem[64] + 32] = mem[t]
                idx = 0
                while idx < _472:
                    mem[idx + _464 + 64] = mem[idx + t + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_472) > _472:
                    mem[_472 + _464 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_472) + _464 + -mem[64] + 64
            mem[_213 + 32 len u] = call.data[calldata.size len u]
            s = u
            idx = _171
            while idx:
                if s < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if s - 1 >= mem[_213]:
                    revert with 0, 50
                mem[s + _213 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                s = s - 1
                idx = idx / 10
                continue 
            _316 = mem[64]
            mem[64] = mem[64] + 64
            mem[_316] = 1
            mem[_316 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            idx = 1
            t = _213
            u = _166
            while idx < _165:
                if idx >= mem[96]:
                    revert with 0, 50
                _460 = mem[(32 * idx) + 128]
                _461 = mem[mem[(32 * idx) + 128] + 32]
                if not mem[mem[(32 * idx) + 128] + 32]:
                    _475 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_475] = 1
                    mem[_475 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _477 = mem[64]
                    _479 = mem[t]
                    u = 0
                    while u < _479:
                        mem[u + _477 + 32] = mem[u + t + 32]
                        u = u + 32
                        continue 
                    if ceil32(_479) <= _479:
                        _598 = mem[_316]
                        t = 0
                        while t < _598:
                            mem[t + _477 + _479 + 32] = mem[t + _316 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_598) <= _598:
                            _804 = mem[_475]
                            s = 0
                            while s < _804:
                                mem[s + _477 + _479 + _598 + 32] = mem[s + _475 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_804) <= _804:
                                _988 = mem[64]
                                mem[mem[64]] = _804 + _477 + _479 + _598 - mem[64]
                                mem[64] = _804 + _477 + _479 + _598 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _988
                                u = _460
                                continue 
                            mem[_804 + _477 + _479 + _598 + 32] = 0
                            _989 = mem[64]
                            mem[mem[64]] = _804 + _477 + _479 + _598 - mem[64]
                            mem[64] = _804 + _477 + _479 + _598 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _989
                            u = _460
                            continue 
                        mem[_598 + _477 + _479 + 32] = 0
                        _805 = mem[_475]
                        s = 0
                        while s < _805:
                            mem[s + _477 + _479 + _598 + 32] = mem[s + _475 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_805) <= _805:
                            _990 = mem[64]
                            mem[mem[64]] = _805 + _477 + _479 + _598 - mem[64]
                            mem[64] = _805 + _477 + _479 + _598 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _990
                            u = _460
                            continue 
                        mem[_805 + _477 + _479 + _598 + 32] = 0
                        _991 = mem[64]
                        mem[mem[64]] = _805 + _477 + _479 + _598 - mem[64]
                        mem[64] = _805 + _477 + _479 + _598 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _991
                        u = _460
                        continue 
                    mem[_479 + _477 + 32] = 0
                    _599 = mem[_316]
                    t = 0
                    while t < _599:
                        mem[t + _477 + _479 + 32] = mem[t + _316 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_599) <= _599:
                        _806 = mem[_475]
                        s = 0
                        while s < _806:
                            mem[s + _477 + _479 + _599 + 32] = mem[s + _475 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_806) <= _806:
                            _992 = mem[64]
                            mem[mem[64]] = _806 + _477 + _479 + _599 - mem[64]
                            mem[64] = _806 + _477 + _479 + _599 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _992
                            u = _460
                            continue 
                        mem[_806 + _477 + _479 + _599 + 32] = 0
                        _993 = mem[64]
                        mem[mem[64]] = _806 + _477 + _479 + _599 - mem[64]
                        mem[64] = _806 + _477 + _479 + _599 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _993
                        u = _460
                        continue 
                    mem[_599 + _477 + _479 + 32] = 0
                    _807 = mem[_475]
                    s = 0
                    while s < _807:
                        mem[s + _477 + _479 + _599 + 32] = mem[s + _475 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_807) <= _807:
                        _994 = mem[64]
                        mem[mem[64]] = _807 + _477 + _479 + _599 - mem[64]
                        mem[64] = _807 + _477 + _479 + _599 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _994
                        u = _460
                        continue 
                    mem[_807 + _477 + _479 + _599 + 32] = 0
                    _995 = mem[64]
                    mem[mem[64]] = _807 + _477 + _479 + _599 - mem[64]
                    mem[64] = _807 + _477 + _479 + _599 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _995
                    u = _460
                    continue 
                u = 0
                s = mem[mem[(32 * idx) + 128] + 32]
                while s:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    s = s / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _595 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    s = _461
                    while s:
                        if v < 1:
                            revert with 0, 17
                        if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if s < 10 * s / 10:
                            revert with 0, 17
                        if 48 > -uint8(s - (10 * s / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_595]:
                            revert with 0, 50
                        mem[v + _595 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                        v = v - 1
                        s = s / 10
                        continue 
                    _794 = mem[64]
                    _802 = mem[t]
                    s = 0
                    while s < _802:
                        mem[s + _794 + 32] = mem[s + t + 32]
                        s = s + 32
                        continue 
                    if ceil32(_802) <= _802:
                        _976 = mem[_316]
                        s = 0
                        while s < _976:
                            mem[s + _794 + _802 + 32] = mem[s + _316 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_976) <= _976:
                            _1100 = mem[_595]
                            s = 0
                            while s < _1100:
                                mem[s + _794 + _802 + _976 + 32] = mem[s + _595 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1100) <= _1100:
                                _1188 = mem[64]
                                mem[mem[64]] = _1100 + _794 + _802 + _976 - mem[64]
                                mem[64] = _1100 + _794 + _802 + _976 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _1188
                                u = _460
                                continue 
                            mem[_1100 + _794 + _802 + _976 + 32] = 0
                            _1189 = mem[64]
                            mem[mem[64]] = _1100 + _794 + _802 + _976 - mem[64]
                            mem[64] = _1100 + _794 + _802 + _976 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1189
                            u = _460
                            continue 
                        mem[_976 + _794 + _802 + 32] = 0
                        _1101 = mem[_595]
                        s = 0
                        while s < _1101:
                            mem[s + _794 + _802 + _976 + 32] = mem[s + _595 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1101) <= _1101:
                            _1190 = mem[64]
                            mem[mem[64]] = _1101 + _794 + _802 + _976 - mem[64]
                            mem[64] = _1101 + _794 + _802 + _976 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1190
                            u = _460
                            continue 
                        mem[_1101 + _794 + _802 + _976 + 32] = 0
                        _1191 = mem[64]
                        mem[mem[64]] = _1101 + _794 + _802 + _976 - mem[64]
                        mem[64] = _1101 + _794 + _802 + _976 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1191
                        u = _460
                        continue 
                    mem[_802 + _794 + 32] = 0
                    _977 = mem[_316]
                    s = 0
                    while s < _977:
                        mem[s + _794 + _802 + 32] = mem[s + _316 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_977) <= _977:
                        _1102 = mem[_595]
                        s = 0
                        while s < _1102:
                            mem[s + _794 + _802 + _977 + 32] = mem[s + _595 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1102) <= _1102:
                            _1192 = mem[64]
                            mem[mem[64]] = _1102 + _794 + _802 + _977 - mem[64]
                            mem[64] = _1102 + _794 + _802 + _977 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1192
                            u = _460
                            continue 
                        mem[_1102 + _794 + _802 + _977 + 32] = 0
                        _1193 = mem[64]
                        mem[mem[64]] = _1102 + _794 + _802 + _977 - mem[64]
                        mem[64] = _1102 + _794 + _802 + _977 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1193
                        u = _460
                        continue 
                    mem[_977 + _794 + _802 + 32] = 0
                    _1103 = mem[_595]
                    s = 0
                    while s < _1103:
                        mem[s + _794 + _802 + _977 + 32] = mem[s + _595 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1103) <= _1103:
                        _1194 = mem[64]
                        mem[mem[64]] = _1103 + _794 + _802 + _977 - mem[64]
                        mem[64] = _1103 + _794 + _802 + _977 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1194
                        u = _460
                        continue 
                    mem[_1103 + _794 + _802 + _977 + 32] = 0
                    _1195 = mem[64]
                    mem[mem[64]] = _1103 + _794 + _802 + _977 - mem[64]
                    mem[64] = _1103 + _794 + _802 + _977 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1195
                    u = _460
                    continue 
                mem[_595 + 32 len u] = call.data[calldata.size len u]
                v = u
                s = _461
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_595]:
                        revert with 0, 50
                    mem[v + _595 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _795 = mem[64]
                _803 = mem[t]
                s = 0
                while s < _803:
                    mem[s + _795 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_803) <= _803:
                    _978 = mem[_316]
                    s = 0
                    while s < _978:
                        mem[s + _795 + _803 + 32] = mem[s + _316 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_978) <= _978:
                        _1104 = mem[_595]
                        idx = 0
                        while idx < _1104:
                            mem[idx + _795 + _803 + _978 + 32] = mem[idx + _595 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1104) <= _1104:
                            _1196 = mem[64]
                            mem[mem[64]] = _1104 + _795 + _803 + _978 - mem[64]
                            mem[64] = _1104 + _795 + _803 + _978 + 32
                            if ceil32(_978) == -1:
                                revert with 0, 17
                            s = ceil32(_978) + 1
                            t = _1196
                            u = _460
                            continue 
                        mem[_1104 + _795 + _803 + _978 + 32] = 0
                        _1197 = mem[64]
                        mem[mem[64]] = _1104 + _795 + _803 + _978 - mem[64]
                        mem[64] = _1104 + _795 + _803 + _978 + 32
                        if ceil32(_978) == -1:
                            revert with 0, 17
                        s = ceil32(_978) + 1
                        t = _1197
                        u = _460
                        continue 
                    mem[_978 + _795 + _803 + 32] = 0
                    _1105 = mem[_595]
                    idx = 0
                    while idx < _1105:
                        mem[idx + _795 + _803 + _978 + 32] = mem[idx + _595 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1105) <= _1105:
                        _1198 = mem[64]
                        mem[mem[64]] = _1105 + _795 + _803 + _978 - mem[64]
                        mem[64] = _1105 + _795 + _803 + _978 + 32
                        if ceil32(_978) == -1:
                            revert with 0, 17
                        s = ceil32(_978) + 1
                        t = _1198
                        u = _460
                        continue 
                    mem[_1105 + _795 + _803 + _978 + 32] = 0
                    _1199 = mem[64]
                    mem[mem[64]] = _1105 + _795 + _803 + _978 - mem[64]
                    mem[64] = _1105 + _795 + _803 + _978 + 32
                    if ceil32(_978) == -1:
                        revert with 0, 17
                    s = ceil32(_978) + 1
                    t = _1199
                    u = _460
                    continue 
                mem[_803 + _795 + 32] = 0
                _979 = mem[_316]
                s = 0
                while s < _979:
                    mem[s + _795 + _803 + 32] = mem[s + _316 + 32]
                    s = s + 32
                    continue 
                if ceil32(_979) <= _979:
                    _1106 = mem[_595]
                    idx = 0
                    while idx < _1106:
                        mem[idx + _795 + _803 + _979 + 32] = mem[idx + _595 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1106) <= _1106:
                        _1200 = mem[64]
                        mem[mem[64]] = _1106 + _795 + _803 + _979 - mem[64]
                        mem[64] = _1106 + _795 + _803 + _979 + 32
                        if ceil32(_979) == -1:
                            revert with 0, 17
                        s = ceil32(_979) + 1
                        t = _1200
                        u = _460
                        continue 
                    mem[_1106 + _795 + _803 + _979 + 32] = 0
                    _1201 = mem[64]
                    mem[mem[64]] = _1106 + _795 + _803 + _979 - mem[64]
                    mem[64] = _1106 + _795 + _803 + _979 + 32
                    if ceil32(_979) == -1:
                        revert with 0, 17
                    s = ceil32(_979) + 1
                    t = _1201
                    u = _460
                    continue 
                mem[_979 + _795 + _803 + 32] = 0
                _1107 = mem[_595]
                idx = 0
                while idx < _1107:
                    mem[idx + _795 + _803 + _979 + 32] = mem[idx + _595 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1107) <= _1107:
                    _1202 = mem[64]
                    mem[mem[64]] = _1107 + _795 + _803 + _979 - mem[64]
                    mem[64] = _1107 + _795 + _803 + _979 + 32
                    if ceil32(_979) == -1:
                        revert with 0, 17
                    s = ceil32(_979) + 1
                    t = _1202
                    u = _460
                    continue 
                mem[_1107 + _795 + _803 + _979 + 32] = 0
                _1203 = mem[64]
                mem[mem[64]] = _1107 + _795 + _803 + _979 - mem[64]
                mem[64] = _1107 + _795 + _803 + _979 + 32
                if ceil32(_979) == -1:
                    revert with 0, 17
                s = ceil32(_979) + 1
                t = _1203
                u = _460
                continue 
            _465 = mem[64]
            mem[mem[64]] = 32
            _474 = mem[t]
            mem[mem[64] + 32] = mem[t]
            idx = 0
            while idx < _474:
                mem[idx + _465 + 64] = mem[idx + t + 32]
                idx = idx + 32
                continue 
            if ceil32(_474) > _474:
                mem[_474 + _465 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_474) + _465 + -mem[64] + 64
        revert with 0, 'GET CREATIME: NO NODE OWNER'
    revert with 0, 'NO NODE OWNER'
}

function getNodesLastClaims() payable {
    mem[64] = 96
    require not msg.value
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    idx = 0
    while idx < stor18.length:
        mem[0] = 18
        if stor18[idx] != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor18.length:
            mem[0] = 18
            if stor18[idx] != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[0] = msg.sender
            mem[32] = 16
            mem[64] = (32 * nodeNumberOf[address(msg.sender)].field_0) + 128
            mem[96] = nodeNumberOf[address(msg.sender)].field_0
            s = 128
            idx = 0
            while idx < nodeNumberOf[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 16)
                _168 = mem[64]
                mem[64] = mem[64] + 96
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _173 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) + 32
                    mem[_173] = uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                        if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, nodeNumberOf[address(msg.sender)][idx].field_0):
                            if 31 >= uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                                mem[_173 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                            else:
                                mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                mem[_173 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                                t = _173 + 32
                                u = sha3(mem[0])
                                while _173 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_168] = _173
                        mem[_168 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_168 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _168
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                        mem[_168] = _173
                        mem[_168 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_168 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _168
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                        mem[_173 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                        mem[_168] = _173
                        mem[_168 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_168 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _168
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                    mem[_173 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                    t = _173 + 32
                    u = sha3(mem[0])
                    while _173 + nodeNumberOf[address(msg.sender)][u].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_168] = _173
                    mem[_168 + 32] = nodeNumberOf[address(msg.sender)][u].field_256
                    mem[_168 + 64] = nodeNumberOf[address(msg.sender)][u].field_512
                    mem[t] = _168
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(nodeNumberOf[address(msg.sender)][idx].field_1 % 128) + 32
                mem[_175] = nodeNumberOf[address(msg.sender)][idx].field_1 % 128
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, nodeNumberOf[address(msg.sender)][idx].field_0):
                        mem[_168] = _175
                        mem[_168 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_168 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _168
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                        mem[_175 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                        mem[_168] = _175
                        mem[_168 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                        mem[_168 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                        mem[s] = _168
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                    mem[_175 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                    t = _175 + 32
                    u = sha3(mem[0])
                    while _175 + (uint255(nodeNumberOf[address(msg.sender)][u].field_0) * 0.5) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_168] = _175
                    mem[_168 + 32] = nodeNumberOf[address(msg.sender)][u].field_256
                    mem[_168 + 64] = nodeNumberOf[address(msg.sender)][u].field_512
                    mem[t] = _168
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                    if 31 >= nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                        mem[_175 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(msg.sender)][idx].field_8)
                    else:
                        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                        mem[_175 + 32] = nodeNumberOf[address(msg.sender)][idx].field_0
                        t = _175 + 32
                        u = sha3(mem[0])
                        while _175 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_168] = _175
                mem[_168 + 32] = nodeNumberOf[address(msg.sender)][idx].field_256
                mem[_168 + 64] = nodeNumberOf[address(msg.sender)][idx].field_512
                mem[s] = _168
                s = s + 32
                idx = idx + 1
                continue 
            _165 = mem[96]
            _166 = mem[64]
            mem[64] = mem[64] + 96
            mem[_166] = 96
            mem[_166 + 32] = 0
            mem[_166 + 64] = 0
            if 0 >= mem[96]:
                revert with 0, 50
            _171 = mem[mem[128] + 64]
            if not mem[mem[128] + 64]:
                _172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_172] = 1
                mem[_172 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_174] = 1
                mem[_174 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                idx = 1
                s = _172
                t = _166
                while idx < _165:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _214 = mem[(32 * idx) + 128]
                    _215 = mem[mem[(32 * idx) + 128] + 64]
                    if not mem[mem[(32 * idx) + 128] + 64]:
                        _218 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_218] = 1
                        mem[_218 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _219 = mem[64]
                        _221 = mem[s]
                        t = 0
                        while t < _221:
                            mem[t + _219 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_221) <= _221:
                            _318 = mem[_174]
                            s = 0
                            while s < _318:
                                mem[s + _219 + _221 + 32] = mem[s + _174 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_318) <= _318:
                                _468 = mem[_218]
                                s = 0
                                while s < _468:
                                    mem[s + _219 + _221 + _318 + 32] = mem[s + _218 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_468) <= _468:
                                    _608 = mem[64]
                                    mem[mem[64]] = _468 + _219 + _221 + _318 - mem[64]
                                    mem[64] = _468 + _219 + _221 + _318 + 32
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _608
                                    t = _214
                                    continue 
                                mem[_468 + _219 + _221 + _318 + 32] = 0
                                _609 = mem[64]
                                mem[mem[64]] = _468 + _219 + _221 + _318 - mem[64]
                                mem[64] = _468 + _219 + _221 + _318 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _609
                                t = _214
                                continue 
                            mem[_318 + _219 + _221 + 32] = 0
                            _469 = mem[_218]
                            s = 0
                            while s < _469:
                                mem[s + _219 + _221 + _318 + 32] = mem[s + _218 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_469) <= _469:
                                _610 = mem[64]
                                mem[mem[64]] = _469 + _219 + _221 + _318 - mem[64]
                                mem[64] = _469 + _219 + _221 + _318 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _610
                                t = _214
                                continue 
                            mem[_469 + _219 + _221 + _318 + 32] = 0
                            _611 = mem[64]
                            mem[mem[64]] = _469 + _219 + _221 + _318 - mem[64]
                            mem[64] = _469 + _219 + _221 + _318 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _611
                            t = _214
                            continue 
                        mem[_221 + _219 + 32] = 0
                        _319 = mem[_174]
                        s = 0
                        while s < _319:
                            mem[s + _219 + _221 + 32] = mem[s + _174 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_319) <= _319:
                            _470 = mem[_218]
                            s = 0
                            while s < _470:
                                mem[s + _219 + _221 + _319 + 32] = mem[s + _218 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_470) <= _470:
                                _612 = mem[64]
                                mem[mem[64]] = _470 + _219 + _221 + _319 - mem[64]
                                mem[64] = _470 + _219 + _221 + _319 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _612
                                t = _214
                                continue 
                            mem[_470 + _219 + _221 + _319 + 32] = 0
                            _613 = mem[64]
                            mem[mem[64]] = _470 + _219 + _221 + _319 - mem[64]
                            mem[64] = _470 + _219 + _221 + _319 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _613
                            t = _214
                            continue 
                        mem[_319 + _219 + _221 + 32] = 0
                        _471 = mem[_218]
                        s = 0
                        while s < _471:
                            mem[s + _219 + _221 + _319 + 32] = mem[s + _218 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_471) <= _471:
                            _614 = mem[64]
                            mem[mem[64]] = _471 + _219 + _221 + _319 - mem[64]
                            mem[64] = _471 + _219 + _221 + _319 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _614
                            t = _214
                            continue 
                        mem[_471 + _219 + _221 + _319 + 32] = 0
                        _615 = mem[64]
                        mem[mem[64]] = _471 + _219 + _221 + _319 - mem[64]
                        mem[64] = _471 + _219 + _221 + _319 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _615
                        t = _214
                        continue 
                    u = 0
                    t = mem[mem[(32 * idx) + 128] + 64]
                    while t:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        t = t / 10
                        continue 
                    if u > test266151307():
                        revert with 0, 65
                    _317 = mem[64]
                    mem[mem[64]] = u
                    mem[64] = mem[64] + ceil32(u) + 32
                    if not u:
                        v = u
                        t = _215
                        while t:
                            if v < 1:
                                revert with 0, 17
                            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if t < 10 * t / 10:
                                revert with 0, 17
                            if 48 > -uint8(t - (10 * t / 10)) + 255:
                                revert with 0, 17
                            if v - 1 >= mem[_317]:
                                revert with 0, 50
                            mem[v + _317 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                            v = v - 1
                            t = t / 10
                            continue 
                        _462 = mem[64]
                        _466 = mem[s]
                        t = 0
                        while t < _466:
                            mem[t + _462 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_466) <= _466:
                            _600 = mem[_174]
                            s = 0
                            while s < _600:
                                mem[s + _462 + _466 + 32] = mem[s + _174 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_600) <= _600:
                                _808 = mem[_317]
                                s = 0
                                while s < _808:
                                    mem[s + _462 + _466 + _600 + 32] = mem[s + _317 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_808) <= _808:
                                    _996 = mem[64]
                                    mem[mem[64]] = _808 + _462 + _466 + _600 - mem[64]
                                    mem[64] = _808 + _462 + _466 + _600 + 32
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _996
                                    t = _214
                                    continue 
                                mem[_808 + _462 + _466 + _600 + 32] = 0
                                _997 = mem[64]
                                mem[mem[64]] = _808 + _462 + _466 + _600 - mem[64]
                                mem[64] = _808 + _462 + _466 + _600 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _997
                                t = _214
                                continue 
                            mem[_600 + _462 + _466 + 32] = 0
                            _809 = mem[_317]
                            s = 0
                            while s < _809:
                                mem[s + _462 + _466 + _600 + 32] = mem[s + _317 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_809) <= _809:
                                _998 = mem[64]
                                mem[mem[64]] = _809 + _462 + _466 + _600 - mem[64]
                                mem[64] = _809 + _462 + _466 + _600 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _998
                                t = _214
                                continue 
                            mem[_809 + _462 + _466 + _600 + 32] = 0
                            _999 = mem[64]
                            mem[mem[64]] = _809 + _462 + _466 + _600 - mem[64]
                            mem[64] = _809 + _462 + _466 + _600 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _999
                            t = _214
                            continue 
                        mem[_466 + _462 + 32] = 0
                        _601 = mem[_174]
                        s = 0
                        while s < _601:
                            mem[s + _462 + _466 + 32] = mem[s + _174 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_601) <= _601:
                            _810 = mem[_317]
                            s = 0
                            while s < _810:
                                mem[s + _462 + _466 + _601 + 32] = mem[s + _317 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_810) <= _810:
                                _1000 = mem[64]
                                mem[mem[64]] = _810 + _462 + _466 + _601 - mem[64]
                                mem[64] = _810 + _462 + _466 + _601 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1000
                                t = _214
                                continue 
                            mem[_810 + _462 + _466 + _601 + 32] = 0
                            _1001 = mem[64]
                            mem[mem[64]] = _810 + _462 + _466 + _601 - mem[64]
                            mem[64] = _810 + _462 + _466 + _601 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1001
                            t = _214
                            continue 
                        mem[_601 + _462 + _466 + 32] = 0
                        _811 = mem[_317]
                        s = 0
                        while s < _811:
                            mem[s + _462 + _466 + _601 + 32] = mem[s + _317 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_811) <= _811:
                            _1002 = mem[64]
                            mem[mem[64]] = _811 + _462 + _466 + _601 - mem[64]
                            mem[64] = _811 + _462 + _466 + _601 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1002
                            t = _214
                            continue 
                        mem[_811 + _462 + _466 + _601 + 32] = 0
                        _1003 = mem[64]
                        mem[mem[64]] = _811 + _462 + _466 + _601 - mem[64]
                        mem[64] = _811 + _462 + _466 + _601 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1003
                        t = _214
                        continue 
                    mem[_317 + 32 len u] = call.data[calldata.size len u]
                    v = u
                    t = _215
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_317]:
                            revert with 0, 50
                        mem[v + _317 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        v = v - 1
                        t = t / 10
                        continue 
                    _463 = mem[64]
                    _467 = mem[s]
                    t = 0
                    while t < _467:
                        mem[t + _463 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_467) <= _467:
                        _602 = mem[_174]
                        s = 0
                        while s < _602:
                            mem[s + _463 + _467 + 32] = mem[s + _174 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_602) <= _602:
                            _812 = mem[_317]
                            idx = 0
                            while idx < _812:
                                mem[idx + _463 + _467 + _602 + 32] = mem[idx + _317 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_812) <= _812:
                                _1004 = mem[64]
                                mem[mem[64]] = _812 + _463 + _467 + _602 - mem[64]
                                mem[64] = _812 + _463 + _467 + _602 + 32
                                if ceil32(_602) == -1:
                                    revert with 0, 17
                                s = ceil32(_602) + 1
                                s = _1004
                                t = _214
                                continue 
                            mem[_812 + _463 + _467 + _602 + 32] = 0
                            _1005 = mem[64]
                            mem[mem[64]] = _812 + _463 + _467 + _602 - mem[64]
                            mem[64] = _812 + _463 + _467 + _602 + 32
                            if ceil32(_602) == -1:
                                revert with 0, 17
                            s = ceil32(_602) + 1
                            s = _1005
                            t = _214
                            continue 
                        mem[_602 + _463 + _467 + 32] = 0
                        _813 = mem[_317]
                        idx = 0
                        while idx < _813:
                            mem[idx + _463 + _467 + _602 + 32] = mem[idx + _317 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_813) <= _813:
                            _1006 = mem[64]
                            mem[mem[64]] = _813 + _463 + _467 + _602 - mem[64]
                            mem[64] = _813 + _463 + _467 + _602 + 32
                            if ceil32(_602) == -1:
                                revert with 0, 17
                            s = ceil32(_602) + 1
                            s = _1006
                            t = _214
                            continue 
                        mem[_813 + _463 + _467 + _602 + 32] = 0
                        _1007 = mem[64]
                        mem[mem[64]] = _813 + _463 + _467 + _602 - mem[64]
                        mem[64] = _813 + _463 + _467 + _602 + 32
                        if ceil32(_602) == -1:
                            revert with 0, 17
                        s = ceil32(_602) + 1
                        s = _1007
                        t = _214
                        continue 
                    mem[_467 + _463 + 32] = 0
                    _603 = mem[_174]
                    s = 0
                    while s < _603:
                        mem[s + _463 + _467 + 32] = mem[s + _174 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_603) <= _603:
                        _814 = mem[_317]
                        idx = 0
                        while idx < _814:
                            mem[idx + _463 + _467 + _603 + 32] = mem[idx + _317 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_814) <= _814:
                            _1008 = mem[64]
                            mem[mem[64]] = _814 + _463 + _467 + _603 - mem[64]
                            mem[64] = _814 + _463 + _467 + _603 + 32
                            if ceil32(_603) == -1:
                                revert with 0, 17
                            s = ceil32(_603) + 1
                            s = _1008
                            t = _214
                            continue 
                        mem[_814 + _463 + _467 + _603 + 32] = 0
                        _1009 = mem[64]
                        mem[mem[64]] = _814 + _463 + _467 + _603 - mem[64]
                        mem[64] = _814 + _463 + _467 + _603 + 32
                        if ceil32(_603) == -1:
                            revert with 0, 17
                        s = ceil32(_603) + 1
                        s = _1009
                        t = _214
                        continue 
                    mem[_603 + _463 + _467 + 32] = 0
                    _815 = mem[_317]
                    idx = 0
                    while idx < _815:
                        mem[idx + _463 + _467 + _603 + 32] = mem[idx + _317 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_815) <= _815:
                        _1010 = mem[64]
                        mem[mem[64]] = _815 + _463 + _467 + _603 - mem[64]
                        mem[64] = _815 + _463 + _467 + _603 + 32
                        if ceil32(_603) == -1:
                            revert with 0, 17
                        s = ceil32(_603) + 1
                        s = _1010
                        t = _214
                        continue 
                    mem[_815 + _463 + _467 + _603 + 32] = 0
                    _1011 = mem[64]
                    mem[mem[64]] = _815 + _463 + _467 + _603 - mem[64]
                    mem[64] = _815 + _463 + _467 + _603 + 32
                    if ceil32(_603) == -1:
                        revert with 0, 17
                    s = ceil32(_603) + 1
                    s = _1011
                    t = _214
                    continue 
                _216 = mem[64]
                mem[mem[64]] = 32
                _217 = mem[s]
                mem[mem[64] + 32] = mem[s]
                idx = 0
                while idx < _217:
                    mem[idx + _216 + 64] = mem[idx + s + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_217) > _217:
                    mem[_217 + _216 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_217) + _216 + -mem[64] + 64
            u = 0
            t = mem[mem[128] + 64]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _213 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                s = u
                idx = _171
                while idx:
                    if s < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if s - 1 >= mem[_213]:
                        revert with 0, 50
                    mem[s + _213 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    s = s - 1
                    idx = idx / 10
                    continue 
                _315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_315] = 1
                mem[_315 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                idx = 1
                t = _213
                u = _166
                while idx < _165:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _458 = mem[(32 * idx) + 128]
                    _459 = mem[mem[(32 * idx) + 128] + 64]
                    if not mem[mem[(32 * idx) + 128] + 64]:
                        _473 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_473] = 1
                        mem[_473 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _476 = mem[64]
                        _478 = mem[t]
                        u = 0
                        while u < _478:
                            mem[u + _476 + 32] = mem[u + t + 32]
                            u = u + 32
                            continue 
                        if ceil32(_478) <= _478:
                            _596 = mem[_315]
                            t = 0
                            while t < _596:
                                mem[t + _476 + _478 + 32] = mem[t + _315 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_596) <= _596:
                                _798 = mem[_473]
                                s = 0
                                while s < _798:
                                    mem[s + _476 + _478 + _596 + 32] = mem[s + _473 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_798) <= _798:
                                    _980 = mem[64]
                                    mem[mem[64]] = _798 + _476 + _478 + _596 - mem[64]
                                    mem[64] = _798 + _476 + _478 + _596 + 32
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    t = _980
                                    u = _458
                                    continue 
                                mem[_798 + _476 + _478 + _596 + 32] = 0
                                _981 = mem[64]
                                mem[mem[64]] = _798 + _476 + _478 + _596 - mem[64]
                                mem[64] = _798 + _476 + _478 + _596 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _981
                                u = _458
                                continue 
                            mem[_596 + _476 + _478 + 32] = 0
                            _799 = mem[_473]
                            s = 0
                            while s < _799:
                                mem[s + _476 + _478 + _596 + 32] = mem[s + _473 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_799) <= _799:
                                _982 = mem[64]
                                mem[mem[64]] = _799 + _476 + _478 + _596 - mem[64]
                                mem[64] = _799 + _476 + _478 + _596 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _982
                                u = _458
                                continue 
                            mem[_799 + _476 + _478 + _596 + 32] = 0
                            _983 = mem[64]
                            mem[mem[64]] = _799 + _476 + _478 + _596 - mem[64]
                            mem[64] = _799 + _476 + _478 + _596 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _983
                            u = _458
                            continue 
                        mem[_478 + _476 + 32] = 0
                        _597 = mem[_315]
                        t = 0
                        while t < _597:
                            mem[t + _476 + _478 + 32] = mem[t + _315 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_597) <= _597:
                            _800 = mem[_473]
                            s = 0
                            while s < _800:
                                mem[s + _476 + _478 + _597 + 32] = mem[s + _473 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_800) <= _800:
                                _984 = mem[64]
                                mem[mem[64]] = _800 + _476 + _478 + _597 - mem[64]
                                mem[64] = _800 + _476 + _478 + _597 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _984
                                u = _458
                                continue 
                            mem[_800 + _476 + _478 + _597 + 32] = 0
                            _985 = mem[64]
                            mem[mem[64]] = _800 + _476 + _478 + _597 - mem[64]
                            mem[64] = _800 + _476 + _478 + _597 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _985
                            u = _458
                            continue 
                        mem[_597 + _476 + _478 + 32] = 0
                        _801 = mem[_473]
                        s = 0
                        while s < _801:
                            mem[s + _476 + _478 + _597 + 32] = mem[s + _473 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_801) <= _801:
                            _986 = mem[64]
                            mem[mem[64]] = _801 + _476 + _478 + _597 - mem[64]
                            mem[64] = _801 + _476 + _478 + _597 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _986
                            u = _458
                            continue 
                        mem[_801 + _476 + _478 + _597 + 32] = 0
                        _987 = mem[64]
                        mem[mem[64]] = _801 + _476 + _478 + _597 - mem[64]
                        mem[64] = _801 + _476 + _478 + _597 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _987
                        u = _458
                        continue 
                    u = 0
                    s = mem[mem[(32 * idx) + 128] + 64]
                    while s:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        s = s / 10
                        continue 
                    if u > test266151307():
                        revert with 0, 65
                    _594 = mem[64]
                    mem[mem[64]] = u
                    mem[64] = mem[64] + ceil32(u) + 32
                    if not u:
                        v = u
                        s = _459
                        while s:
                            if v < 1:
                                revert with 0, 17
                            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if s < 10 * s / 10:
                                revert with 0, 17
                            if 48 > -uint8(s - (10 * s / 10)) + 255:
                                revert with 0, 17
                            if v - 1 >= mem[_594]:
                                revert with 0, 50
                            mem[v + _594 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                            v = v - 1
                            s = s / 10
                            continue 
                        _792 = mem[64]
                        _796 = mem[t]
                        s = 0
                        while s < _796:
                            mem[s + _792 + 32] = mem[s + t + 32]
                            s = s + 32
                            continue 
                        if ceil32(_796) <= _796:
                            _972 = mem[_315]
                            s = 0
                            while s < _972:
                                mem[s + _792 + _796 + 32] = mem[s + _315 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_972) <= _972:
                                _1092 = mem[_594]
                                s = 0
                                while s < _1092:
                                    mem[s + _792 + _796 + _972 + 32] = mem[s + _594 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1092) <= _1092:
                                    _1172 = mem[64]
                                    mem[mem[64]] = _1092 + _792 + _796 + _972 - mem[64]
                                    mem[64] = _1092 + _792 + _796 + _972 + 32
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    t = _1172
                                    u = _458
                                    continue 
                                mem[_1092 + _792 + _796 + _972 + 32] = 0
                                _1173 = mem[64]
                                mem[mem[64]] = _1092 + _792 + _796 + _972 - mem[64]
                                mem[64] = _1092 + _792 + _796 + _972 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _1173
                                u = _458
                                continue 
                            mem[_972 + _792 + _796 + 32] = 0
                            _1093 = mem[_594]
                            s = 0
                            while s < _1093:
                                mem[s + _792 + _796 + _972 + 32] = mem[s + _594 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1093) <= _1093:
                                _1174 = mem[64]
                                mem[mem[64]] = _1093 + _792 + _796 + _972 - mem[64]
                                mem[64] = _1093 + _792 + _796 + _972 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _1174
                                u = _458
                                continue 
                            mem[_1093 + _792 + _796 + _972 + 32] = 0
                            _1175 = mem[64]
                            mem[mem[64]] = _1093 + _792 + _796 + _972 - mem[64]
                            mem[64] = _1093 + _792 + _796 + _972 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1175
                            u = _458
                            continue 
                        mem[_796 + _792 + 32] = 0
                        _973 = mem[_315]
                        s = 0
                        while s < _973:
                            mem[s + _792 + _796 + 32] = mem[s + _315 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_973) <= _973:
                            _1094 = mem[_594]
                            s = 0
                            while s < _1094:
                                mem[s + _792 + _796 + _973 + 32] = mem[s + _594 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1094) <= _1094:
                                _1176 = mem[64]
                                mem[mem[64]] = _1094 + _792 + _796 + _973 - mem[64]
                                mem[64] = _1094 + _792 + _796 + _973 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _1176
                                u = _458
                                continue 
                            mem[_1094 + _792 + _796 + _973 + 32] = 0
                            _1177 = mem[64]
                            mem[mem[64]] = _1094 + _792 + _796 + _973 - mem[64]
                            mem[64] = _1094 + _792 + _796 + _973 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1177
                            u = _458
                            continue 
                        mem[_973 + _792 + _796 + 32] = 0
                        _1095 = mem[_594]
                        s = 0
                        while s < _1095:
                            mem[s + _792 + _796 + _973 + 32] = mem[s + _594 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1095) <= _1095:
                            _1178 = mem[64]
                            mem[mem[64]] = _1095 + _792 + _796 + _973 - mem[64]
                            mem[64] = _1095 + _792 + _796 + _973 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1178
                            u = _458
                            continue 
                        mem[_1095 + _792 + _796 + _973 + 32] = 0
                        _1179 = mem[64]
                        mem[mem[64]] = _1095 + _792 + _796 + _973 - mem[64]
                        mem[64] = _1095 + _792 + _796 + _973 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1179
                        u = _458
                        continue 
                    mem[_594 + 32 len u] = call.data[calldata.size len u]
                    v = u
                    s = _459
                    while s:
                        if v < 1:
                            revert with 0, 17
                        if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if s < 10 * s / 10:
                            revert with 0, 17
                        if 48 > -uint8(s - (10 * s / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_594]:
                            revert with 0, 50
                        mem[v + _594 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                        v = v - 1
                        s = s / 10
                        continue 
                    _793 = mem[64]
                    _797 = mem[t]
                    s = 0
                    while s < _797:
                        mem[s + _793 + 32] = mem[s + t + 32]
                        s = s + 32
                        continue 
                    if ceil32(_797) <= _797:
                        _974 = mem[_315]
                        s = 0
                        while s < _974:
                            mem[s + _793 + _797 + 32] = mem[s + _315 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_974) <= _974:
                            _1096 = mem[_594]
                            idx = 0
                            while idx < _1096:
                                mem[idx + _793 + _797 + _974 + 32] = mem[idx + _594 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1096) <= _1096:
                                _1180 = mem[64]
                                mem[mem[64]] = _1096 + _793 + _797 + _974 - mem[64]
                                mem[64] = _1096 + _793 + _797 + _974 + 32
                                if ceil32(_974) == -1:
                                    revert with 0, 17
                                s = ceil32(_974) + 1
                                t = _1180
                                u = _458
                                continue 
                            mem[_1096 + _793 + _797 + _974 + 32] = 0
                            _1181 = mem[64]
                            mem[mem[64]] = _1096 + _793 + _797 + _974 - mem[64]
                            mem[64] = _1096 + _793 + _797 + _974 + 32
                            if ceil32(_974) == -1:
                                revert with 0, 17
                            s = ceil32(_974) + 1
                            t = _1181
                            u = _458
                            continue 
                        mem[_974 + _793 + _797 + 32] = 0
                        _1097 = mem[_594]
                        idx = 0
                        while idx < _1097:
                            mem[idx + _793 + _797 + _974 + 32] = mem[idx + _594 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1097) <= _1097:
                            _1182 = mem[64]
                            mem[mem[64]] = _1097 + _793 + _797 + _974 - mem[64]
                            mem[64] = _1097 + _793 + _797 + _974 + 32
                            if ceil32(_974) == -1:
                                revert with 0, 17
                            s = ceil32(_974) + 1
                            t = _1182
                            u = _458
                            continue 
                        mem[_1097 + _793 + _797 + _974 + 32] = 0
                        _1183 = mem[64]
                        mem[mem[64]] = _1097 + _793 + _797 + _974 - mem[64]
                        mem[64] = _1097 + _793 + _797 + _974 + 32
                        if ceil32(_974) == -1:
                            revert with 0, 17
                        s = ceil32(_974) + 1
                        t = _1183
                        u = _458
                        continue 
                    mem[_797 + _793 + 32] = 0
                    _975 = mem[_315]
                    s = 0
                    while s < _975:
                        mem[s + _793 + _797 + 32] = mem[s + _315 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_975) <= _975:
                        _1098 = mem[_594]
                        idx = 0
                        while idx < _1098:
                            mem[idx + _793 + _797 + _975 + 32] = mem[idx + _594 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1098) <= _1098:
                            _1184 = mem[64]
                            mem[mem[64]] = _1098 + _793 + _797 + _975 - mem[64]
                            mem[64] = _1098 + _793 + _797 + _975 + 32
                            if ceil32(_975) == -1:
                                revert with 0, 17
                            s = ceil32(_975) + 1
                            t = _1184
                            u = _458
                            continue 
                        mem[_1098 + _793 + _797 + _975 + 32] = 0
                        _1185 = mem[64]
                        mem[mem[64]] = _1098 + _793 + _797 + _975 - mem[64]
                        mem[64] = _1098 + _793 + _797 + _975 + 32
                        if ceil32(_975) == -1:
                            revert with 0, 17
                        s = ceil32(_975) + 1
                        t = _1185
                        u = _458
                        continue 
                    mem[_975 + _793 + _797 + 32] = 0
                    _1099 = mem[_594]
                    idx = 0
                    while idx < _1099:
                        mem[idx + _793 + _797 + _975 + 32] = mem[idx + _594 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1099) <= _1099:
                        _1186 = mem[64]
                        mem[mem[64]] = _1099 + _793 + _797 + _975 - mem[64]
                        mem[64] = _1099 + _793 + _797 + _975 + 32
                        if ceil32(_975) == -1:
                            revert with 0, 17
                        s = ceil32(_975) + 1
                        t = _1186
                        u = _458
                        continue 
                    mem[_1099 + _793 + _797 + _975 + 32] = 0
                    _1187 = mem[64]
                    mem[mem[64]] = _1099 + _793 + _797 + _975 - mem[64]
                    mem[64] = _1099 + _793 + _797 + _975 + 32
                    if ceil32(_975) == -1:
                        revert with 0, 17
                    s = ceil32(_975) + 1
                    t = _1187
                    u = _458
                    continue 
                _464 = mem[64]
                mem[mem[64]] = 32
                _472 = mem[t]
                mem[mem[64] + 32] = mem[t]
                idx = 0
                while idx < _472:
                    mem[idx + _464 + 64] = mem[idx + t + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_472) > _472:
                    mem[_472 + _464 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_472) + _464 + -mem[64] + 64
            mem[_213 + 32 len u] = call.data[calldata.size len u]
            s = u
            idx = _171
            while idx:
                if s < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if s - 1 >= mem[_213]:
                    revert with 0, 50
                mem[s + _213 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                s = s - 1
                idx = idx / 10
                continue 
            _316 = mem[64]
            mem[64] = mem[64] + 64
            mem[_316] = 1
            mem[_316 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            idx = 1
            t = _213
            u = _166
            while idx < _165:
                if idx >= mem[96]:
                    revert with 0, 50
                _460 = mem[(32 * idx) + 128]
                _461 = mem[mem[(32 * idx) + 128] + 64]
                if not mem[mem[(32 * idx) + 128] + 64]:
                    _475 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_475] = 1
                    mem[_475 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _477 = mem[64]
                    _479 = mem[t]
                    u = 0
                    while u < _479:
                        mem[u + _477 + 32] = mem[u + t + 32]
                        u = u + 32
                        continue 
                    if ceil32(_479) <= _479:
                        _598 = mem[_316]
                        t = 0
                        while t < _598:
                            mem[t + _477 + _479 + 32] = mem[t + _316 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_598) <= _598:
                            _804 = mem[_475]
                            s = 0
                            while s < _804:
                                mem[s + _477 + _479 + _598 + 32] = mem[s + _475 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_804) <= _804:
                                _988 = mem[64]
                                mem[mem[64]] = _804 + _477 + _479 + _598 - mem[64]
                                mem[64] = _804 + _477 + _479 + _598 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _988
                                u = _460
                                continue 
                            mem[_804 + _477 + _479 + _598 + 32] = 0
                            _989 = mem[64]
                            mem[mem[64]] = _804 + _477 + _479 + _598 - mem[64]
                            mem[64] = _804 + _477 + _479 + _598 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _989
                            u = _460
                            continue 
                        mem[_598 + _477 + _479 + 32] = 0
                        _805 = mem[_475]
                        s = 0
                        while s < _805:
                            mem[s + _477 + _479 + _598 + 32] = mem[s + _475 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_805) <= _805:
                            _990 = mem[64]
                            mem[mem[64]] = _805 + _477 + _479 + _598 - mem[64]
                            mem[64] = _805 + _477 + _479 + _598 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _990
                            u = _460
                            continue 
                        mem[_805 + _477 + _479 + _598 + 32] = 0
                        _991 = mem[64]
                        mem[mem[64]] = _805 + _477 + _479 + _598 - mem[64]
                        mem[64] = _805 + _477 + _479 + _598 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _991
                        u = _460
                        continue 
                    mem[_479 + _477 + 32] = 0
                    _599 = mem[_316]
                    t = 0
                    while t < _599:
                        mem[t + _477 + _479 + 32] = mem[t + _316 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_599) <= _599:
                        _806 = mem[_475]
                        s = 0
                        while s < _806:
                            mem[s + _477 + _479 + _599 + 32] = mem[s + _475 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_806) <= _806:
                            _992 = mem[64]
                            mem[mem[64]] = _806 + _477 + _479 + _599 - mem[64]
                            mem[64] = _806 + _477 + _479 + _599 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _992
                            u = _460
                            continue 
                        mem[_806 + _477 + _479 + _599 + 32] = 0
                        _993 = mem[64]
                        mem[mem[64]] = _806 + _477 + _479 + _599 - mem[64]
                        mem[64] = _806 + _477 + _479 + _599 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _993
                        u = _460
                        continue 
                    mem[_599 + _477 + _479 + 32] = 0
                    _807 = mem[_475]
                    s = 0
                    while s < _807:
                        mem[s + _477 + _479 + _599 + 32] = mem[s + _475 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_807) <= _807:
                        _994 = mem[64]
                        mem[mem[64]] = _807 + _477 + _479 + _599 - mem[64]
                        mem[64] = _807 + _477 + _479 + _599 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _994
                        u = _460
                        continue 
                    mem[_807 + _477 + _479 + _599 + 32] = 0
                    _995 = mem[64]
                    mem[mem[64]] = _807 + _477 + _479 + _599 - mem[64]
                    mem[64] = _807 + _477 + _479 + _599 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _995
                    u = _460
                    continue 
                u = 0
                s = mem[mem[(32 * idx) + 128] + 64]
                while s:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    s = s / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _595 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    s = _461
                    while s:
                        if v < 1:
                            revert with 0, 17
                        if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if s < 10 * s / 10:
                            revert with 0, 17
                        if 48 > -uint8(s - (10 * s / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_595]:
                            revert with 0, 50
                        mem[v + _595 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                        v = v - 1
                        s = s / 10
                        continue 
                    _794 = mem[64]
                    _802 = mem[t]
                    s = 0
                    while s < _802:
                        mem[s + _794 + 32] = mem[s + t + 32]
                        s = s + 32
                        continue 
                    if ceil32(_802) <= _802:
                        _976 = mem[_316]
                        s = 0
                        while s < _976:
                            mem[s + _794 + _802 + 32] = mem[s + _316 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_976) <= _976:
                            _1100 = mem[_595]
                            s = 0
                            while s < _1100:
                                mem[s + _794 + _802 + _976 + 32] = mem[s + _595 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1100) <= _1100:
                                _1188 = mem[64]
                                mem[mem[64]] = _1100 + _794 + _802 + _976 - mem[64]
                                mem[64] = _1100 + _794 + _802 + _976 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = _1188
                                u = _460
                                continue 
                            mem[_1100 + _794 + _802 + _976 + 32] = 0
                            _1189 = mem[64]
                            mem[mem[64]] = _1100 + _794 + _802 + _976 - mem[64]
                            mem[64] = _1100 + _794 + _802 + _976 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1189
                            u = _460
                            continue 
                        mem[_976 + _794 + _802 + 32] = 0
                        _1101 = mem[_595]
                        s = 0
                        while s < _1101:
                            mem[s + _794 + _802 + _976 + 32] = mem[s + _595 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1101) <= _1101:
                            _1190 = mem[64]
                            mem[mem[64]] = _1101 + _794 + _802 + _976 - mem[64]
                            mem[64] = _1101 + _794 + _802 + _976 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1190
                            u = _460
                            continue 
                        mem[_1101 + _794 + _802 + _976 + 32] = 0
                        _1191 = mem[64]
                        mem[mem[64]] = _1101 + _794 + _802 + _976 - mem[64]
                        mem[64] = _1101 + _794 + _802 + _976 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1191
                        u = _460
                        continue 
                    mem[_802 + _794 + 32] = 0
                    _977 = mem[_316]
                    s = 0
                    while s < _977:
                        mem[s + _794 + _802 + 32] = mem[s + _316 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_977) <= _977:
                        _1102 = mem[_595]
                        s = 0
                        while s < _1102:
                            mem[s + _794 + _802 + _977 + 32] = mem[s + _595 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1102) <= _1102:
                            _1192 = mem[64]
                            mem[mem[64]] = _1102 + _794 + _802 + _977 - mem[64]
                            mem[64] = _1102 + _794 + _802 + _977 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1192
                            u = _460
                            continue 
                        mem[_1102 + _794 + _802 + _977 + 32] = 0
                        _1193 = mem[64]
                        mem[mem[64]] = _1102 + _794 + _802 + _977 - mem[64]
                        mem[64] = _1102 + _794 + _802 + _977 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1193
                        u = _460
                        continue 
                    mem[_977 + _794 + _802 + 32] = 0
                    _1103 = mem[_595]
                    s = 0
                    while s < _1103:
                        mem[s + _794 + _802 + _977 + 32] = mem[s + _595 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1103) <= _1103:
                        _1194 = mem[64]
                        mem[mem[64]] = _1103 + _794 + _802 + _977 - mem[64]
                        mem[64] = _1103 + _794 + _802 + _977 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1194
                        u = _460
                        continue 
                    mem[_1103 + _794 + _802 + _977 + 32] = 0
                    _1195 = mem[64]
                    mem[mem[64]] = _1103 + _794 + _802 + _977 - mem[64]
                    mem[64] = _1103 + _794 + _802 + _977 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1195
                    u = _460
                    continue 
                mem[_595 + 32 len u] = call.data[calldata.size len u]
                v = u
                s = _461
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_595]:
                        revert with 0, 50
                    mem[v + _595 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _795 = mem[64]
                _803 = mem[t]
                s = 0
                while s < _803:
                    mem[s + _795 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_803) <= _803:
                    _978 = mem[_316]
                    s = 0
                    while s < _978:
                        mem[s + _795 + _803 + 32] = mem[s + _316 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_978) <= _978:
                        _1104 = mem[_595]
                        idx = 0
                        while idx < _1104:
                            mem[idx + _795 + _803 + _978 + 32] = mem[idx + _595 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1104) <= _1104:
                            _1196 = mem[64]
                            mem[mem[64]] = _1104 + _795 + _803 + _978 - mem[64]
                            mem[64] = _1104 + _795 + _803 + _978 + 32
                            if ceil32(_978) == -1:
                                revert with 0, 17
                            s = ceil32(_978) + 1
                            t = _1196
                            u = _460
                            continue 
                        mem[_1104 + _795 + _803 + _978 + 32] = 0
                        _1197 = mem[64]
                        mem[mem[64]] = _1104 + _795 + _803 + _978 - mem[64]
                        mem[64] = _1104 + _795 + _803 + _978 + 32
                        if ceil32(_978) == -1:
                            revert with 0, 17
                        s = ceil32(_978) + 1
                        t = _1197
                        u = _460
                        continue 
                    mem[_978 + _795 + _803 + 32] = 0
                    _1105 = mem[_595]
                    idx = 0
                    while idx < _1105:
                        mem[idx + _795 + _803 + _978 + 32] = mem[idx + _595 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1105) <= _1105:
                        _1198 = mem[64]
                        mem[mem[64]] = _1105 + _795 + _803 + _978 - mem[64]
                        mem[64] = _1105 + _795 + _803 + _978 + 32
                        if ceil32(_978) == -1:
                            revert with 0, 17
                        s = ceil32(_978) + 1
                        t = _1198
                        u = _460
                        continue 
                    mem[_1105 + _795 + _803 + _978 + 32] = 0
                    _1199 = mem[64]
                    mem[mem[64]] = _1105 + _795 + _803 + _978 - mem[64]
                    mem[64] = _1105 + _795 + _803 + _978 + 32
                    if ceil32(_978) == -1:
                        revert with 0, 17
                    s = ceil32(_978) + 1
                    t = _1199
                    u = _460
                    continue 
                mem[_803 + _795 + 32] = 0
                _979 = mem[_316]
                s = 0
                while s < _979:
                    mem[s + _795 + _803 + 32] = mem[s + _316 + 32]
                    s = s + 32
                    continue 
                if ceil32(_979) <= _979:
                    _1106 = mem[_595]
                    idx = 0
                    while idx < _1106:
                        mem[idx + _795 + _803 + _979 + 32] = mem[idx + _595 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1106) <= _1106:
                        _1200 = mem[64]
                        mem[mem[64]] = _1106 + _795 + _803 + _979 - mem[64]
                        mem[64] = _1106 + _795 + _803 + _979 + 32
                        if ceil32(_979) == -1:
                            revert with 0, 17
                        s = ceil32(_979) + 1
                        t = _1200
                        u = _460
                        continue 
                    mem[_1106 + _795 + _803 + _979 + 32] = 0
                    _1201 = mem[64]
                    mem[mem[64]] = _1106 + _795 + _803 + _979 - mem[64]
                    mem[64] = _1106 + _795 + _803 + _979 + 32
                    if ceil32(_979) == -1:
                        revert with 0, 17
                    s = ceil32(_979) + 1
                    t = _1201
                    u = _460
                    continue 
                mem[_979 + _795 + _803 + 32] = 0
                _1107 = mem[_595]
                idx = 0
                while idx < _1107:
                    mem[idx + _795 + _803 + _979 + 32] = mem[idx + _595 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1107) <= _1107:
                    _1202 = mem[64]
                    mem[mem[64]] = _1107 + _795 + _803 + _979 - mem[64]
                    mem[64] = _1107 + _795 + _803 + _979 + 32
                    if ceil32(_979) == -1:
                        revert with 0, 17
                    s = ceil32(_979) + 1
                    t = _1202
                    u = _460
                    continue 
                mem[_1107 + _795 + _803 + _979 + 32] = 0
                _1203 = mem[64]
                mem[mem[64]] = _1107 + _795 + _803 + _979 - mem[64]
                mem[64] = _1107 + _795 + _803 + _979 + 32
                if ceil32(_979) == -1:
                    revert with 0, 17
                s = ceil32(_979) + 1
                t = _1203
                u = _460
                continue 
            _465 = mem[64]
            mem[mem[64]] = 32
            _474 = mem[t]
            mem[mem[64] + 32] = mem[t]
            idx = 0
            while idx < _474:
                mem[idx + _465 + 64] = mem[idx + t + 32]
                idx = idx + 32
                continue 
            if ceil32(_474) > _474:
                mem[_474 + _465 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_474) + _465 + -mem[64] + 64
        revert with 0, 'LAST CLAIM TIME: NO NODE OWNER'
    revert with 0, 'NO NODE OWNER'
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
    if arg1.length >= 32:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if not msg.sender:
        revert with 0, 'NODE CREATION:  creation from the zero address'
    if stor26[msg.sender]:
        revert with 0, 'NODE CREATION: Blacklisted address'
    if nodeNumberOf[address(msg.sender)].field_0 > sub_054a2430:
        revert with 0, 'NODE CREATION: Exceeds max allowed nodes.'
    if msg.sender == sub_47b29845Address:
        revert with 0, 'NODE CREATION: futureUsePool and distributionPool cannot create node'
    if msg.sender == distributionPoolAddress:
        revert with 0, 'NODE CREATION: futureUsePool and distributionPool cannot create node'
    mem[ceil32(ceil32(arg1.length)) + 101] = msg.sender
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(ceil32(arg1.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < nodePrice:
        revert with 0, 'NODE CREATION: Balance too low for creation.'
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 101] = msg.sender
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 133] = this.address
    require ext_code.size(stor8)
    staticcall stor8.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= nodePrice:
        revert with 0, 'NODE CREATION: Allowance too low'
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 101] = this.address
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < swapTokensAmount:
        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 101] = msg.sender
        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = this.address
        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = nodePrice
        require ext_code.size(stor8)
        call stor8.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, nodePrice
        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[0] = msg.sender
        mem[32] = 16
        idx = 0
        while idx < nodeNumberOf[address(msg.sender)].field_0:
            _4835 = sha3(mem[128 len mem[96]])
            mem[0] = sha3(address(msg.sender), 16)
            _4846 = mem[64]
            if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                    mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(msg.sender)][idx].field_0)
                    if sha3(mem[mem[64] len uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5]) == _4835:
                        revert with 0, 'CREATE NODE: Name not available'
                else:
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            revert with 0, 'CREATE NODE: Name not available'
                    else:
                        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                            mem[s + _4846] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _4846 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) - mem[64]]) == _4835:
                            revert with 0, 'CREATE NODE: Name not available'
            else:
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                    mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(msg.sender)][idx].field_0)
                    if sha3(mem[mem[64] len nodeNumberOf[address(msg.sender)][idx].field_1 % 128]) == _4835:
                        revert with 0, 'CREATE NODE: Name not available'
                else:
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            revert with 0, 'CREATE NODE: Name not available'
                    else:
                        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                        s = 0
                        t = sha3(mem[0])
                        while s < nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                            mem[s + _4846] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _4846 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 - mem[64]]) == _4835:
                            revert with 0, 'CREATE NODE: Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor18.length > test266151307():
            revert with 0, 65
        _4856 = mem[64]
        mem[mem[64]] = stor18.length
        mem[64] = mem[64] + (32 * stor18.length) + 32
        if not stor18.length:
            s = 0
            while s < mem[_4856]:
                if s >= mem[_4856]:
                    revert with 0, 50
                if mem[(32 * s) + _4856 + 44 len 20] != msg.sender:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                stor18.length++
                stor18[stor18.length] = msg.sender
                mem[_4856 + (32 * stor18.length) + 32] = 96
                mem[_4856 + (32 * stor18.length) + 64] = block.timestamp
                mem[_4856 + (32 * stor18.length) + 96] = block.timestamp
                nodeNumberOf[address(msg.sender)].field_0++
                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not mem[96]:
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                        s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                        idx = 128
                        while mem[96] + 128 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                        revert with 0, 34
                    if not mem[96]:
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                        s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                        idx = 128
                        while mem[96] + 128 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                idx = 0
                while idx < mem[96]:
                    mem[idx + _4856 + (32 * stor18.length) + 128] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(mem[96]) > mem[96]:
                    mem[mem[96] + _4856 + (32 * stor18.length) + 128] = 0
                emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4856 + (32 * stor18.length) + 128 len mem[96]])
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                if autoDistri:
                    if not distribution:
                        if distributions.length < 1:
                            revert with 0, 17
                        if distributions.length - 1 >= distributions.length:
                            revert with 0, 50
                        if distributions[distributions.length - 1].field_0 > !claimTime:
                            revert with 0, 17
                        if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                            distribution = 1
                            if not stor18.length:
                                revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                            distributions.length++
                            distributions[distributions.length].field_0 = block.timestamp
                            stor31EC[stor17.length] = rewardPerNode
                            if lastDistributionCount == -1:
                                revert with 0, 17
                            lastDistributionCount++
                            distribution = 0
                            emit 0xc2d3e44e: block.timestamp, rewardPerNode
        else:
            mem[_4856 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
            idx = 0
            while idx < mem[_4856]:
                if idx >= mem[_4856]:
                    revert with 0, 50
                if mem[(32 * idx) + _4856 + 44 len 20] != msg.sender:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor18.length++
                stor18[stor18.length] = msg.sender
                mem[_4856 + (32 * stor18.length) + 32] = 96
                mem[_4856 + (32 * stor18.length) + 64] = block.timestamp
                mem[_4856 + (32 * stor18.length) + 96] = block.timestamp
                nodeNumberOf[address(msg.sender)].field_0++
                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not mem[96]:
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                        s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                        idx = 128
                        while mem[96] + 128 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                        revert with 0, 34
                    if not mem[96]:
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                        s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                        idx = 128
                        while mem[96] + 128 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                idx = 0
                while idx < mem[96]:
                    mem[idx + _4856 + (32 * stor18.length) + 128] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(mem[96]) > mem[96]:
                    mem[mem[96] + _4856 + (32 * stor18.length) + 128] = 0
                emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4856 + (32 * stor18.length) + 128 len mem[96]])
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                if autoDistri:
                    if not distribution:
                        if distributions.length < 1:
                            revert with 0, 17
                        if distributions.length - 1 >= distributions.length:
                            revert with 0, 50
                        if distributions[distributions.length - 1].field_0 > !claimTime:
                            revert with 0, 17
                        if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                            distribution = 1
                            if not stor18.length:
                                revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                            distributions.length++
                            distributions[distributions.length].field_0 = block.timestamp
                            stor31EC[stor17.length] = rewardPerNode
                            if lastDistributionCount == -1:
                                revert with 0, 17
                            lastDistributionCount++
                            distribution = 0
                            emit 0xc2d3e44e: block.timestamp, rewardPerNode
        mem[_4856 + (32 * stor18.length) + 32] = 96
        mem[_4856 + (32 * stor18.length) + 64] = block.timestamp
        mem[_4856 + (32 * stor18.length) + 96] = block.timestamp
        nodeNumberOf[address(msg.sender)].field_0++
        if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                revert with 0, 34
            if mem[96]:
                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
            else:
                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                idx = 0
                while (uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                    nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                revert with 0, 34
            if mem[96]:
                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
            else:
                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                idx = 0
                while nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32 > idx:
                    nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
        mem[_4856 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + _4856 + (32 * stor18.length) + 128] = 0
        emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4856 + (32 * stor18.length) + 128 len mem[96]])
    else:
        if not uint8(stor30.field_8):
            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 101] = msg.sender
            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = this.address
            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = nodePrice
            require ext_code.size(stor8)
            call stor8.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, nodePrice
            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[0] = msg.sender
            mem[32] = 16
            idx = 0
            while idx < nodeNumberOf[address(msg.sender)].field_0:
                _4837 = sha3(mem[128 len mem[96]])
                mem[0] = sha3(address(msg.sender), 16)
                _4848 = mem[64]
                if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                        mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(msg.sender)][idx].field_0)
                        if sha3(mem[mem[64] len uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5]) == _4837:
                            revert with 0, 'CREATE NODE: Name not available'
                    else:
                        if bool(nodeNumberOf[address(msg.sender)][idx].field_0) != 1:
                            if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                                revert with 0, 'CREATE NODE: Name not available'
                        else:
                            mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            s = 0
                            t = sha3(mem[0])
                            while s < uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                                mem[s + _4848] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            if sha3(mem[mem[64] len _4848 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) - mem[64]]) == _4837:
                                revert with 0, 'CREATE NODE: Name not available'
                else:
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                        mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(msg.sender)][idx].field_0)
                        if sha3(mem[mem[64] len nodeNumberOf[address(msg.sender)][idx].field_1 % 128]) == _4837:
                            revert with 0, 'CREATE NODE: Name not available'
                    else:
                        if bool(nodeNumberOf[address(msg.sender)][idx].field_0) != 1:
                            if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                                revert with 0, 'CREATE NODE: Name not available'
                        else:
                            mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                            s = 0
                            t = sha3(mem[0])
                            while s < nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                                mem[s + _4848] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            if sha3(mem[mem[64] len _4848 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 - mem[64]]) == _4837:
                                revert with 0, 'CREATE NODE: Name not available'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stor18.length > test266151307():
                revert with 0, 65
            _4857 = mem[64]
            mem[mem[64]] = stor18.length
            mem[64] = mem[64] + (32 * stor18.length) + 32
            if not stor18.length:
                s = 0
                while s < mem[_4857]:
                    if s >= mem[_4857]:
                        revert with 0, 50
                    if mem[(32 * s) + _4857 + 44 len 20] != msg.sender:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    stor18.length++
                    stor18[stor18.length] = msg.sender
                    mem[_4857 + (32 * stor18.length) + 32] = 96
                    mem[_4857 + (32 * stor18.length) + 64] = block.timestamp
                    mem[_4857 + (32 * stor18.length) + 96] = block.timestamp
                    nodeNumberOf[address(msg.sender)].field_0++
                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                        if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not mem[96]:
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                            idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                            while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                            s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                            idx = 128
                            while mem[96] + 128 > idx:
                                stor[s] = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                            revert with 0, 34
                        if not mem[96]:
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                            idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                            while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                            s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                            idx = 128
                            while mem[96] + 128 > idx:
                                stor[s] = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                    idx = 0
                    while idx < mem[96]:
                        mem[idx + _4857 + (32 * stor18.length) + 128] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[96]) > mem[96]:
                        mem[mem[96] + _4857 + (32 * stor18.length) + 128] = 0
                    emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4857 + (32 * stor18.length) + 128 len mem[96]])
                    if totalNodesCreated == -1:
                        revert with 0, 17
                    totalNodesCreated++
                    if autoDistri:
                        if not distribution:
                            if distributions.length < 1:
                                revert with 0, 17
                            if distributions.length - 1 >= distributions.length:
                                revert with 0, 50
                            if distributions[distributions.length - 1].field_0 > !claimTime:
                                revert with 0, 17
                            if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                                distribution = 1
                                if not stor18.length:
                                    revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                                distributions.length++
                                distributions[distributions.length].field_0 = block.timestamp
                                stor31EC[stor17.length] = rewardPerNode
                                if lastDistributionCount == -1:
                                    revert with 0, 17
                                lastDistributionCount++
                                distribution = 0
                                emit 0xc2d3e44e: block.timestamp, rewardPerNode
            else:
                mem[_4857 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                idx = 0
                while idx < mem[_4857]:
                    if idx >= mem[_4857]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4857 + 44 len 20] != msg.sender:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    stor18.length++
                    stor18[stor18.length] = msg.sender
                    mem[_4857 + (32 * stor18.length) + 32] = 96
                    mem[_4857 + (32 * stor18.length) + 64] = block.timestamp
                    mem[_4857 + (32 * stor18.length) + 96] = block.timestamp
                    nodeNumberOf[address(msg.sender)].field_0++
                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                        if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not mem[96]:
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                            idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                            while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                            s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                            idx = 128
                            while mem[96] + 128 > idx:
                                stor[s] = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                            revert with 0, 34
                        if not mem[96]:
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                            idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                            while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                            s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                            idx = 128
                            while mem[96] + 128 > idx:
                                stor[s] = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                    idx = 0
                    while idx < mem[96]:
                        mem[idx + _4857 + (32 * stor18.length) + 128] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[96]) > mem[96]:
                        mem[mem[96] + _4857 + (32 * stor18.length) + 128] = 0
                    emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4857 + (32 * stor18.length) + 128 len mem[96]])
                    if totalNodesCreated == -1:
                        revert with 0, 17
                    totalNodesCreated++
                    if autoDistri:
                        if not distribution:
                            if distributions.length < 1:
                                revert with 0, 17
                            if distributions.length - 1 >= distributions.length:
                                revert with 0, 50
                            if distributions[distributions.length - 1].field_0 > !claimTime:
                                revert with 0, 17
                            if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                                distribution = 1
                                if not stor18.length:
                                    revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                                distributions.length++
                                distributions[distributions.length].field_0 = block.timestamp
                                stor31EC[stor17.length] = rewardPerNode
                                if lastDistributionCount == -1:
                                    revert with 0, 17
                                lastDistributionCount++
                                distribution = 0
                                emit 0xc2d3e44e: block.timestamp, rewardPerNode
            mem[_4857 + (32 * stor18.length) + 32] = 96
            mem[_4857 + (32 * stor18.length) + 64] = block.timestamp
            mem[_4857 + (32 * stor18.length) + 96] = block.timestamp
            nodeNumberOf[address(msg.sender)].field_0++
            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if mem[96]:
                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                else:
                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                    idx = 0
                    while (uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                        nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                    revert with 0, 34
                if mem[96]:
                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                else:
                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                    idx = 0
                    while nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32 > idx:
                        nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
            mem[_4857 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) > mem[96]:
                mem[mem[96] + _4857 + (32 * stor18.length) + 128] = 0
            emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4857 + (32 * stor18.length) + 128 len mem[96]])
        else:
            if uint8(stor30.field_0):
                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 101] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = this.address
                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = nodePrice
                require ext_code.size(stor8)
                call stor8.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, nodePrice
                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 97
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[0] = msg.sender
                mem[32] = 16
                idx = 0
                while idx < nodeNumberOf[address(msg.sender)].field_0:
                    _4839 = sha3(mem[128 len mem[96]])
                    mem[0] = sha3(address(msg.sender), 16)
                    _4850 = mem[64]
                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                        if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                            mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(msg.sender)][idx].field_0)
                            if sha3(mem[mem[64] len uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5]) == _4839:
                                revert with 0, 'CREATE NODE: Name not available'
                        else:
                            if bool(nodeNumberOf[address(msg.sender)][idx].field_0) != 1:
                                if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                                    revert with 0, 'CREATE NODE: Name not available'
                            else:
                                mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                                    mem[s + _4850] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if sha3(mem[mem[64] len _4850 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) - mem[64]]) == _4839:
                                    revert with 0, 'CREATE NODE: Name not available'
                    else:
                        if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                            mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(msg.sender)][idx].field_0)
                            if sha3(mem[mem[64] len nodeNumberOf[address(msg.sender)][idx].field_1 % 128]) == _4839:
                                revert with 0, 'CREATE NODE: Name not available'
                        else:
                            if bool(nodeNumberOf[address(msg.sender)][idx].field_0) != 1:
                                if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                                    revert with 0, 'CREATE NODE: Name not available'
                            else:
                                mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                s = 0
                                t = sha3(mem[0])
                                while s < nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                                    mem[s + _4850] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if sha3(mem[mem[64] len _4850 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 - mem[64]]) == _4839:
                                    revert with 0, 'CREATE NODE: Name not available'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if stor18.length > test266151307():
                    revert with 0, 65
                _4858 = mem[64]
                mem[mem[64]] = stor18.length
                mem[64] = mem[64] + (32 * stor18.length) + 32
                if not stor18.length:
                    s = 0
                    while s < mem[_4858]:
                        if s >= mem[_4858]:
                            revert with 0, 50
                        if mem[(32 * s) + _4858 + 44 len 20] != msg.sender:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        stor18.length++
                        stor18[stor18.length] = msg.sender
                        mem[_4858 + (32 * stor18.length) + 32] = 96
                        mem[_4858 + (32 * stor18.length) + 64] = block.timestamp
                        mem[_4858 + (32 * stor18.length) + 96] = block.timestamp
                        nodeNumberOf[address(msg.sender)].field_0++
                        if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not mem[96]:
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                idx = 128
                                while mem[96] + 128 > idx:
                                    stor[s] = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                                revert with 0, 34
                            if not mem[96]:
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                idx = 128
                                while mem[96] + 128 > idx:
                                    stor[s] = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                        idx = 0
                        while idx < mem[96]:
                            mem[idx + _4858 + (32 * stor18.length) + 128] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[96]) > mem[96]:
                            mem[mem[96] + _4858 + (32 * stor18.length) + 128] = 0
                        emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4858 + (32 * stor18.length) + 128 len mem[96]])
                        if totalNodesCreated == -1:
                            revert with 0, 17
                        totalNodesCreated++
                        if autoDistri:
                            if not distribution:
                                if distributions.length < 1:
                                    revert with 0, 17
                                if distributions.length - 1 >= distributions.length:
                                    revert with 0, 50
                                if distributions[distributions.length - 1].field_0 > !claimTime:
                                    revert with 0, 17
                                if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                                    distribution = 1
                                    if not stor18.length:
                                        revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                                    distributions.length++
                                    distributions[distributions.length].field_0 = block.timestamp
                                    stor31EC[stor17.length] = rewardPerNode
                                    if lastDistributionCount == -1:
                                        revert with 0, 17
                                    lastDistributionCount++
                                    distribution = 0
                                    emit 0xc2d3e44e: block.timestamp, rewardPerNode
                else:
                    mem[_4858 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                    idx = 0
                    while idx < mem[_4858]:
                        if idx >= mem[_4858]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4858 + 44 len 20] != msg.sender:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        stor18.length++
                        stor18[stor18.length] = msg.sender
                        mem[_4858 + (32 * stor18.length) + 32] = 96
                        mem[_4858 + (32 * stor18.length) + 64] = block.timestamp
                        mem[_4858 + (32 * stor18.length) + 96] = block.timestamp
                        nodeNumberOf[address(msg.sender)].field_0++
                        if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not mem[96]:
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                idx = 128
                                while mem[96] + 128 > idx:
                                    stor[s] = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                                revert with 0, 34
                            if not mem[96]:
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                idx = 128
                                while mem[96] + 128 > idx:
                                    stor[s] = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                        idx = 0
                        while idx < mem[96]:
                            mem[idx + _4858 + (32 * stor18.length) + 128] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[96]) > mem[96]:
                            mem[mem[96] + _4858 + (32 * stor18.length) + 128] = 0
                        emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4858 + (32 * stor18.length) + 128 len mem[96]])
                        if totalNodesCreated == -1:
                            revert with 0, 17
                        totalNodesCreated++
                        if autoDistri:
                            if not distribution:
                                if distributions.length < 1:
                                    revert with 0, 17
                                if distributions.length - 1 >= distributions.length:
                                    revert with 0, 50
                                if distributions[distributions.length - 1].field_0 > !claimTime:
                                    revert with 0, 17
                                if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                                    distribution = 1
                                    if not stor18.length:
                                        revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                                    distributions.length++
                                    distributions[distributions.length].field_0 = block.timestamp
                                    stor31EC[stor17.length] = rewardPerNode
                                    if lastDistributionCount == -1:
                                        revert with 0, 17
                                    lastDistributionCount++
                                    distribution = 0
                                    emit 0xc2d3e44e: block.timestamp, rewardPerNode
                mem[_4858 + (32 * stor18.length) + 32] = 96
                mem[_4858 + (32 * stor18.length) + 64] = block.timestamp
                mem[_4858 + (32 * stor18.length) + 96] = block.timestamp
                nodeNumberOf[address(msg.sender)].field_0++
                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if mem[96]:
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                    else:
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                        idx = 0
                        while (uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                            nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                        revert with 0, 34
                    if mem[96]:
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                    else:
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                        idx = 0
                        while nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32 > idx:
                            nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                mem[_4858 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) > mem[96]:
                    mem[mem[96] + _4858 + (32 * stor18.length) + 128] = 0
                emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4858 + (32 * stor18.length) + 128 len mem[96]])
            else:
                if owner == msg.sender:
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 101] = msg.sender
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = this.address
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = nodePrice
                    require ext_code.size(stor8)
                    call stor8.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, nodePrice
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 97
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[0] = msg.sender
                    mem[32] = 16
                    idx = 0
                    while idx < nodeNumberOf[address(msg.sender)].field_0:
                        _4841 = sha3(mem[128 len mem[96]])
                        mem[0] = sha3(address(msg.sender), 16)
                        _4852 = mem[64]
                        if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                            if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                                mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(msg.sender)][idx].field_0)
                                if sha3(mem[mem[64] len uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5]) == _4841:
                                    revert with 0, 'CREATE NODE: Name not available'
                            else:
                                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                                        revert with 0, 'CREATE NODE: Name not available'
                                else:
                                    mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                                        mem[s + _4852] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _4852 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) - mem[64]]) == _4841:
                                        revert with 0, 'CREATE NODE: Name not available'
                        else:
                            if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                                mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(msg.sender)][idx].field_0)
                                if sha3(mem[mem[64] len nodeNumberOf[address(msg.sender)][idx].field_1 % 128]) == _4841:
                                    revert with 0, 'CREATE NODE: Name not available'
                            else:
                                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                                        revert with 0, 'CREATE NODE: Name not available'
                                else:
                                    mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                                        mem[s + _4852] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _4852 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 - mem[64]]) == _4841:
                                        revert with 0, 'CREATE NODE: Name not available'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if stor18.length > test266151307():
                        revert with 0, 65
                    _4859 = mem[64]
                    mem[mem[64]] = stor18.length
                    mem[64] = mem[64] + (32 * stor18.length) + 32
                    if not stor18.length:
                        s = 0
                        while s < mem[_4859]:
                            if s >= mem[_4859]:
                                revert with 0, 50
                            if mem[(32 * s) + _4859 + 44 len 20] != msg.sender:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            stor18.length++
                            stor18[stor18.length] = msg.sender
                            mem[_4859 + (32 * stor18.length) + 32] = 96
                            mem[_4859 + (32 * stor18.length) + 64] = block.timestamp
                            mem[_4859 + (32 * stor18.length) + 96] = block.timestamp
                            nodeNumberOf[address(msg.sender)].field_0++
                            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not mem[96]:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                    idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                    while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                    s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                    idx = 128
                                    while mem[96] + 128 > idx:
                                        stor[s] = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                    while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not mem[96]:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                    idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                    while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                    s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                    idx = 128
                                    while mem[96] + 128 > idx:
                                        stor[s] = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                    while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                            idx = 0
                            while idx < mem[96]:
                                mem[idx + _4859 + (32 * stor18.length) + 128] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _4859 + (32 * stor18.length) + 128] = 0
                            emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4859 + (32 * stor18.length) + 128 len mem[96]])
                            if totalNodesCreated == -1:
                                revert with 0, 17
                            totalNodesCreated++
                            if autoDistri:
                                if not distribution:
                                    if distributions.length < 1:
                                        revert with 0, 17
                                    if distributions.length - 1 >= distributions.length:
                                        revert with 0, 50
                                    if distributions[distributions.length - 1].field_0 > !claimTime:
                                        revert with 0, 17
                                    if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                                        distribution = 1
                                        if not stor18.length:
                                            revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                                        distributions.length++
                                        distributions[distributions.length].field_0 = block.timestamp
                                        stor31EC[stor17.length] = rewardPerNode
                                        if lastDistributionCount == -1:
                                            revert with 0, 17
                                        lastDistributionCount++
                                        distribution = 0
                                        emit 0xc2d3e44e: block.timestamp, rewardPerNode
                    else:
                        mem[_4859 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                        idx = 0
                        while idx < mem[_4859]:
                            if idx >= mem[_4859]:
                                revert with 0, 50
                            if mem[(32 * idx) + _4859 + 44 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor18.length++
                            stor18[stor18.length] = msg.sender
                            mem[_4859 + (32 * stor18.length) + 32] = 96
                            mem[_4859 + (32 * stor18.length) + 64] = block.timestamp
                            mem[_4859 + (32 * stor18.length) + 96] = block.timestamp
                            nodeNumberOf[address(msg.sender)].field_0++
                            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not mem[96]:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                    idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                    while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                    s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                    idx = 128
                                    while mem[96] + 128 > idx:
                                        stor[s] = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                    while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not mem[96]:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                    idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                    while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                    s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                    idx = 128
                                    while mem[96] + 128 > idx:
                                        stor[s] = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                    while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                            idx = 0
                            while idx < mem[96]:
                                mem[idx + _4859 + (32 * stor18.length) + 128] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _4859 + (32 * stor18.length) + 128] = 0
                            emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4859 + (32 * stor18.length) + 128 len mem[96]])
                            if totalNodesCreated == -1:
                                revert with 0, 17
                            totalNodesCreated++
                            if autoDistri:
                                if not distribution:
                                    if distributions.length < 1:
                                        revert with 0, 17
                                    if distributions.length - 1 >= distributions.length:
                                        revert with 0, 50
                                    if distributions[distributions.length - 1].field_0 > !claimTime:
                                        revert with 0, 17
                                    if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                                        distribution = 1
                                        if not stor18.length:
                                            revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                                        distributions.length++
                                        distributions[distributions.length].field_0 = block.timestamp
                                        stor31EC[stor17.length] = rewardPerNode
                                        if lastDistributionCount == -1:
                                            revert with 0, 17
                                        lastDistributionCount++
                                        distribution = 0
                                        emit 0xc2d3e44e: block.timestamp, rewardPerNode
                    mem[_4859 + (32 * stor18.length) + 32] = 96
                    mem[_4859 + (32 * stor18.length) + 64] = block.timestamp
                    mem[_4859 + (32 * stor18.length) + 96] = block.timestamp
                    nodeNumberOf[address(msg.sender)].field_0++
                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                        if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if mem[96]:
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                        else:
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                            idx = 0
                            while (uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                                nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                            revert with 0, 34
                        if mem[96]:
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                        else:
                            nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                            idx = 0
                            while nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32 > idx:
                                nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                    mem[_4859 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) > mem[96]:
                        mem[mem[96] + _4859 + (32 * stor18.length) + 128] = 0
                    emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4859 + (32 * stor18.length) + 128 len mem[96]])
                else:
                    mem[0] = msg.sender
                    mem[32] = 27
                    if stor27[address(msg.sender)]:
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 101] = msg.sender
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 133] = this.address
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 165] = nodePrice
                        require ext_code.size(stor8)
                        call stor8.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, nodePrice
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 97
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[0] = msg.sender
                        mem[32] = 16
                        idx = 0
                        while idx < nodeNumberOf[address(msg.sender)].field_0:
                            _4843 = sha3(mem[128 len mem[96]])
                            mem[0] = sha3(address(msg.sender), 16)
                            _4854 = mem[64]
                            if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                                    mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(msg.sender)][idx].field_0)
                                    if sha3(mem[mem[64] len uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5]) == _4843:
                                        revert with 0, 'CREATE NODE: Name not available'
                                else:
                                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) != 1:
                                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                                            revert with 0, 'CREATE NODE: Name not available'
                                    else:
                                        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                        s = 0
                                        t = sha3(mem[0])
                                        while s < uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                                            mem[s + _4854] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        if sha3(mem[mem[64] len _4854 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) - mem[64]]) == _4843:
                                            revert with 0, 'CREATE NODE: Name not available'
                            else:
                                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                                    mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(msg.sender)][idx].field_0)
                                    if sha3(mem[mem[64] len nodeNumberOf[address(msg.sender)][idx].field_1 % 128]) == _4843:
                                        revert with 0, 'CREATE NODE: Name not available'
                                else:
                                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) != 1:
                                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                                            revert with 0, 'CREATE NODE: Name not available'
                                    else:
                                        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                        s = 0
                                        t = sha3(mem[0])
                                        while s < nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                                            mem[s + _4854] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        if sha3(mem[mem[64] len _4854 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 - mem[64]]) == _4843:
                                            revert with 0, 'CREATE NODE: Name not available'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if stor18.length > test266151307():
                            revert with 0, 65
                        _4860 = mem[64]
                        mem[mem[64]] = stor18.length
                        mem[64] = mem[64] + (32 * stor18.length) + 32
                        if not stor18.length:
                            s = 0
                            while s < mem[_4860]:
                                if s >= mem[_4860]:
                                    revert with 0, 50
                                if mem[(32 * s) + _4860 + 44 len 20] != msg.sender:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                stor18.length++
                                stor18[stor18.length] = msg.sender
                                mem[_4860 + (32 * stor18.length) + 32] = 96
                                mem[_4860 + (32 * stor18.length) + 64] = block.timestamp
                                mem[_4860 + (32 * stor18.length) + 96] = block.timestamp
                                nodeNumberOf[address(msg.sender)].field_0++
                                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if not mem[96]:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                        s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        idx = 128
                                        while mem[96] + 128 > idx:
                                            stor[s] = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not mem[96]:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                        s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        idx = 128
                                        while mem[96] + 128 > idx:
                                            stor[s] = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                                idx = 0
                                while idx < mem[96]:
                                    mem[idx + _4860 + (32 * stor18.length) + 128] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[96]) > mem[96]:
                                    mem[mem[96] + _4860 + (32 * stor18.length) + 128] = 0
                                emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4860 + (32 * stor18.length) + 128 len mem[96]])
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if autoDistri:
                                    if not distribution:
                                        if distributions.length < 1:
                                            revert with 0, 17
                                        if distributions.length - 1 >= distributions.length:
                                            revert with 0, 50
                                        if distributions[distributions.length - 1].field_0 > !claimTime:
                                            revert with 0, 17
                                        if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                                            distribution = 1
                                            if not stor18.length:
                                                revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                                            distributions.length++
                                            distributions[distributions.length].field_0 = block.timestamp
                                            stor31EC[stor17.length] = rewardPerNode
                                            if lastDistributionCount == -1:
                                                revert with 0, 17
                                            lastDistributionCount++
                                            distribution = 0
                                            emit 0xc2d3e44e: block.timestamp, rewardPerNode
                        else:
                            mem[_4860 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                            idx = 0
                            while idx < mem[_4860]:
                                if idx >= mem[_4860]:
                                    revert with 0, 50
                                if mem[(32 * idx) + _4860 + 44 len 20] != msg.sender:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                stor18.length++
                                stor18[stor18.length] = msg.sender
                                mem[_4860 + (32 * stor18.length) + 32] = 96
                                mem[_4860 + (32 * stor18.length) + 64] = block.timestamp
                                mem[_4860 + (32 * stor18.length) + 96] = block.timestamp
                                nodeNumberOf[address(msg.sender)].field_0++
                                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if not mem[96]:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                        s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        idx = 128
                                        while mem[96] + 128 > idx:
                                            stor[s] = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not mem[96]:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                        s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        idx = 128
                                        while mem[96] + 128 > idx:
                                            stor[s] = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                                idx = 0
                                while idx < mem[96]:
                                    mem[idx + _4860 + (32 * stor18.length) + 128] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[96]) > mem[96]:
                                    mem[mem[96] + _4860 + (32 * stor18.length) + 128] = 0
                                emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4860 + (32 * stor18.length) + 128 len mem[96]])
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if autoDistri:
                                    if not distribution:
                                        if distributions.length < 1:
                                            revert with 0, 17
                                        if distributions.length - 1 >= distributions.length:
                                            revert with 0, 50
                                        if distributions[distributions.length - 1].field_0 > !claimTime:
                                            revert with 0, 17
                                        if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                                            distribution = 1
                                            if not stor18.length:
                                                revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                                            distributions.length++
                                            distributions[distributions.length].field_0 = block.timestamp
                                            stor31EC[stor17.length] = rewardPerNode
                                            if lastDistributionCount == -1:
                                                revert with 0, 17
                                            lastDistributionCount++
                                            distribution = 0
                                            emit 0xc2d3e44e: block.timestamp, rewardPerNode
                        mem[_4860 + (32 * stor18.length) + 32] = 96
                        mem[_4860 + (32 * stor18.length) + 64] = block.timestamp
                        mem[_4860 + (32 * stor18.length) + 96] = block.timestamp
                        nodeNumberOf[address(msg.sender)].field_0++
                        if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if mem[96]:
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                            else:
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                idx = 0
                                while (uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                                    nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                                revert with 0, 34
                            if mem[96]:
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                            else:
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                idx = 0
                                while nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32 > idx:
                                    nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                        mem[_4860 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) > mem[96]:
                            mem[mem[96] + _4860 + (32 * stor18.length) + 128] = 0
                        emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_4860 + (32 * stor18.length) + 128 len mem[96]])
                    else:
                        uint8(stor30.field_0) = 1
                        if ext_call.return_data[0] and sub_600b02d4 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 97] = 2
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = stor8
                        require ext_code.size(dexRouterAddress)
                        staticcall dexRouterAddress.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 193] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 161] = ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 197] = dexRouterAddress
                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0] * sub_600b02d4 / 100
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args dexRouterAddress, ext_call.return_data[0] * sub_600b02d4 / 100, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 261 len 9 * ceil32(return_data.size)]
                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 193] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 193] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 197] = ext_call.return_data[0] * sub_600b02d4 / 100
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 357] = 2
                        idx = 0
                        s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 389
                        t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 293] = this.address
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 325] = block.timestamp
                        require ext_code.size(dexRouterAddress)
                        call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * sub_600b02d4 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 389 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        call sub_47b29845Address with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] and rewardsFee > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * rewardsFee / 100 and stor29 > -1 / ext_call.return_data[0] * rewardsFee / 100:
                            revert with 0, 17
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 193] = 2
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 225] = stor8
                        require ext_code.size(dexRouterAddress)
                        staticcall dexRouterAddress.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 257] = ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 293] = dexRouterAddress
                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 325] = ext_call.return_data[0] * rewardsFee / 100 * stor29 / 100
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args dexRouterAddress, ext_call.return_data[0] * rewardsFee / 100 * stor29 / 100
                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 289
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 289] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 293] = ext_call.return_data[0] * rewardsFee / 100 * stor29 / 100
                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 357] = 160
                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 453] = 2
                        idx = 0
                        s = ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 485
                        t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 225
                        while idx < mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 193]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 389] = this.address
                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 421] = block.timestamp
                        require ext_code.size(dexRouterAddress)
                        call dexRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * rewardsFee / 100 * stor29 / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 453 len (32 * mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 193]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        call distributionPoolAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] * rewardsFee / 100 < ext_call.return_data[0] * rewardsFee / 100 * stor29 / 100:
                            revert with 0, 17
                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 293] = distributionPoolAddress
                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 325] = (ext_call.return_data[0] * rewardsFee / 100) - (ext_call.return_data[0] * rewardsFee / 100 * stor29 / 100)
                        require ext_code.size(stor8)
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args distributionPoolAddress, (ext_call.return_data[0] * rewardsFee / 100) - (ext_call.return_data[0] * rewardsFee / 100 * stor29 / 100), mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 357 len 20 * ceil32(return_data.size)]
                        mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 289] = 2
                        mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 321] = stor8
                        require ext_code.size(dexRouterAddress)
                        staticcall dexRouterAddress.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 385] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 353] = ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 389] = dexRouterAddress
                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 421] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args dexRouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 385] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 385
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 385] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 389] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 421] = 0
                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 453] = 160
                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 549] = 2
                        idx = 0
                        s = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 581
                        t = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 321
                        while idx < mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 289]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 485] = this.address
                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 517] = block.timestamp
                        require ext_code.size(dexRouterAddress)
                        call dexRouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 289]) + -mem[64] + 577]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[mem[64] + 4] = dexRouterAddress
                        mem[mem[64] + 36] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args dexRouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17068 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_17068] == bool(mem[_17068])
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = sub_47b29845Address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(dexRouterAddress)
                        call dexRouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, sub_47b29845Address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                        emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18600 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _19481 = mem[_18600]
                        _19642 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_19642 + 32 len 64] = call.data[calldata.size len 64]
                        if not mem[_19642]:
                            revert with 0, 50
                        mem[_19642 + 32] = stor8
                        require ext_code.size(dexRouterAddress)
                        staticcall dexRouterAddress.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[_19642 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _19642 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_19642]:
                            revert with 0, 50
                        mem[_19642 + 64] = ext_call.return_data[12 len 20]
                        mem[_19642 + ceil32(return_data.size) + 100] = dexRouterAddress
                        mem[_19642 + ceil32(return_data.size) + 132] = _19481
                        require ext_code.size(stor8)
                        call stor8.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args dexRouterAddress, _19481
                        mem[_19642 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _19642 + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[_19642 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_19642 + (2 * ceil32(return_data.size)) + 100] = _19481
                        mem[_19642 + (2 * ceil32(return_data.size)) + 132] = 0
                        mem[_19642 + (2 * ceil32(return_data.size)) + 164] = 160
                        mem[_19642 + (2 * ceil32(return_data.size)) + 260] = mem[_19642]
                        idx = 0
                        s = _19642 + (2 * ceil32(return_data.size)) + 292
                        t = _19642 + 32
                        while idx < mem[_19642]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_19642 + (2 * ceil32(return_data.size)) + 196] = this.address
                        mem[_19642 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                        require ext_code.size(dexRouterAddress)
                        call dexRouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _19642 + (2 * ceil32(return_data.size)) + (32 * mem[_19642]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor30.field_0) = 0
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = nodePrice
                        require ext_code.size(stor8)
                        call stor8.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, nodePrice
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _21651 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_21651] == bool(mem[_21651])
                        mem[0] = msg.sender
                        mem[32] = 16
                        idx = 0
                        while idx < nodeNumberOf[address(msg.sender)].field_0:
                            _25440 = sha3(mem[128 len mem[96]])
                            mem[0] = sha3(address(msg.sender), 16)
                            _25442 = mem[64]
                            if bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                                    mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(msg.sender)][idx].field_0)
                                    if sha3(mem[mem[64] len uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5]) == _25440:
                                        revert with 0, 'CREATE NODE: Name not available'
                                else:
                                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) != 1:
                                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                                            revert with 0, 'CREATE NODE: Name not available'
                                    else:
                                        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                        s = 0
                                        t = sha3(mem[0])
                                        while s < uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5:
                                            mem[s + _25442] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        if sha3(mem[mem[64] len _25442 + (uint255(nodeNumberOf[address(msg.sender)][idx].field_0) * 0.5) - mem[64]]) == _25440:
                                            revert with 0, 'CREATE NODE: Name not available'
                            else:
                                if bool(nodeNumberOf[address(msg.sender)][idx].field_0) == nodeNumberOf[address(msg.sender)][idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(nodeNumberOf[address(msg.sender)][idx].field_0):
                                    mem[mem[64]] = Mask(248, 8, nodeNumberOf[address(msg.sender)][idx].field_0)
                                    if sha3(mem[mem[64] len nodeNumberOf[address(msg.sender)][idx].field_1 % 128]) == _25440:
                                        revert with 0, 'CREATE NODE: Name not available'
                                else:
                                    if bool(nodeNumberOf[address(msg.sender)][idx].field_0) != 1:
                                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                                            revert with 0, 'CREATE NODE: Name not available'
                                    else:
                                        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 16))
                                        s = 0
                                        t = sha3(mem[0])
                                        while s < nodeNumberOf[address(msg.sender)][idx].field_1 % 128:
                                            mem[s + _25442] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        if sha3(mem[mem[64] len _25442 + nodeNumberOf[address(msg.sender)][idx].field_1 % 128 - mem[64]]) == _25440:
                                            revert with 0, 'CREATE NODE: Name not available'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if stor18.length > test266151307():
                            revert with 0, 65
                        _25683 = mem[64]
                        mem[mem[64]] = stor18.length
                        mem[64] = mem[64] + (32 * stor18.length) + 32
                        if not stor18.length:
                            s = 0
                            while s < mem[_25683]:
                                if s >= mem[_25683]:
                                    revert with 0, 50
                                if mem[(32 * s) + _25683 + 44 len 20] != msg.sender:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                stor18.length++
                                stor18[stor18.length] = msg.sender
                                mem[_25683 + (32 * stor18.length) + 32] = 96
                                mem[_25683 + (32 * stor18.length) + 64] = block.timestamp
                                mem[_25683 + (32 * stor18.length) + 96] = block.timestamp
                                nodeNumberOf[address(msg.sender)].field_0++
                                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if not mem[96]:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                        s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        idx = 128
                                        while mem[96] + 128 > idx:
                                            stor[s] = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not mem[96]:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                        s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        idx = 128
                                        while mem[96] + 128 > idx:
                                            stor[s] = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                                idx = 0
                                while idx < mem[96]:
                                    mem[idx + _25683 + (32 * stor18.length) + 128] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[96]) > mem[96]:
                                    mem[mem[96] + _25683 + (32 * stor18.length) + 128] = 0
                                emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_25683 + (32 * stor18.length) + 128 len mem[96]])
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if autoDistri:
                                    if not distribution:
                                        if distributions.length < 1:
                                            revert with 0, 17
                                        if distributions.length - 1 >= distributions.length:
                                            revert with 0, 50
                                        if distributions[distributions.length - 1].field_0 > !claimTime:
                                            revert with 0, 17
                                        if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                                            distribution = 1
                                            if not stor18.length:
                                                revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                                            distributions.length++
                                            distributions[distributions.length].field_0 = block.timestamp
                                            stor31EC[stor17.length] = rewardPerNode
                                            if lastDistributionCount == -1:
                                                revert with 0, 17
                                            lastDistributionCount++
                                            distribution = 0
                                            emit 0xc2d3e44e: block.timestamp, rewardPerNode
                            mem[_25683 + (32 * stor18.length) + 32] = 96
                            mem[_25683 + (32 * stor18.length) + 64] = block.timestamp
                            mem[_25683 + (32 * stor18.length) + 96] = block.timestamp
                            nodeNumberOf[address(msg.sender)].field_0++
                            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if mem[96]:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                                    mem[_25683 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    var310001 = ceil32(mem[96])
                                else:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                    idx = 0
                                    while (uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                                        nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                                    mem[_25683 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    var306001 = ceil32(mem[96])
                            else:
                                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                if mem[96]:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                                    mem[_25683 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    var311001 = ceil32(mem[96])
                                else:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                    idx = 0
                                    while nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32 > idx:
                                        nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                                    mem[_25683 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    var307001 = ceil32(mem[96])
                        else:
                            mem[_25683 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                            idx = 0
                            while idx < mem[_25683]:
                                if idx >= mem[_25683]:
                                    revert with 0, 50
                                if mem[(32 * idx) + _25683 + 44 len 20] != msg.sender:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                stor18.length++
                                stor18[stor18.length] = msg.sender
                                mem[_25683 + (32 * stor18.length) + 32] = 96
                                mem[_25683 + (32 * stor18.length) + 64] = block.timestamp
                                mem[_25683 + (32 * stor18.length) + 96] = block.timestamp
                                nodeNumberOf[address(msg.sender)].field_0++
                                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if not mem[96]:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                        s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        idx = 128
                                        while mem[96] + 128 > idx:
                                            stor[s] = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + ((uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not mem[96]:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = (2 * mem[96]) + 1
                                        s = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0))
                                        idx = 128
                                        while mem[96] + 128 > idx:
                                            stor[s] = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                        while sha3(sha3(sha3(address(msg.sender), 16)) + (3 * nodeNumberOf[address(msg.sender)].field_0)) + (nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32) > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                                nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                                idx = 0
                                while idx < mem[96]:
                                    mem[idx + _25683 + (32 * stor18.length) + 128] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[96]) > mem[96]:
                                    mem[mem[96] + _25683 + (32 * stor18.length) + 128] = 0
                                emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_25683 + (32 * stor18.length) + 128 len mem[96]])
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if autoDistri:
                                    if not distribution:
                                        if distributions.length < 1:
                                            revert with 0, 17
                                        if distributions.length - 1 >= distributions.length:
                                            revert with 0, 50
                                        if distributions[distributions.length - 1].field_0 > !claimTime:
                                            revert with 0, 17
                                        if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                                            distribution = 1
                                            if not stor18.length:
                                                revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                                            distributions.length++
                                            distributions[distributions.length].field_0 = block.timestamp
                                            stor31EC[stor17.length] = rewardPerNode
                                            if lastDistributionCount == -1:
                                                revert with 0, 17
                                            lastDistributionCount++
                                            distribution = 0
                                            emit 0xc2d3e44e: block.timestamp, rewardPerNode
                            mem[_25683 + (32 * stor18.length) + 32] = 96
                            mem[_25683 + (32 * stor18.length) + 64] = block.timestamp
                            mem[_25683 + (32 * stor18.length) + 96] = block.timestamp
                            nodeNumberOf[address(msg.sender)].field_0++
                            if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0):
                                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if mem[96]:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                                    mem[_25683 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    var311001 = ceil32(mem[96])
                                else:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                    idx = 0
                                    while (uint255(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                                        nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                                    mem[_25683 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    var307001 = ceil32(mem[96])
                            else:
                                if bool(nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0) == nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                if mem[96]:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                                    mem[_25683 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    var312001 = ceil32(mem[96])
                                else:
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_0 = 0
                                    idx = 0
                                    while nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_1 % 128 + 31 / 32 > idx:
                                        nodeNumberOf[address(msg.sender)][(3 * nodeNumberOf[address(msg.sender)].field_0) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_256 = block.timestamp
                                    nodeNumberOf[address(msg.sender)][nodeNumberOf[address(msg.sender)].field_0].field_512 = block.timestamp
                                    mem[_25683 + (32 * stor18.length) + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    var308001 = ceil32(mem[96])
                        if ceil32(mem[96]) > mem[96]:
                            mem[mem[96] + _25683 + (32 * stor18.length) + 128] = 0
                        emit 0x49392756: block.timestamp, block.timestamp, msg.sender, sha3(mem[_25683 + (32 * stor18.length) + 128 len mem[96]])
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
    if autoDistri:
        if not distribution:
            if distributions.length < 1:
                revert with 0, 17
            if distributions.length - 1 >= distributions.length:
                revert with 0, 50
            if distributions[distributions.length - 1].field_0 > !claimTime:
                revert with 0, 17
            if distributions[distributions.length - 1].field_0 + claimTime <= block.timestamp:
                distribution = 1
                if not stor18.length:
                    revert with 0, 'DISTRI REWARDS: NO NODE OWNERS'
                distributions.length++
                distributions[distributions.length].field_0 = block.timestamp
                stor31EC[stor17.length] = rewardPerNode
                if lastDistributionCount == -1:
                    revert with 0, 17
                lastDistributionCount++
                distribution = 0
                emit 0xc2d3e44e: block.timestamp, rewardPerNode
}

function sub_dac8b9c8(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'Arrays not same length'
    if ('cd', 100).length != ('cd', 36).length:
        revert with 0, 'Arrays not same length'
    if ('cd', 132).length != ('cd', 36).length:
        revert with 0, 'Arrays not same length'
    if not ('cd', 36).length:
        revert with 0, 'Arrays cannot be length 0'
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    mem[96] = ('cd', 36)[0]
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    mem[128] = ('cd', 68)[0]
    distributions.length++
    distributions[distributions.length].field_0 = ('cd', 36)[0]
    distributions[distributions.length].field_256 = ('cd', 68)[0]
    if not ('cd', 132).length:
        revert with 0, 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    stor18.length++
    stor18[stor18.length] = address(('cd', 132)[0])
    if not ('cd', 132).length:
        revert with 0, 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    mem[32] = 16
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[0] < calldata.size + -cd[4] - 67
    require cd[(cd[4] + ('cd', 4)[0] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 68 <= calldata.size - cd[(cd[4] + ('cd', 4)[0] + 36)]
    mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[0] + 36)]) + 288
    mem[256] = cd[(cd[4] + ('cd', 4)[0] + 36)]
    mem[288 len cd[(cd[4] + ('cd', 4)[0] + 36)]] = call.data[cd[4] + ('cd', 4)[0] + 68 len cd[(cd[4] + ('cd', 4)[0] + 36)]]
    mem[cd[(cd[4] + ('cd', 4)[0] + 36)] + 288] = 0
    mem[160] = 256
    if not ('cd', 100).length:
        revert with 0, 50
    mem[192] = ('cd', 100)[0]
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    if ('cd', 36)[0] < 1:
        revert with 0, 17
    mem[224] = ('cd', 36)[0] - 1
    nodeNumberOf[address(('cd', 132)[0])].field_0++
    if bool(nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_0):
        if bool(nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_0) == uint255(nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_0) * 0.5 < 32:
            revert with 0, 34
        mem[0] = sha3(sha3(address(('cd', 132)[0]), 16)) + (3 * nodeNumberOf[address(('cd', 132)[0])].field_0)
        if cd[(cd[4] + ('cd', 4)[0] + 36)]:
            nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0][].field_0 = Array(len=cd[(cd[4] + ('cd', 4)[0] + 36)], data=call.data[cd[4] + ('cd', 4)[0] + 68 len cd[(cd[4] + ('cd', 4)[0] + 36)]])
            nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_256 = ('cd', 100)[0]
            nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_512 = ('cd', 36)[0] - 1
            if totalNodesCreated == -1:
                revert with 0, 17
            totalNodesCreated++
            if ('cd', 36).length > 1:
                idx = 1
                while idx < ('cd', 36).length:
                    if distributions.length < 1:
                        revert with 0, 17
                    if distributions.length - 1 >= distributions.length:
                        revert with 0, 50
                    mem[0] = 17
                    if distributions[distributions.length - 1].field_0 == cd[((32 * idx) + cd[36] + 36)]:
                        if idx >= ('cd', 132).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                        if stor18.length > test266151307():
                            revert with 0, 65
                        _6152 = mem[64]
                        mem[mem[64]] = stor18.length
                        mem[64] = mem[64] + (32 * stor18.length) + 32
                        if not stor18.length:
                            _7928 = mem[_6152]
                            s = 0
                            while s < _7928:
                                if s >= mem[_6152]:
                                    revert with 0, 50
                                if mem[(32 * s) + _6152 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _7928 = mem[_6152]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _8849 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _8889 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_8889] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_8889 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_8889 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_8849] = _8889
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_8849 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_8849 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7928 = mem[_6152]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8889 + 32
                                        while _8889 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7928 = mem[_6152]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7928 = mem[_6152]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7928 = mem[_6152]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8889 + 32
                                        while _8889 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7928 = mem[_6152]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7928 = mem[_6152]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _7928 = mem[_6152]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _8817 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _8840 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_8840] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_8840 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_8840 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_8817] = _8840
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_8817 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_8817 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8840 + 32
                                    while _8840 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8840 + 32
                                    while _8840 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_6152 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                            _7929 = mem[_6152]
                            s = 0
                            while s < _7929:
                                if s >= mem[_6152]:
                                    revert with 0, 50
                                if mem[(32 * s) + _6152 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _7929 = mem[_6152]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _8851 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _8891 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_8891] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_8891 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_8891 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_8851] = _8891
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_8851 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_8851 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7929 = mem[_6152]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8891 + 32
                                        while _8891 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7929 = mem[_6152]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7929 = mem[_6152]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7929 = mem[_6152]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8891 + 32
                                        while _8891 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7929 = mem[_6152]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7929 = mem[_6152]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _7929 = mem[_6152]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _8819 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _8841 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_8841] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_8841 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_8841 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_8819] = _8841
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_8819 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_8819 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8841 + 32
                                    while _8841 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8841 + 32
                                    while _8841 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        _6068 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        mem[_6068] = cd[((32 * idx) + cd[36] + 36)]
                        if idx >= ('cd', 68).length:
                            revert with 0, 50
                        mem[_6068 + 32] = cd[((32 * idx) + cd[68] + 36)]
                        distributions.length++
                        mem[0] = 17
                        distributions[distributions.length].field_0 = cd[((32 * idx) + cd[36] + 36)]
                        distributions[distributions.length].field_256 = cd[((32 * idx) + cd[68] + 36)]
                        if idx >= ('cd', 132).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                        if stor18.length > test266151307():
                            revert with 0, 65
                        _6178 = mem[64]
                        mem[mem[64]] = stor18.length
                        mem[64] = mem[64] + (32 * stor18.length) + 32
                        if not stor18.length:
                            _7930 = mem[_6178]
                            s = 0
                            while s < _7930:
                                if s >= mem[_6178]:
                                    revert with 0, 50
                                if mem[(32 * s) + _6178 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _7930 = mem[_6178]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _8853 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _8893 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_8893] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_8893 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_8893 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_8853] = _8893
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_8853 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_8853 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7930 = mem[_6178]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8893 + 32
                                        while _8893 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7930 = mem[_6178]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7930 = mem[_6178]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7930 = mem[_6178]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8893 + 32
                                        while _8893 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7930 = mem[_6178]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7930 = mem[_6178]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _7930 = mem[_6178]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _8821 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _8842 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_8842] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_8842 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_8842 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_8821] = _8842
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_8821 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_8821 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8842 + 32
                                    while _8842 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8842 + 32
                                    while _8842 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_6178 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                            _7931 = mem[_6178]
                            s = 0
                            while s < _7931:
                                if s >= mem[_6178]:
                                    revert with 0, 50
                                if mem[(32 * s) + _6178 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _7931 = mem[_6178]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _8855 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _8895 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_8895] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_8895 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_8895 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_8855] = _8895
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_8855 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_8855 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7931 = mem[_6178]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8895 + 32
                                        while _8895 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7931 = mem[_6178]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7931 = mem[_6178]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7931 = mem[_6178]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8895 + 32
                                        while _8895 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7931 = mem[_6178]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7931 = mem[_6178]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _7931 = mem[_6178]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _8823 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _8843 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_8843] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_8843 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_8843 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_8823] = _8843
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_8823 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_8823 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8843 + 32
                                    while _8843 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8843 + 32
                                    while _8843 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                    if totalNodesCreated == -1:
                        revert with 0, 17
                    totalNodesCreated++
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_0 = 0
            idx = 0
            while (uint255(nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_0) * 0.5) + 31 / 32 > idx:
                nodeNumberOf[address(('cd', 132)[0])][(3 * nodeNumberOf[address(('cd', 132)[0])].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
            nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_256 = ('cd', 100)[0]
            nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_512 = ('cd', 36)[0] - 1
            if totalNodesCreated == -1:
                revert with 0, 17
            totalNodesCreated++
            if ('cd', 36).length > 1:
                idx = 1
                while idx < ('cd', 36).length:
                    if distributions.length < 1:
                        revert with 0, 17
                    if distributions.length - 1 >= distributions.length:
                        revert with 0, 50
                    mem[0] = 17
                    if distributions[distributions.length - 1].field_0 == cd[((32 * idx) + cd[36] + 36)]:
                        if idx >= ('cd', 132).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                        if stor18.length > test266151307():
                            revert with 0, 65
                        _4054 = mem[64]
                        mem[mem[64]] = stor18.length
                        mem[64] = mem[64] + (32 * stor18.length) + 32
                        if not stor18.length:
                            _6002 = mem[_4054]
                            s = 0
                            while s < _6002:
                                if s >= mem[_4054]:
                                    revert with 0, 50
                                if mem[(32 * s) + _4054 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _6002 = mem[_4054]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _6201 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _6337 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_6337] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_6337 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_6337 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_6201] = _6337
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_6201 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_6201 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6002 = mem[_4054]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6337 + 32
                                        while _6337 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6002 = mem[_4054]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6002 = mem[_4054]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6002 = mem[_4054]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6337 + 32
                                        while _6337 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6002 = mem[_4054]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6002 = mem[_4054]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _6002 = mem[_4054]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _6093 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _6157 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_6157] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_6157 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_6157 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_6093] = _6157
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_6093 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_6093 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6157 + 32
                                    while _6157 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6157 + 32
                                    while _6157 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_4054 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                            _6003 = mem[_4054]
                            s = 0
                            while s < _6003:
                                if s >= mem[_4054]:
                                    revert with 0, 50
                                if mem[(32 * s) + _4054 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _6003 = mem[_4054]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _6203 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _6339 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_6339] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_6339 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_6339 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_6203] = _6339
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_6203 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_6203 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6003 = mem[_4054]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6339 + 32
                                        while _6339 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6003 = mem[_4054]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6003 = mem[_4054]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6003 = mem[_4054]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6339 + 32
                                        while _6339 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6003 = mem[_4054]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6003 = mem[_4054]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _6003 = mem[_4054]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _6095 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _6158 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_6158] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_6158 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_6158 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_6095] = _6158
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_6095 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_6095 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6158 + 32
                                    while _6158 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6158 + 32
                                    while _6158 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        _4026 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        mem[_4026] = cd[((32 * idx) + cd[36] + 36)]
                        if idx >= ('cd', 68).length:
                            revert with 0, 50
                        mem[_4026 + 32] = cd[((32 * idx) + cd[68] + 36)]
                        distributions.length++
                        mem[0] = 17
                        distributions[distributions.length].field_0 = cd[((32 * idx) + cd[36] + 36)]
                        distributions[distributions.length].field_256 = cd[((32 * idx) + cd[68] + 36)]
                        if idx >= ('cd', 132).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                        if stor18.length > test266151307():
                            revert with 0, 65
                        _4078 = mem[64]
                        mem[mem[64]] = stor18.length
                        mem[64] = mem[64] + (32 * stor18.length) + 32
                        if not stor18.length:
                            _6004 = mem[_4078]
                            s = 0
                            while s < _6004:
                                if s >= mem[_4078]:
                                    revert with 0, 50
                                if mem[(32 * s) + _4078 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _6004 = mem[_4078]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _6205 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _6341 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_6341] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_6341 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_6341 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_6205] = _6341
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_6205 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_6205 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6004 = mem[_4078]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6341 + 32
                                        while _6341 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6004 = mem[_4078]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6004 = mem[_4078]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6004 = mem[_4078]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6341 + 32
                                        while _6341 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6004 = mem[_4078]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6004 = mem[_4078]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _6004 = mem[_4078]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _6097 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _6159 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_6159] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_6159 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_6159 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_6097] = _6159
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_6097 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_6097 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6159 + 32
                                    while _6159 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6159 + 32
                                    while _6159 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_4078 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                            _6005 = mem[_4078]
                            s = 0
                            while s < _6005:
                                if s >= mem[_4078]:
                                    revert with 0, 50
                                if mem[(32 * s) + _4078 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _6005 = mem[_4078]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _6207 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _6343 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_6343] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_6343 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_6343 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_6207] = _6343
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_6207 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_6207 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6005 = mem[_4078]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6343 + 32
                                        while _6343 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6005 = mem[_4078]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6005 = mem[_4078]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6005 = mem[_4078]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6343 + 32
                                        while _6343 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6005 = mem[_4078]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6005 = mem[_4078]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _6005 = mem[_4078]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _6099 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _6160 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_6160] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_6160 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_6160 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_6099] = _6160
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_6099 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_6099 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6160 + 32
                                    while _6160 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6160 + 32
                                    while _6160 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                    if totalNodesCreated == -1:
                        revert with 0, 17
                    totalNodesCreated++
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        if bool(nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_0) == nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_1 % 128 < 32:
            revert with 0, 34
        mem[0] = sha3(sha3(address(('cd', 132)[0]), 16)) + (3 * nodeNumberOf[address(('cd', 132)[0])].field_0)
        if cd[(cd[4] + ('cd', 4)[0] + 36)]:
            nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0][].field_0 = Array(len=cd[(cd[4] + ('cd', 4)[0] + 36)], data=call.data[cd[4] + ('cd', 4)[0] + 68 len cd[(cd[4] + ('cd', 4)[0] + 36)]])
            nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_256 = ('cd', 100)[0]
            nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_512 = ('cd', 36)[0] - 1
            if totalNodesCreated == -1:
                revert with 0, 17
            totalNodesCreated++
            if ('cd', 36).length > 1:
                idx = 1
                while idx < ('cd', 36).length:
                    if distributions.length < 1:
                        revert with 0, 17
                    if distributions.length - 1 >= distributions.length:
                        revert with 0, 50
                    mem[0] = 17
                    if distributions[distributions.length - 1].field_0 == cd[((32 * idx) + cd[36] + 36)]:
                        if idx >= ('cd', 132).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                        if stor18.length > test266151307():
                            revert with 0, 65
                        _6165 = mem[64]
                        mem[mem[64]] = stor18.length
                        mem[64] = mem[64] + (32 * stor18.length) + 32
                        if not stor18.length:
                            _7932 = mem[_6165]
                            s = 0
                            while s < _7932:
                                if s >= mem[_6165]:
                                    revert with 0, 50
                                if mem[(32 * s) + _6165 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _7932 = mem[_6165]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _8857 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _8897 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_8897] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_8897 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_8897 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_8857] = _8897
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_8857 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_8857 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7932 = mem[_6165]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8897 + 32
                                        while _8897 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7932 = mem[_6165]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7932 = mem[_6165]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7932 = mem[_6165]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8897 + 32
                                        while _8897 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7932 = mem[_6165]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7932 = mem[_6165]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _7932 = mem[_6165]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _8825 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _8844 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_8844] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_8844 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_8844 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_8825] = _8844
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_8825 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_8825 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8844 + 32
                                    while _8844 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8844 + 32
                                    while _8844 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_6165 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                            _7933 = mem[_6165]
                            s = 0
                            while s < _7933:
                                if s >= mem[_6165]:
                                    revert with 0, 50
                                if mem[(32 * s) + _6165 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _7933 = mem[_6165]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _8859 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _8899 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_8899] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_8899 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_8899 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_8859] = _8899
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_8859 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_8859 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7933 = mem[_6165]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8899 + 32
                                        while _8899 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7933 = mem[_6165]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7933 = mem[_6165]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7933 = mem[_6165]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8899 + 32
                                        while _8899 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7933 = mem[_6165]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7933 = mem[_6165]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _7933 = mem[_6165]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _8827 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _8845 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_8845] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_8845 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_8845 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_8827] = _8845
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_8827 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_8827 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8845 + 32
                                    while _8845 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8845 + 32
                                    while _8845 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        _6069 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        mem[_6069] = cd[((32 * idx) + cd[36] + 36)]
                        if idx >= ('cd', 68).length:
                            revert with 0, 50
                        mem[_6069 + 32] = cd[((32 * idx) + cd[68] + 36)]
                        distributions.length++
                        mem[0] = 17
                        distributions[distributions.length].field_0 = cd[((32 * idx) + cd[36] + 36)]
                        distributions[distributions.length].field_256 = cd[((32 * idx) + cd[68] + 36)]
                        if idx >= ('cd', 132).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                        if stor18.length > test266151307():
                            revert with 0, 65
                        _6181 = mem[64]
                        mem[mem[64]] = stor18.length
                        mem[64] = mem[64] + (32 * stor18.length) + 32
                        if not stor18.length:
                            _7934 = mem[_6181]
                            s = 0
                            while s < _7934:
                                if s >= mem[_6181]:
                                    revert with 0, 50
                                if mem[(32 * s) + _6181 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _7934 = mem[_6181]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _8861 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _8901 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_8901] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_8901 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_8901 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_8861] = _8901
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_8861 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_8861 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7934 = mem[_6181]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8901 + 32
                                        while _8901 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7934 = mem[_6181]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7934 = mem[_6181]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7934 = mem[_6181]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8901 + 32
                                        while _8901 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7934 = mem[_6181]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7934 = mem[_6181]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _7934 = mem[_6181]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _8829 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _8846 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_8846] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_8846 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_8846 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_8829] = _8846
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_8829 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_8829 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8846 + 32
                                    while _8846 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8846 + 32
                                    while _8846 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_6181 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                            _7935 = mem[_6181]
                            s = 0
                            while s < _7935:
                                if s >= mem[_6181]:
                                    revert with 0, 50
                                if mem[(32 * s) + _6181 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _7935 = mem[_6181]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _8863 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _8903 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_8903] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_8903 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_8903 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_8863] = _8903
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_8863 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_8863 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7935 = mem[_6181]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8903 + 32
                                        while _8903 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7935 = mem[_6181]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _7935 = mem[_6181]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7935 = mem[_6181]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _8903 + 32
                                        while _8903 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _7935 = mem[_6181]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _7935 = mem[_6181]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _7935 = mem[_6181]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _8831 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _8847 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_8847] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_8847 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_8847 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_8831] = _8847
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_8831 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_8831 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8847 + 32
                                    while _8847 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _8847 + 32
                                    while _8847 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                    if totalNodesCreated == -1:
                        revert with 0, 17
                    totalNodesCreated++
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_0 = 0
            idx = 0
            while nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_1 % 128 + 31 / 32 > idx:
                nodeNumberOf[address(('cd', 132)[0])][(3 * nodeNumberOf[address(('cd', 132)[0])].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
            nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_256 = ('cd', 100)[0]
            nodeNumberOf[address(('cd', 132)[0])][nodeNumberOf[address(('cd', 132)[0])].field_0].field_512 = ('cd', 36)[0] - 1
            if totalNodesCreated == -1:
                revert with 0, 17
            totalNodesCreated++
            if ('cd', 36).length > 1:
                idx = 1
                while idx < ('cd', 36).length:
                    if distributions.length < 1:
                        revert with 0, 17
                    if distributions.length - 1 >= distributions.length:
                        revert with 0, 50
                    mem[0] = 17
                    if distributions[distributions.length - 1].field_0 == cd[((32 * idx) + cd[36] + 36)]:
                        if idx >= ('cd', 132).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                        if stor18.length > test266151307():
                            revert with 0, 65
                        _4057 = mem[64]
                        mem[mem[64]] = stor18.length
                        mem[64] = mem[64] + (32 * stor18.length) + 32
                        if not stor18.length:
                            _6014 = mem[_4057]
                            s = 0
                            while s < _6014:
                                if s >= mem[_4057]:
                                    revert with 0, 50
                                if mem[(32 * s) + _4057 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _6014 = mem[_4057]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _6227 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _6361 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_6361] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_6361 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_6361 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_6227] = _6361
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_6227 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_6227 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6014 = mem[_4057]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6361 + 32
                                        while _6361 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6014 = mem[_4057]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6014 = mem[_4057]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6014 = mem[_4057]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6361 + 32
                                        while _6361 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6014 = mem[_4057]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6014 = mem[_4057]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _6014 = mem[_4057]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _6117 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _6170 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_6170] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_6170 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_6170 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_6117] = _6170
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_6117 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_6117 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6170 + 32
                                    while _6170 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6170 + 32
                                    while _6170 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_4057 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                            _6015 = mem[_4057]
                            s = 0
                            while s < _6015:
                                if s >= mem[_4057]:
                                    revert with 0, 50
                                if mem[(32 * s) + _4057 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _6015 = mem[_4057]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _6229 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _6363 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_6363] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_6363 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_6363 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_6229] = _6363
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_6229 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_6229 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6015 = mem[_4057]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6363 + 32
                                        while _6363 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6015 = mem[_4057]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6015 = mem[_4057]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6015 = mem[_4057]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6363 + 32
                                        while _6363 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6015 = mem[_4057]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6015 = mem[_4057]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _6015 = mem[_4057]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _6119 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _6171 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_6171] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_6171 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_6171 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_6119] = _6171
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_6119 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_6119 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6171 + 32
                                    while _6171 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6171 + 32
                                    while _6171 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        _4029 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        mem[_4029] = cd[((32 * idx) + cd[36] + 36)]
                        if idx >= ('cd', 68).length:
                            revert with 0, 50
                        mem[_4029 + 32] = cd[((32 * idx) + cd[68] + 36)]
                        distributions.length++
                        mem[0] = 17
                        distributions[distributions.length].field_0 = cd[((32 * idx) + cd[36] + 36)]
                        distributions[distributions.length].field_256 = cd[((32 * idx) + cd[68] + 36)]
                        if idx >= ('cd', 132).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                        if stor18.length > test266151307():
                            revert with 0, 65
                        _4087 = mem[64]
                        mem[mem[64]] = stor18.length
                        mem[64] = mem[64] + (32 * stor18.length) + 32
                        if not stor18.length:
                            _6016 = mem[_4087]
                            s = 0
                            while s < _6016:
                                if s >= mem[_4087]:
                                    revert with 0, 50
                                if mem[(32 * s) + _4087 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _6016 = mem[_4087]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _6231 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _6365 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_6365] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_6365 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_6365 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_6231] = _6365
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_6231 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_6231 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6016 = mem[_4087]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6365 + 32
                                        while _6365 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6016 = mem[_4087]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6016 = mem[_4087]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6016 = mem[_4087]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6365 + 32
                                        while _6365 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6016 = mem[_4087]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6016 = mem[_4087]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _6016 = mem[_4087]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _6121 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _6172 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_6172] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_6172 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_6172 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_6121] = _6172
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_6121 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_6121 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6172 + 32
                                    while _6172 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6172 + 32
                                    while _6172 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_4087 + 32 len 32 * stor18.length] = call.data[calldata.size len 32 * stor18.length]
                            _6017 = mem[_4087]
                            s = 0
                            while s < _6017:
                                if s >= mem[_4087]:
                                    revert with 0, 50
                                if mem[(32 * s) + _4087 + 44 len 20] != address(cd[((32 * idx) + cd[132] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    _6017 = mem[_4087]
                                    s = s + 1
                                    continue 
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                stor18.length++
                                stor18[stor18.length] = address(cd[((32 * idx) + cd[132] + 36)])
                                if idx >= ('cd', 132).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                                mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[32] = 16
                                _6233 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                                require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                _6367 = mem[64]
                                mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                                mem[_6367] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                                mem[_6367 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                                mem[_6367 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[_6233] = _6367
                                if idx >= ('cd', 100).length:
                                    revert with 0, 50
                                mem[_6233 + 32] = cd[((32 * idx) + cd[100] + 36)]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 0, 17
                                mem[_6233 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6017 = mem[_4087]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6367 + 32
                                        while _6367 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6017 = mem[_4087]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            _6017 = mem[_4087]
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                    if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6017 = mem[_4087]
                                            s = s + 1
                                            continue 
                                    else:
                                        nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                        t = _6367 + 32
                                        while _6367 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                            stor[s] = mem[t]
                                            _6017 = mem[_4087]
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                        while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            _6017 = mem[_4087]
                                            s = s + 1
                                            continue 
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                                nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                                if totalNodesCreated == -1:
                                    revert with 0, 17
                                totalNodesCreated++
                                if idx == -1:
                                    revert with 0, 17
                                _6017 = mem[_4087]
                                idx = idx + 1
                                continue 
                            if idx >= ('cd', 132).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[32] = 16
                            _6123 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            _6173 = mem[64]
                            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
                            mem[_6173] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                            mem[_6173 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                            mem[_6173 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[_6123] = _6173
                            if idx >= ('cd', 100).length:
                                revert with 0, 50
                            mem[_6123 + 32] = cd[((32 * idx) + cd[100] + 36)]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 0, 17
                            mem[_6123 + 64] = cd[((32 * idx) + cd[36] + 36)] - 1
                            nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0++
                            if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0):
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6173 + 32
                                    while _6173 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + ((uint255(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0) == nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)
                                if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = 0
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_0 = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0))
                                    t = _6173 + 32
                                    while _6173 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (Mask(251, 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(sha3(address(cd[((32 * idx) + cd[132] + 36)]), 16)) + (3 * nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0)) + (nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[100] + 36)]
                    nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])][nodeNumberOf[address(cd[((32 * idx) + cd[132] + 36)])].field_0].field_512 = cd[((32 * idx) + cd[36] + 36)] - 1
                    if totalNodesCreated == -1:
                        revert with 0, 17
                    totalNodesCreated++
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}



}
