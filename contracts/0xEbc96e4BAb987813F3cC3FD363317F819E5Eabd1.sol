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
address sub_9bb5cd3fAddress;
address sub_6919f287Address;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address teamPoolAddress;
address distributionPoolAddress;
address devPoolAddress;
address advisorPoolAddress;
address deadWalletAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 futurFee;
uint256 totalFees;
uint256 cashoutFee;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint8 stor30;
uint8 stor30; offset 8
uint256 stor30; offset 8
uint256 swapTokensAmount;
uint256 sub_99b08a3c;
uint8 stor33;
uint256 stor34;
uint256 stor35;
mapping of uint8 stor36;
mapping of uint8 stor37;

function advisorPool() {
    return advisorPoolAddress
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
    return bool(stor36[arg1])
}

function rewardsFee() {
    return rewardsFee
}

function teamPool() {
    return teamPoolAddress
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

function sub_6919f287(?) {
    return sub_6919f287Address
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

function sub_99b08a3c(?) {
    return sub_99b08a3c
}

function sub_9bb5cd3f(?) {
    return sub_9bb5cd3fAddress
}

function futurFee() {
    return futurFee
}

function devPool() {
    return devPoolAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor37[arg1])
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
    stor27 = arg1
}

function updateMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor35 = arg1
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
    teamPoolAddress = arg1
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor33:
        revert with 0, 'trading is already open'
    stor33 = 1
    stor34 = block.number
}

function setMolecules(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6919f287Address = arg1
}

function sub_af153182(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devPoolAddress = address(arg1)
}

function setNodeManagement(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9bb5cd3fAddress = arg1
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
    stor36[address(arg1)] = uint8(arg2)
}

function getTotalStakedReward() {
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.totalStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalCreatedNodes() {
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.totalNodesCreated() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateLiquidityFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityPoolFee = arg1
    if rewardsFee > !arg1:
        revert with 0, 17
    if rewardsFee + arg1 > !futurFee:
        revert with 0, 17
    totalFees = rewardsFee + arg1 + futurFee
}

function updateRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsFee = arg1
    if arg1 > !liquidityPoolFee:
        revert with 0, 17
    if arg1 + liquidityPoolFee > !futurFee:
        revert with 0, 17
    totalFees = arg1 + liquidityPoolFee + futurFee
}

function updateFuturFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    futurFee = arg1
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
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.0xf74c9934 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function rescueFunds(uint256 arg1) {
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

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getAllNodesRewards(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 191 < return_data.size + 160
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require 64 <= return_data.size
    return ext_call.return_data[0 len 64]
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
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor37[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor37[address(arg1)] = uint8(arg2)
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
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getAllNodesRewards(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ceil32(return_data.size) + 191 < ceil32(return_data.size) + return_data.size + 160
    if not bool((2 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    require 64 <= return_data.size
    return ext_call.return_data[0 len 64]
}

function sub_5770fa8f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
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
    if ('cd', 4).length != 4:
        revert with 0, 'Wrong length'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x5770fa8f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = 32
    require ext_code.size(sub_9bb5cd3fAddress)
    call sub_9bb5cd3fAddress.0x5770fa8f with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function growMolecule(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_6919f287Address)
    staticcall sub_6919f287Address.getMoleculeLevel(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and sub_99b08a3c > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if balanceOf[address(msg.sender)] <= ext_call.return_data[0] * sub_99b08a3c:
        revert with 0, 'Not enough OXG to grow your Molecule'
    if not msg.sender:
        revert with 0, 'ERC20: transfer from the zero address'
    if not this.address:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < ext_call.return_data[0] * sub_99b08a3c:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] += -1 * ext_call.return_data[0] * sub_99b08a3c
    if balanceOf[this.address] > !(ext_call.return_data[0] * sub_99b08a3c):
        revert with 0, 17
    balanceOf[this.address] += ext_call.return_data[0] * sub_99b08a3c
    emit Transfer((ext_call.return_data[0] * sub_99b08a3c), msg.sender, this.address);
    require ext_code.size(sub_6919f287Address)
    call sub_6919f287Address.0xc5ea326f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_97579a83(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Zero address not permitted'
    if stor36[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if teamPoolAddress == msg.sender:
        revert with 0, 'Cannot upgrade nodes'
    if distributionPoolAddress == msg.sender:
        revert with 0, 'Cannot upgrade nodes'
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodeTier(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 4:
        revert with 0, 'Your Node is already at max level'
    if ext_call.return_data[0] > -2:
        revert with 0, 17
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodePrice(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodePrice(uint256 arg1) with:
            gas gas_remaining wei
           args (ext_call.return_data[0] + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if balanceOf[address(msg.sender)] < 0:
        revert with 0, 'NODE UPGRADE: Balance too low for upgrade.'
    if not msg.sender:
        revert with 0, 'ERC20: transfer from the zero address'
    if not this.address:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 0:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    if balanceOf[this.address] > !0:
        revert with 0, 17
    emit Transfer(0, msg.sender, this.address);
    require ext_code.size(sub_9bb5cd3fAddress)
    call sub_9bb5cd3fAddress.upgradeNode(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function cashoutAll() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT:  creation from the zero address'
    if stor36[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if teamPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getAllNodesRewards(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 127 < return_data.size + 96
    if not bool(ceil32(return_data.size) + 160 <= test266151307()):
        revert with 0, 65
    require 64 <= return_data.size
    if not ext_call.return_data[0]:
        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
    if not distributionPoolAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor18] < ext_call.return_data[0]:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor18] -= ext_call.return_data[0]
    if balanceOf[msg.sender] > !ext_call.return_data[0]:
        revert with 0, 17
    balanceOf[msg.sender] += ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
    if not distributionPoolAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not this.address:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor18] < ext_call.return_data[32]:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor18] -= ext_call.return_data[32]
    if balanceOf[this.address] > !ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[this.address] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], distributionPoolAddress, this.address);
    require ext_code.size(sub_9bb5cd3fAddress)
    call sub_9bb5cd3fAddress.cashoutAllNodesRewards(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT:  can't from the zero address'
    if stor36[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if teamPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodeReward(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodeFee(address arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args msg.sender, arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if not distributionPoolAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor18] < 0:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    if balanceOf[msg.sender] > !0:
        revert with 0, 17
    emit Transfer(0, distributionPoolAddress, msg.sender);
    if not distributionPoolAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not this.address:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor18] < ext_call.return_data[0]:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor18] -= ext_call.return_data[0]
    if balanceOf[this.address] > !ext_call.return_data[0]:
        revert with 0, 17
    balanceOf[this.address] += ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], distributionPoolAddress, this.address);
    require ext_code.size(sub_9bb5cd3fAddress)
    call sub_9bb5cd3fAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ffab39d7(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Zero address not permitted'
    if stor36[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if distributionPoolAddress == msg.sender:
        revert with 0, 'Cannot upgrade nodes'
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodeTier(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 4:
        revert with 0, 'Your Node is already at max level'
    if ext_call.return_data[0] > -2:
        revert with 0, 17
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodePrice(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodePrice(uint256 arg1) with:
            gas gas_remaining wei
           args (ext_call.return_data[0] + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodeReward(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 'NODE UPGRADE: Reward Balance too low for upgrade.'
    require ext_code.size(sub_9bb5cd3fAddress)
    call sub_9bb5cd3fAddress.borrowRewards(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not distributionPoolAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not this.address:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor18] < 0:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    if balanceOf[this.address] > !0:
        revert with 0, 17
    emit Transfer(0, distributionPoolAddress, this.address);
    require ext_code.size(sub_9bb5cd3fAddress)
    call sub_9bb5cd3fAddress.upgradeNode(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3dadb1bd(?) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if arg2.length <= 3:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if arg2.length >= 32:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if not msg.sender:
        revert with 0, 'NODE CREATION:  creation from the zero address'
    if stor36[address(msg.sender)]:
        revert with 0, 'NODE CREATION: Blacklisted address'
    if distributionPoolAddress == msg.sender:
        revert with 0, 'NODE CREATION: rewardsPool cannot create node'
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.0xd9201c54 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodeReward(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < 10^18 * ext_call.return_data[0]:
        revert with 0, 'NODE CREATION: Reward Balance too low for creation.'
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodePrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9bb5cd3fAddress)
    call sub_9bb5cd3fAddress.borrowRewards(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9bb5cd3fAddress)
    call sub_9bb5cd3fAddress.0x90219732 with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg2.length, data=arg2[all]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not distributionPoolAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not this.address:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor18] < 10^18 * ext_call.return_data[0]:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor18] += -1 * 10^18 * ext_call.return_data[0]
    if balanceOf[this.address] > !(10^18 * ext_call.return_data[0]):
        revert with 0, 17
    balanceOf[this.address] += 10^18 * ext_call.return_data[0]
    emit Transfer((10^18 * ext_call.return_data[0]), distributionPoolAddress, this.address);
}

function getNodesRewards() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0x6c95b0a200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.0x6c95b0a2 with:
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

function getNodesNames() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0xebb3c67a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodesNames(address arg1) with:
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
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0x9dab00f700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodesCreationTime(address arg1) with:
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
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0xb19197f700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.getNodesLastClaimTime(address arg1) with:
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

function createNodeWithTokens(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length <= 3:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if arg1.length >= 32:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if not msg.sender:
        revert with 0, 'NODE CREATION:  creation from the zero address'
    if stor36[address(msg.sender)]:
        revert with 0, 'NODE CREATION: Blacklisted address'
    if distributionPoolAddress == msg.sender:
        revert with 0, 'NODE CREATION: futur, dev and rewardsPool cannot create node'
    mem[ceil32(ceil32(arg1.length)) + 101] = arg2
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.0xd9201c54 with:
            gas gas_remaining wei
           args arg2
    mem[ceil32(ceil32(arg1.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0]:
        revert with 0, 'NODE CREATION: Balance too low for creation. Try lower tier.'
    if balanceOf[address(this.address)] < swapTokensAmount:
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not this.address:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] += -1 * 10^18 * ext_call.return_data[0]
        if balanceOf[this.address] > !(10^18 * ext_call.return_data[0]):
            revert with 0, 17
        balanceOf[this.address] += 10^18 * ext_call.return_data[0]
        emit Transfer((10^18 * ext_call.return_data[0]), msg.sender, this.address);
        require ext_code.size(sub_9bb5cd3fAddress)
        call sub_9bb5cd3fAddress.0x90219732 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
    else:
        if not uint8(stor30.field_8):
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] += -1 * 10^18 * ext_call.return_data[0]
            if balanceOf[this.address] > !(10^18 * ext_call.return_data[0]):
                revert with 0, 17
            balanceOf[this.address] += 10^18 * ext_call.return_data[0]
            emit Transfer((10^18 * ext_call.return_data[0]), msg.sender, this.address);
            require ext_code.size(sub_9bb5cd3fAddress)
            call sub_9bb5cd3fAddress.0x90219732 with:
                 gas gas_remaining wei
                args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
        else:
            if uint8(stor30.field_0):
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0]:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] += -1 * 10^18 * ext_call.return_data[0]
                if balanceOf[this.address] > !(10^18 * ext_call.return_data[0]):
                    revert with 0, 17
                balanceOf[this.address] += 10^18 * ext_call.return_data[0]
                emit Transfer((10^18 * ext_call.return_data[0]), msg.sender, this.address);
                require ext_code.size(sub_9bb5cd3fAddress)
                call sub_9bb5cd3fAddress.0x90219732 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
            else:
                if owner == msg.sender:
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0]:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] += -1 * 10^18 * ext_call.return_data[0]
                    if balanceOf[this.address] > !(10^18 * ext_call.return_data[0]):
                        revert with 0, 17
                    balanceOf[this.address] += 10^18 * ext_call.return_data[0]
                    emit Transfer((10^18 * ext_call.return_data[0]), msg.sender, this.address);
                    require ext_code.size(sub_9bb5cd3fAddress)
                    call sub_9bb5cd3fAddress.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                else:
                    if stor37[address(msg.sender)]:
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0]:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] += -1 * 10^18 * ext_call.return_data[0]
                        if balanceOf[this.address] > !(10^18 * ext_call.return_data[0]):
                            revert with 0, 17
                        balanceOf[this.address] += 10^18 * ext_call.return_data[0]
                        emit Transfer((10^18 * ext_call.return_data[0]), msg.sender, this.address);
                        require ext_code.size(sub_9bb5cd3fAddress)
                        call sub_9bb5cd3fAddress.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                    else:
                        uint8(stor30.field_0) = 1
                        if balanceOf[address(this.address)] and futurFee > -1 / balanceOf[address(this.address)]:
                            revert with 0, 17
                        if balanceOf[address(this.address)] * futurFee / 100 and stor28 > -1 / balanceOf[address(this.address)] * futurFee / 100:
                            revert with 0, 17
                        if balanceOf[address(this.address)] * futurFee / 100 and stor29 > -1 / balanceOf[address(this.address)] * futurFee / 100:
                            revert with 0, 17
                        if balanceOf[address(this.address)] * futurFee / 100 < balanceOf[address(this.address)] * futurFee / 100 * stor28 / 100:
                            revert with 0, 17
                        if (balanceOf[address(this.address)] * futurFee / 100) - (balanceOf[address(this.address)] * futurFee / 100 * stor28 / 100) < balanceOf[address(this.address)] * futurFee / 100 * stor29 / 100:
                            revert with 0, 17
                        if balanceOf[address(this.address)] and rewardsFee > -1 / balanceOf[address(this.address)]:
                            revert with 0, 17
                        if balanceOf[address(this.address)] * rewardsFee / 100 and stor27 > -1 / balanceOf[address(this.address)] * rewardsFee / 100:
                            revert with 0, 17
                        if balanceOf[address(this.address)] * rewardsFee / 100 < balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100:
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not distributionPoolAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * rewardsFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100)
                        if balanceOf[stor18] > !((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100)):
                            revert with 0, 17
                        balanceOf[stor18] = balanceOf[stor18] + (balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100)
                        emit Transfer(((balanceOf[address(this.address)] * rewardsFee / 100) - (balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100)), this.address, distributionPoolAddress);
                        if balanceOf[address(this.address)] and liquidityPoolFee > -1 / balanceOf[address(this.address)]:
                            revert with 0, 17
                        if balanceOf[address(this.address)] * liquidityPoolFee / 100 < balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2:
                            revert with 0, 17
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = 2
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
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
                        if not uniswapV2RouterAddress:
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 197] = 32
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 229] = 34
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 'ERC20: approve to the zero addre'
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 0x7373000000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193
                               len ceil32(return_data.size) + 132
                        allowance[address(this.address)][stor15].field_0 = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                        allowance[address(this.address)][stor15].field_255 = 0
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
                        emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 197] = balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2
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
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor15].field_0 = (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)
                        emit Approval(((balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 261] = 0
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 0
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * liquidityPoolFee / 100), 0, (balanceOf[address(this.address)] * liquidityPoolFee / 100) - (balanceOf[address(this.address)] * liquidityPoolFee / 100 / 2));
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 225] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 257] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor15].field_0 = balanceOf[address(this.address)]
                        emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 289] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 293] = balanceOf[address(this.address)]
                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 453] = 2
                        idx = 0
                        s = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 485
                        t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 225
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 421] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 485 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if balanceOf[address(this.address)] * futurFee / 100 * stor28 / 100 > !((balanceOf[address(this.address)] * futurFee / 100) - (balanceOf[address(this.address)] * futurFee / 100 * stor28 / 100) - (balanceOf[address(this.address)] * futurFee / 100 * stor29 / 100)):
                            revert with 0, 17
                        if (balanceOf[address(this.address)] * futurFee / 100) - (balanceOf[address(this.address)] * futurFee / 100 * stor29 / 100) > !(balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100):
                            revert with 0, 17
                        if (balanceOf[address(this.address)] * futurFee / 100) - (balanceOf[address(this.address)] * futurFee / 100 * stor29 / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100) > !(balanceOf[address(this.address)] * futurFee / 100 * stor29 / 100):
                            revert with 0, 17
                        if eth.balance(this.address) and balanceOf[address(this.address)] * futurFee / 100 * stor28 / 100 > -1 / eth.balance(this.address):
                            revert with 0, 17
                        if not (balanceOf[address(this.address)] * futurFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100):
                            revert with 0, 18
                        call devPoolAddress with:
                           value eth.balance(this.address) * balanceOf[address(this.address)] * futurFee / 100 * stor28 / 100 / (balanceOf[address(this.address)] * futurFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) and (balanceOf[address(this.address)] * futurFee / 100) - (balanceOf[address(this.address)] * futurFee / 100 * stor28 / 100) - (balanceOf[address(this.address)] * futurFee / 100 * stor29 / 100) > -1 / eth.balance(this.address):
                            revert with 0, 17
                        if not (balanceOf[address(this.address)] * futurFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100):
                            revert with 0, 18
                        call teamPoolAddress with:
                           value (balanceOf[address(this.address)] * futurFee / 100 * eth.balance(this.address)) - (balanceOf[address(this.address)] * futurFee / 100 * stor28 / 100 * eth.balance(this.address)) - (balanceOf[address(this.address)] * futurFee / 100 * stor29 / 100 * eth.balance(this.address)) / (balanceOf[address(this.address)] * futurFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) and balanceOf[address(this.address)] * futurFee / 100 * stor29 / 100 > -1 / eth.balance(this.address):
                            revert with 0, 17
                        if not (balanceOf[address(this.address)] * futurFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100):
                            revert with 0, 18
                        call advisorPoolAddress with:
                           value eth.balance(this.address) * balanceOf[address(this.address)] * futurFee / 100 * stor29 / 100 / (balanceOf[address(this.address)] * futurFee / 100) + (balanceOf[address(this.address)] * rewardsFee / 100 * stor27 / 100) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call distributionPoolAddress with:
                           value balanceOf[address(this.address)] wei
                             gas gas_remaining wei
                        uint8(stor30.field_0) = 0
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not return_data.size:
                            if not msg.sender:
                                revert with 0, 
                                            'ERC20: transfer from the zero address',
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 421 len 9 * ceil32(return_data.size)]
                            if not this.address:
                                revert with 0, 
                                            'ERC20: transfer to the zero address',
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 421 len 9 * ceil32(return_data.size)]
                            if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0]:
                                revert with 0, 
                                            'ERC20: transfer amount exceeds balance',
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 421 len 9 * ceil32(return_data.size)]
                            balanceOf[address(msg.sender)] += -1 * 10^18 * ext_call.return_data[0]
                            if balanceOf[this.address] > !(10^18 * ext_call.return_data[0]):
                                revert with 0, 17
                            balanceOf[this.address] += 10^18 * ext_call.return_data[0]
                            emit Transfer((10^18 * ext_call.return_data[0]), msg.sender, this.address);
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 421 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                            if ceil32(arg1.length) > arg1.length:
                                mem[arg1.length + ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 421] = 0
                            require ext_code.size(sub_9bb5cd3fAddress)
                            call sub_9bb5cd3fAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 421 len (9 * ceil32(return_data.size)) + ceil32(arg1.length)]), arg2
                        else:
                            if not msg.sender:
                                revert with 0, 
                                            'ERC20: transfer from the zero address',
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 422 len 9 * ceil32(return_data.size)]
                            if not this.address:
                                revert with 0, 
                                            'ERC20: transfer to the zero address',
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 422 len 9 * ceil32(return_data.size)]
                            if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0]:
                                revert with 0, 
                                            'ERC20: transfer amount exceeds balance',
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 422 len 9 * ceil32(return_data.size)]
                            balanceOf[address(msg.sender)] += -1 * 10^18 * ext_call.return_data[0]
                            if balanceOf[this.address] > !(10^18 * ext_call.return_data[0]):
                                revert with 0, 17
                            balanceOf[this.address] += 10^18 * ext_call.return_data[0]
                            emit Transfer((10^18 * ext_call.return_data[0]), msg.sender, this.address);
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 422 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                            if ceil32(arg1.length) > arg1.length:
                                mem[arg1.length + ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 422] = 0
                            require ext_code.size(sub_9bb5cd3fAddress)
                            call sub_9bb5cd3fAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 422 len (9 * ceil32(return_data.size)) + ceil32(arg1.length)]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor36[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor36[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if uniswapV2RouterAddress != arg1:
        if msg.sender == owner:
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
        else:
            if uniswapV2PairAddress == arg1:
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
            else:
                if uniswapV2RouterAddress == arg1:
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
                else:
                    if this.address == arg1:
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
                    else:
                        if this.address == msg.sender:
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
                        else:
                            if stor33:
                                if teamPoolAddress != arg1:
                                    if distributionPoolAddress != arg1:
                                        if devPoolAddress != arg1:
                                            if teamPoolAddress != msg.sender:
                                                if distributionPoolAddress != msg.sender:
                                                    if devPoolAddress != msg.sender:
                                                        if totalSupply and stor35 > -1 / totalSupply:
                                                            revert with 0, 17
                                                        if arg2 > !balanceOf[address(arg1)]:
                                                            revert with 0, 17
                                                        if arg2 + balanceOf[address(arg1)] > totalSupply * stor35 / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
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
                            else:
                                if arg2 < arg2 / 100:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 / 100):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                                if balanceOf[this.address] > !(arg2 - (arg2 / 100)):
                                    revert with 0, 17
                                balanceOf[this.address] = balanceOf[this.address] + arg2 - (arg2 / 100)
                                emit Transfer((arg2 - (arg2 / 100)), msg.sender, this.address);
                                if teamPoolAddress != arg1:
                                    if distributionPoolAddress != arg1:
                                        if devPoolAddress != arg1:
                                            if teamPoolAddress != msg.sender:
                                                if distributionPoolAddress != msg.sender:
                                                    if devPoolAddress != msg.sender:
                                                        if totalSupply and stor35 > -1 / totalSupply:
                                                            revert with 0, 17
                                                        if arg2 / 100 > !balanceOf[address(arg1)]:
                                                            revert with 0, 17
                                                        if (arg2 / 100) + balanceOf[address(arg1)] > totalSupply * stor35 / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 / 100
                                if balanceOf[arg1] > !(arg2 / 100):
                                    revert with 0, 17
                                balanceOf[arg1] += arg2 / 100
                                emit Transfer((arg2 / 100), msg.sender, arg1);
    else:
        if this.address == msg.sender:
            if msg.sender == owner:
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
            else:
                if uniswapV2PairAddress == arg1:
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
                else:
                    if uniswapV2RouterAddress == arg1:
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
                    else:
                        if this.address == arg1:
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
                        else:
                            if this.address == msg.sender:
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
                            else:
                                if stor33:
                                    if teamPoolAddress != arg1:
                                        if distributionPoolAddress != arg1:
                                            if devPoolAddress != arg1:
                                                if teamPoolAddress != msg.sender:
                                                    if distributionPoolAddress != msg.sender:
                                                        if devPoolAddress != msg.sender:
                                                            if totalSupply and stor35 > -1 / totalSupply:
                                                                revert with 0, 17
                                                            if arg2 > !balanceOf[address(arg1)]:
                                                                revert with 0, 17
                                                            if arg2 + balanceOf[address(arg1)] > totalSupply * stor35 / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
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
                                else:
                                    if arg2 < arg2 / 100:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 / 100):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                                    if balanceOf[this.address] > !(arg2 - (arg2 / 100)):
                                        revert with 0, 17
                                    balanceOf[this.address] = balanceOf[this.address] + arg2 - (arg2 / 100)
                                    emit Transfer((arg2 - (arg2 / 100)), msg.sender, this.address);
                                    if teamPoolAddress != arg1:
                                        if distributionPoolAddress != arg1:
                                            if devPoolAddress != arg1:
                                                if teamPoolAddress != msg.sender:
                                                    if distributionPoolAddress != msg.sender:
                                                        if devPoolAddress != msg.sender:
                                                            if totalSupply and stor35 > -1 / totalSupply:
                                                                revert with 0, 17
                                                            if arg2 / 100 > !balanceOf[address(arg1)]:
                                                                revert with 0, 17
                                                            if (arg2 / 100) + balanceOf[address(arg1)] > totalSupply * stor35 / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2 / 100
                                    if balanceOf[arg1] > !(arg2 / 100):
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2 / 100
                                    emit Transfer((arg2 / 100), msg.sender, arg1);
        else:
            if owner == msg.sender:
                if msg.sender == owner:
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
                else:
                    if uniswapV2PairAddress == arg1:
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
                    else:
                        if uniswapV2RouterAddress == arg1:
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
                        else:
                            if this.address == arg1:
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
                            else:
                                if this.address == msg.sender:
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
                                else:
                                    if stor33:
                                        if teamPoolAddress != arg1:
                                            if distributionPoolAddress != arg1:
                                                if devPoolAddress != arg1:
                                                    if teamPoolAddress != msg.sender:
                                                        if distributionPoolAddress != msg.sender:
                                                            if devPoolAddress != msg.sender:
                                                                if totalSupply and stor35 > -1 / totalSupply:
                                                                    revert with 0, 17
                                                                if arg2 > !balanceOf[address(arg1)]:
                                                                    revert with 0, 17
                                                                if arg2 + balanceOf[address(arg1)] > totalSupply * stor35 / 10000:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
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
                                    else:
                                        if arg2 < arg2 / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 / 100):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                                        if balanceOf[this.address] > !(arg2 - (arg2 / 100)):
                                            revert with 0, 17
                                        balanceOf[this.address] = balanceOf[this.address] + arg2 - (arg2 / 100)
                                        emit Transfer((arg2 - (arg2 / 100)), msg.sender, this.address);
                                        if teamPoolAddress != arg1:
                                            if distributionPoolAddress != arg1:
                                                if devPoolAddress != arg1:
                                                    if teamPoolAddress != msg.sender:
                                                        if distributionPoolAddress != msg.sender:
                                                            if devPoolAddress != msg.sender:
                                                                if totalSupply and stor35 > -1 / totalSupply:
                                                                    revert with 0, 17
                                                                if arg2 / 100 > !balanceOf[address(arg1)]:
                                                                    revert with 0, 17
                                                                if (arg2 / 100) + balanceOf[address(arg1)] > totalSupply * stor35 / 10000:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 / 100:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 / 100
                                        if balanceOf[arg1] > !(arg2 / 100):
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2 / 100
                                        emit Transfer((arg2 / 100), msg.sender, arg1);
            else:
                require ext_code.size(sub_9bb5cd3fAddress)
                staticcall sub_9bb5cd3fAddress.isNodeOwner(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'You need to own a node to be able to sell'
                if msg.sender == owner:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if uniswapV2PairAddress == arg1:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if uniswapV2RouterAddress == arg1:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if this.address == arg1:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if this.address == msg.sender:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor33:
                                        if teamPoolAddress != arg1:
                                            if distributionPoolAddress != arg1:
                                                if devPoolAddress != arg1:
                                                    if teamPoolAddress != msg.sender:
                                                        if distributionPoolAddress != msg.sender:
                                                            if devPoolAddress != msg.sender:
                                                                if totalSupply and stor35 > -1 / totalSupply:
                                                                    revert with 0, 17
                                                                if arg2 > !balanceOf[address(arg1)]:
                                                                    revert with 0, 17
                                                                if arg2 + balanceOf[address(arg1)] > totalSupply * stor35 / 10000:
                                                                    revert with 0, 'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 < arg2 / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                                        if balanceOf[this.address] > !(arg2 - (arg2 / 100)):
                                            revert with 0, 17
                                        balanceOf[this.address] = balanceOf[this.address] + arg2 - (arg2 / 100)
                                        emit Transfer((arg2 - (arg2 / 100)), msg.sender, this.address);
                                        if teamPoolAddress != arg1:
                                            if distributionPoolAddress != arg1:
                                                if devPoolAddress != arg1:
                                                    if teamPoolAddress != msg.sender:
                                                        if distributionPoolAddress != msg.sender:
                                                            if devPoolAddress != msg.sender:
                                                                if totalSupply and stor35 > -1 / totalSupply:
                                                                    revert with 0, 17
                                                                if arg2 / 100 > !balanceOf[address(arg1)]:
                                                                    revert with 0, 17
                                                                if (arg2 / 100) + balanceOf[address(arg1)] > totalSupply * stor35 / 10000:
                                                                    revert with 0, 'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 / 100
                                        if balanceOf[arg1] > !(arg2 / 100):
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2 / 100
                                        emit Transfer((arg2 / 100), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor36[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor36[address(arg2)]:
        revert with 0, 'Blacklisted address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if uniswapV2RouterAddress != arg2:
        if arg1 == owner:
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
        else:
            if uniswapV2PairAddress == arg2:
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
            else:
                if uniswapV2RouterAddress == arg2:
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
                else:
                    if this.address == arg2:
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
                    else:
                        if this.address == arg1:
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
                        else:
                            if stor33:
                                if teamPoolAddress != arg2:
                                    if distributionPoolAddress != arg2:
                                        if devPoolAddress != arg2:
                                            if teamPoolAddress != arg1:
                                                if distributionPoolAddress != arg1:
                                                    if devPoolAddress != arg1:
                                                        if totalSupply and stor35 > -1 / totalSupply:
                                                            revert with 0, 17
                                                        if arg3 > !balanceOf[address(arg2)]:
                                                            revert with 0, 17
                                                        if arg3 + balanceOf[address(arg2)] > totalSupply * stor35 / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
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
                            else:
                                if arg3 < arg3 / 100:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 - (arg3 / 100):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
                                if balanceOf[this.address] > !(arg3 - (arg3 / 100)):
                                    revert with 0, 17
                                balanceOf[this.address] = balanceOf[this.address] + arg3 - (arg3 / 100)
                                emit Transfer((arg3 - (arg3 / 100)), arg1, this.address);
                                if teamPoolAddress != arg2:
                                    if distributionPoolAddress != arg2:
                                        if devPoolAddress != arg2:
                                            if teamPoolAddress != arg1:
                                                if distributionPoolAddress != arg1:
                                                    if devPoolAddress != arg1:
                                                        if totalSupply and stor35 > -1 / totalSupply:
                                                            revert with 0, 17
                                                        if arg3 / 100 > !balanceOf[address(arg2)]:
                                                            revert with 0, 17
                                                        if (arg3 / 100) + balanceOf[address(arg2)] > totalSupply * stor35 / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3 / 100
                                if balanceOf[arg2] > !(arg3 / 100):
                                    revert with 0, 17
                                balanceOf[arg2] += arg3 / 100
                                emit Transfer((arg3 / 100), arg1, arg2);
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if this.address == arg1:
            if arg1 == owner:
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
            else:
                if uniswapV2PairAddress == arg2:
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
                else:
                    if uniswapV2RouterAddress == arg2:
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
                    else:
                        if this.address == arg2:
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
                        else:
                            if this.address == arg1:
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
                            else:
                                if stor33:
                                    if teamPoolAddress != arg2:
                                        if distributionPoolAddress != arg2:
                                            if devPoolAddress != arg2:
                                                if teamPoolAddress != arg1:
                                                    if distributionPoolAddress != arg1:
                                                        if devPoolAddress != arg1:
                                                            if totalSupply and stor35 > -1 / totalSupply:
                                                                revert with 0, 17
                                                            if arg3 > !balanceOf[address(arg2)]:
                                                                revert with 0, 17
                                                            if arg3 + balanceOf[address(arg2)] > totalSupply * stor35 / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
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
                                else:
                                    if arg3 < arg3 / 100:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 - (arg3 / 100):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
                                    if balanceOf[this.address] > !(arg3 - (arg3 / 100)):
                                        revert with 0, 17
                                    balanceOf[this.address] = balanceOf[this.address] + arg3 - (arg3 / 100)
                                    emit Transfer((arg3 - (arg3 / 100)), arg1, this.address);
                                    if teamPoolAddress != arg2:
                                        if distributionPoolAddress != arg2:
                                            if devPoolAddress != arg2:
                                                if teamPoolAddress != arg1:
                                                    if distributionPoolAddress != arg1:
                                                        if devPoolAddress != arg1:
                                                            if totalSupply and stor35 > -1 / totalSupply:
                                                                revert with 0, 17
                                                            if arg3 / 100 > !balanceOf[address(arg2)]:
                                                                revert with 0, 17
                                                            if (arg3 / 100) + balanceOf[address(arg2)] > totalSupply * stor35 / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 / 100
                                    if balanceOf[arg2] > !(arg3 / 100):
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3 / 100
                                    emit Transfer((arg3 / 100), arg1, arg2);
            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if owner == arg1:
                if arg1 == owner:
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
                else:
                    if uniswapV2PairAddress == arg2:
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
                    else:
                        if uniswapV2RouterAddress == arg2:
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
                        else:
                            if this.address == arg2:
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
                            else:
                                if this.address == arg1:
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
                                else:
                                    if stor33:
                                        if teamPoolAddress != arg2:
                                            if distributionPoolAddress != arg2:
                                                if devPoolAddress != arg2:
                                                    if teamPoolAddress != arg1:
                                                        if distributionPoolAddress != arg1:
                                                            if devPoolAddress != arg1:
                                                                if totalSupply and stor35 > -1 / totalSupply:
                                                                    revert with 0, 17
                                                                if arg3 > !balanceOf[address(arg2)]:
                                                                    revert with 0, 17
                                                                if arg3 + balanceOf[address(arg2)] > totalSupply * stor35 / 10000:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
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
                                    else:
                                        if arg3 < arg3 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 / 100):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
                                        if balanceOf[this.address] > !(arg3 - (arg3 / 100)):
                                            revert with 0, 17
                                        balanceOf[this.address] = balanceOf[this.address] + arg3 - (arg3 / 100)
                                        emit Transfer((arg3 - (arg3 / 100)), arg1, this.address);
                                        if teamPoolAddress != arg2:
                                            if distributionPoolAddress != arg2:
                                                if devPoolAddress != arg2:
                                                    if teamPoolAddress != arg1:
                                                        if distributionPoolAddress != arg1:
                                                            if devPoolAddress != arg1:
                                                                if totalSupply and stor35 > -1 / totalSupply:
                                                                    revert with 0, 17
                                                                if arg3 / 100 > !balanceOf[address(arg2)]:
                                                                    revert with 0, 17
                                                                if (arg3 / 100) + balanceOf[address(arg2)] > totalSupply * stor35 / 10000:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 / 100:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 / 100
                                        if balanceOf[arg2] > !(arg3 / 100):
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3 / 100
                                        emit Transfer((arg3 / 100), arg1, arg2);
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                require ext_code.size(sub_9bb5cd3fAddress)
                staticcall sub_9bb5cd3fAddress.isNodeOwner(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'You need to own a node to be able to sell'
                if arg1 == owner:
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if uniswapV2PairAddress == arg2:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[arg2] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if uniswapV2RouterAddress == arg2:
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            balanceOf[arg2] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if this.address == arg2:
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if this.address == arg1:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor33:
                                        if teamPoolAddress != arg2:
                                            if distributionPoolAddress != arg2:
                                                if devPoolAddress != arg2:
                                                    if teamPoolAddress != arg1:
                                                        if distributionPoolAddress != arg1:
                                                            if devPoolAddress != arg1:
                                                                if totalSupply and stor35 > -1 / totalSupply:
                                                                    revert with 0, 17
                                                                if arg3 > !balanceOf[address(arg2)]:
                                                                    revert with 0, 17
                                                                if arg3 + balanceOf[address(arg2)] > totalSupply * stor35 / 10000:
                                                                    revert with 0, 'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 < arg3 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
                                        if balanceOf[this.address] > !(arg3 - (arg3 / 100)):
                                            revert with 0, 17
                                        balanceOf[this.address] = balanceOf[this.address] + arg3 - (arg3 / 100)
                                        emit Transfer((arg3 - (arg3 / 100)), arg1, this.address);
                                        if teamPoolAddress != arg2:
                                            if distributionPoolAddress != arg2:
                                                if devPoolAddress != arg2:
                                                    if teamPoolAddress != arg1:
                                                        if distributionPoolAddress != arg1:
                                                            if devPoolAddress != arg1:
                                                                if totalSupply and stor35 > -1 / totalSupply:
                                                                    revert with 0, 17
                                                                if arg3 / 100 > !balanceOf[address(arg2)]:
                                                                    revert with 0, 17
                                                                if (arg3 / 100) + balanceOf[address(arg2)] > totalSupply * stor35 / 10000:
                                                                    revert with 0, 'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 / 100
                                        if balanceOf[arg2] > !(arg3 / 100):
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3 / 100
                                        emit Transfer((arg3 / 100), arg1, arg2);
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
    return 1
}



}
