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
array of address sub_20eea8b5;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address futurUsePoolAddress;
address distributionPoolAddress;
address marketingWalletAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 totalFees;
uint256 sub_6cdc78b3;
uint256 initialSupply;
array of uint256 sub_075dc237;
uint256 stor22;
uint8 stor23;
uint8 stor23; offset 8
uint256 stor23; offset 8
uint256 swapTokensAmount;
mapping of uint8 stor25;
mapping of uint8 stor26;
mapping of uint256 stor27;

function sub_075dc237(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return sub_075dc237[arg1]
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
    return bool(stor25[arg1])
}

function sub_20eea8b5(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return sub_20eea8b5[arg1]
}

function rewardsFee() {
    return rewardsFee
}

function initialSupply() {
    return initialSupply
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

function sub_6cdc78b3(?) {
    return sub_6cdc78b3
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function marketingWallet() {
    return marketingWalletAddress
}

function owner() {
    return owner
}

function futurUsePool() {
    return futurUsePoolAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor26[arg1])
}

function distributionPool() {
    return distributionPoolAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
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
    stor22 = arg1
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

function updateMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingWalletAddress = arg1
}

function sub_cc9850a4(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 3:
        revert with 0, 'Invalid rune id'
    sub_075dc237[arg1] = arg2
}

function changeSwapLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor23.field_8) = Mask(248, 0, arg1)
}

function sub_2275c385(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= sub_6cdc78b3:
        revert with 0, 'Invalid max node number'
    sub_6cdc78b3 = arg1
}

function sub_a8682e1c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= 3:
        revert with 0, 50
    sub_20eea8b5[arg2] = address(arg1)
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor25[address(arg1)] = uint8(arg2)
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
    totalFees = rewardsFee + arg1
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
    totalFees = arg1 + liquidityPoolFee
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

function sub_d8eb77f7(?) {
    require calldata.size - 4 >= 32
    if arg1 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg1])
    staticcall sub_20eea8b5[arg1].rewardPerSec() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNodePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg1])
    staticcall sub_20eea8b5[arg1].nodePrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e6e9b2b9(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg2])
    call sub_20eea8b5[arg2].0x6da3c5c4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_43369165(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg2])
    call sub_20eea8b5[arg2]._changeNodePrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_34b05227(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg2])
    staticcall sub_20eea8b5[arg2]._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_9ceb5c48(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg2])
    staticcall sub_20eea8b5[arg2]._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
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

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Invalid amount'
    if not owner:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg1:
        revert with 0, 17
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[stor5] > !arg1:
        revert with 0, 17
    if balanceOf[stor5] + arg1 < balanceOf[stor5]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor5] += arg1
    emit Transfer(arg1, 0, owner);
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
    if arg2 == bool(stor26[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor26[address(arg1)] = uint8(arg2)
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

function getTotalCreatedNodes() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    while idx < 3:
        require ext_code.size(sub_20eea8b5[idx])
        staticcall sub_20eea8b5[idx].totalNodesCreated() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_11]:
            revert with 0, 17
        if s + mem[_11] < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_11]
        continue 
    return (0x6f32f1ef8b18a2bc3cea59789c79d441 * s)
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

function getRewardAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    if arg1 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg1])
    staticcall sub_20eea8b5[arg1]._isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    if arg1 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg1])
    staticcall sub_20eea8b5[arg1]._getRewardAmountOf(address arg1) with:
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
    if stor25[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor25[address(arg1)]:
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor25[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor25[address(arg2)]:
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

function cashoutAll() payable {
    mem[64] = 96
    require not msg.value
    if stor25[msg.sender]:
        revert with 0, 'Cashout: Blacklisted address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT:  creation from the zero address'
    mem[0] = msg.sender
    mem[32] = 25
    if stor25[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    idx = 0
    while idx < 3:
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_20eea8b5[idx])
        staticcall sub_20eea8b5[idx]._getNodeNumberOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _51 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_51]:
            if idx >= 3:
                revert with 0, 50
            if 100 < sub_075dc237[idx]:
                revert with 0, 17
            if idx >= 3:
                revert with 0, 50
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(sub_20eea8b5[idx])
            staticcall sub_20eea8b5[idx]._getRewardAmountOf(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _55 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _56 = mem[_55]
            if not mem[_55]:
                _57 = mem[64]
                mem[64] = mem[64] + 64
                mem[_57] = 26
                mem[_57 + 32] = 'SafeMath: division by zero'
                if idx >= 3:
                    revert with 0, 50
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(sub_20eea8b5[idx])
                staticcall sub_20eea8b5[idx]._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _63 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _66 = mem[_63]
                if not mem[_63]:
                    _71 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_71] = 26
                    mem[_71 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_63] and sub_075dc237[idx] > -1 / mem[_63]:
                        revert with 0, 17
                    if not mem[_63]:
                        revert with 0, 18
                    if mem[_63] * sub_075dc237[idx] / mem[_63] != sub_075dc237[idx]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _75 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_75] = 26
                    mem[_75 + 32] = 'SafeMath: division by zero'
                    if 0 > !(_66 * sub_075dc237[idx] / 100):
                        revert with 0, 17
                    if _66 * sub_075dc237[idx] / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if mem[_55] and -sub_075dc237[idx] + 100 > -1 / mem[_55]:
                    revert with 0, 17
                if not mem[_55]:
                    revert with 0, 18
                if (100 * mem[_55]) - (sub_075dc237[idx] * mem[_55]) / mem[_55] != -sub_075dc237[idx] + 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                _60 = mem[64]
                mem[64] = mem[64] + 64
                mem[_60] = 26
                mem[_60 + 32] = 'SafeMath: division by zero'
                if 0 > !((100 * _56) - (sub_075dc237[idx] * _56) / 100):
                    revert with 0, 17
                if (100 * _56) - (sub_075dc237[idx] * _56) / 100 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if idx >= 3:
                    revert with 0, 50
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(sub_20eea8b5[idx])
                staticcall sub_20eea8b5[idx]._getRewardAmountOf(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _69 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _70 = mem[_69]
                if not mem[_69]:
                    _74 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_74] = 26
                    mem[_74 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_69] and sub_075dc237[idx] > -1 / mem[_69]:
                        revert with 0, 17
                    if not mem[_69]:
                        revert with 0, 18
                    if mem[_69] * sub_075dc237[idx] / mem[_69] != sub_075dc237[idx]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _78 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_78] = 26
                    mem[_78 + 32] = 'SafeMath: division by zero'
                    if 0 > !(_70 * sub_075dc237[idx] / 100):
                        revert with 0, 17
                    if _70 * sub_075dc237[idx] / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    revert with 0, 'AgamottoToken: You don't have enough reward to cash out'
}

function sub_ef690f34(?) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AgamottoToken:  creation from the zero address'
    if stor25[address(msg.sender)]:
        revert with 0, 'Cashout: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if arg1 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg1])
    staticcall sub_20eea8b5[arg1]._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if arg1 >= 3:
            revert with 0, 50
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = arg2
        require ext_code.size(sub_20eea8b5[arg1])
        staticcall sub_20eea8b5[arg1]._getRewardAmountOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, arg2
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'CSHT: You don't have enough reward to cash out'
        if not uint8(stor23.field_8):
            if not distributionPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: transfer to the zero address'
            if ext_call.return_data[0] > balanceOf[stor12]:
                revert with 0, 
                            32,
                            38,
                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 166 len 26] >> 48,
                            0
            if balanceOf[stor12] < ext_call.return_data[0]:
                revert with 0, 17
            balanceOf[stor12] -= ext_call.return_data[0]
            if balanceOf[msg.sender] > !ext_call.return_data[0]:
                revert with 0, 17
            if balanceOf[msg.sender] + ext_call.return_data[0] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
        else:
            if arg1 >= 3:
                revert with 0, 50
            if sub_075dc237[arg1] <= 0:
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                if not distributionPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ext_call.return_data[0] > balanceOf[stor12]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 166 len 26] >> 48,
                                0
                if balanceOf[stor12] < ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[stor12] -= ext_call.return_data[0]
                if balanceOf[msg.sender] > !ext_call.return_data[0]:
                    revert with 0, 17
                if balanceOf[msg.sender] + ext_call.return_data[0] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
            else:
                if arg1 >= 3:
                    revert with 0, 50
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 192] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                    if not this.address:
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 32
                        mem[(4 * ceil32(return_data.size)) + 292] = 36
                        mem[(4 * ceil32(return_data.size)) + 324] = 'ERC20: approve from the zero add'
                        mem[(4 * ceil32(return_data.size)) + 356] = 0x7265737300000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 256
                           len (5 * ceil32(return_data.size)) + 132
                    if not uniswapV2RouterAddress:
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 32
                        mem[(4 * ceil32(return_data.size)) + 292] = 34
                        mem[(4 * ceil32(return_data.size)) + 324] = 'ERC20: approve to the zero addre'
                        mem[(4 * ceil32(return_data.size)) + 356] = 0x7373000000000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 256
                           len (5 * ceil32(return_data.size)) + 132
                    allowance[address(this.address)][stor9].field_0 = 0
                    mem[(4 * ceil32(return_data.size)) + 256] = 0
                    emit Approval(mem[(4 * ceil32(return_data.size)) + 256 len (5 * ceil32(return_data.size)) + 32], this.address, uniswapV2RouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 260] = 0
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 452
                    t = (2 * ceil32(return_data.size)) + 192
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
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
                    if ext_call.return_data[0] > balanceOf[stor12]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                    0
                    if balanceOf[stor12] < ext_call.return_data[0]:
                        revert with 0, 17
                    balanceOf[stor12] -= ext_call.return_data[0]
                    if balanceOf[msg.sender] > !ext_call.return_data[0]:
                        revert with 0, 17
                    if balanceOf[msg.sender] + ext_call.return_data[0] < balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], distributionPoolAddress, msg.sender);
                else:
                    if ext_call.return_data[0] and sub_075dc237[arg1] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * sub_075dc237[arg1] / ext_call.return_data[0] != sub_075dc237[arg1]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 192] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                    if not this.address:
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 32
                        mem[(4 * ceil32(return_data.size)) + 292] = 36
                        mem[(4 * ceil32(return_data.size)) + 324] = 'ERC20: approve from the zero add'
                        mem[(4 * ceil32(return_data.size)) + 356] = 0x7265737300000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 256
                           len (5 * ceil32(return_data.size)) + 132
                    if not uniswapV2RouterAddress:
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 32
                        mem[(4 * ceil32(return_data.size)) + 292] = 34
                        mem[(4 * ceil32(return_data.size)) + 324] = 'ERC20: approve to the zero addre'
                        mem[(4 * ceil32(return_data.size)) + 356] = 0x7373000000000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 256
                           len (5 * ceil32(return_data.size)) + 132
                    allowance[address(this.address)][stor9].field_0 = ext_call.return_data[0] * sub_075dc237[arg1] / 100
                    mem[(4 * ceil32(return_data.size)) + 256] = ext_call.return_data[0] * sub_075dc237[arg1] / 100
                    emit Approval(mem[(4 * ceil32(return_data.size)) + 256 len (5 * ceil32(return_data.size)) + 32], this.address, uniswapV2RouterAddress);
                    mem[(4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * sub_075dc237[arg1] / 100
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 452
                    t = (2 * ceil32(return_data.size)) + 192
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * sub_075dc237[arg1] / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
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
                    if ext_call.return_data[0] < ext_call.return_data[0] * sub_075dc237[arg1] / 100:
                        revert with 0, 17
                    if not distributionPoolAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_075dc237[arg1] / 100) > balanceOf[stor12]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                    0
                    if balanceOf[stor12] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_075dc237[arg1] / 100):
                        revert with 0, 17
                    balanceOf[stor12] = balanceOf[stor12] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_075dc237[arg1] / 100)
                    if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_075dc237[arg1] / 100)):
                        revert with 0, 17
                    if balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_075dc237[arg1] / 100) < balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_075dc237[arg1] / 100)
                    emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_075dc237[arg1] / 100)), distributionPoolAddress, msg.sender);
        if arg1 >= 3:
            revert with 0, 50
        require ext_code.size(sub_20eea8b5[arg1])
        call sub_20eea8b5[arg1]._cashoutNodeReward(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function createNodeWithTokens(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
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
    if sub_6cdc78b3 <= stor27[msg.sender]:
        revert with 0, 'cannot create node more than 100'
    if not msg.sender:
        revert with 0, 'NODE CREATION:  creation from the zero address'
    if stor25[address(msg.sender)]:
        revert with 0, 'NODE CREATION: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
    if distributionPoolAddress == msg.sender:
        revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
    if arg2 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg2])
    staticcall sub_20eea8b5[arg2].nodePrice() with:
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
        if arg2 >= 3:
            revert with 0, 50
        require ext_code.size(sub_20eea8b5[arg2])
        call sub_20eea8b5[arg2].createNode(address arg1, string arg2) with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all])
    else:
        if not uint8(stor23.field_8):
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
            if arg2 >= 3:
                revert with 0, 50
            require ext_code.size(sub_20eea8b5[arg2])
            call sub_20eea8b5[arg2].createNode(address arg1, string arg2) with:
                 gas gas_remaining wei
                args msg.sender, Array(len=arg1.length, data=arg1[all])
        else:
            if uint8(stor23.field_0):
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
                if arg2 >= 3:
                    revert with 0, 50
                require ext_code.size(sub_20eea8b5[arg2])
                call sub_20eea8b5[arg2].createNode(address arg1, string arg2) with:
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
                    if arg2 >= 3:
                        revert with 0, 50
                    require ext_code.size(sub_20eea8b5[arg2])
                    call sub_20eea8b5[arg2].createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all])
                else:
                    if stor26[address(msg.sender)]:
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
                        if arg2 >= 3:
                            revert with 0, 50
                        require ext_code.size(sub_20eea8b5[arg2])
                        call sub_20eea8b5[arg2].createNode(address arg1, string arg2) with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=arg1[all])
                    else:
                        uint8(stor23.field_0) = 1
                        if not balanceOf[this.address]:
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = 26
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = 'SafeMath: division by zero'
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = 26
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = 'SafeMath: division by zero'
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225] = 2
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 321] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = ext_call.return_data[12 len 20]
                            if not this.address:
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 32
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 36
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 'ERC20: approve from the zero add'
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321
                                   len ceil32(return_data.size) + 132
                            if not uniswapV2RouterAddress:
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 32
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 34
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 'ERC20: approve to the zero addre'
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321
                                   len ceil32(return_data.size) + 132
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor9].field_0 = 0
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 0
                            emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 0
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 0
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 160
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 485] = 2
                            idx = 0
                            s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 517
                            t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257
                            while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = this.address
                            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + -mem[64] + 577]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _648 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_648] = 30
                            mem[_648 + 32] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call distributionPoolAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _703 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_703] = 30
                            mem[_703 + 32] = 'SafeMath: subtraction overflow'
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not distributionPoolAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            _724 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_724] = 38
                            mem[_724 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            if 0 > balanceOf[address(this.address)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_724 + 70 len 26]
                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                            if balanceOf[address(this.address)] < 0:
                                revert with 0, 17
                            if balanceOf[stor12] > -1:
                                revert with 0, 17
                            if balanceOf[stor12] < balanceOf[stor12]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = distributionPoolAddress
                            mem[32] = 0
                            balanceOf[stor12] = balanceOf[stor12]
                            emit Transfer(0, this.address, distributionPoolAddress);
                            if not balanceOf[this.address]:
                                _771 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_771] = 26
                                mem[_771 + 32] = 'SafeMath: division by zero'
                                _783 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_783] = 26
                                mem[_783 + 32] = 'SafeMath: division by zero'
                                _789 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_789] = 30
                                mem[_789 + 32] = 'SafeMath: subtraction overflow'
                                _800 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_800 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_800]:
                                    revert with 0, 50
                                mem[_800 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[_800 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _800 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_800]:
                                    revert with 0, 50
                                mem[_800 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor9].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[_800 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_800 + ceil32(return_data.size) + 100] = 0
                                mem[_800 + ceil32(return_data.size) + 132] = 0
                                mem[_800 + ceil32(return_data.size) + 164] = 160
                                mem[_800 + ceil32(return_data.size) + 260] = mem[_800]
                                idx = 0
                                s = _800 + ceil32(return_data.size) + 292
                                t = _800 + 32
                                while idx < mem[_800]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_800 + ceil32(return_data.size) + 196] = this.address
                                mem[_800 + ceil32(return_data.size) + 228] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _800 + ceil32(return_data.size) + (32 * mem[_800]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1452 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1452] = 30
                                mem[_1452 + 32] = 'SafeMath: subtraction overflow'
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
                                allowance[address(this.address)][stor9].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
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
                                _1595 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_1595 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_1595]:
                                    revert with 0, 50
                                mem[_1595 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[_1595 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1595 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_1595]:
                                    revert with 0, 50
                                mem[_1595 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[_1595 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_1595 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                mem[_1595 + ceil32(return_data.size) + 132] = 0
                                mem[_1595 + ceil32(return_data.size) + 164] = 160
                                mem[_1595 + ceil32(return_data.size) + 260] = mem[_1595]
                                idx = 0
                                s = _1595 + ceil32(return_data.size) + 292
                                t = _1595 + 32
                                while idx < mem[_1595]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1595 + ceil32(return_data.size) + 228] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_1595 + ceil32(return_data.size) + 260 len (32 * mem[_1595]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1595 + ceil32(return_data.size) + 96] = 30
                                mem[_1595 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call marketingWalletAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor23.field_0) = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[_1595 + ceil32(return_data.size) + 160] = 38
                                mem[_1595 + ceil32(return_data.size) + 192 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                if arg2 >= 3:
                                    revert with 0, 50
                                mem[_1595 + ceil32(return_data.size) + 256] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                mem[_1595 + ceil32(return_data.size) + 260] = msg.sender
                                mem[_1595 + ceil32(return_data.size) + 292] = 64
                                mem[_1595 + ceil32(return_data.size) + 324] = mem[96]
                                mem[_1595 + ceil32(return_data.size) + 356 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                if ceil32(mem[96]) > mem[96]:
                                    mem[_1595 + ceil32(return_data.size) + mem[96] + 356] = 0
                                require ext_code.size(sub_20eea8b5[arg2])
                                call sub_20eea8b5[arg2].createNode(address arg1, string arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=mem[96], data=mem[_1595 + ceil32(return_data.size) + 356 len ceil32(mem[96])])
                            else:
                                if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not balanceOf[this.address]:
                                    revert with 0, 18
                                if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _780 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_780] = 26
                                mem[_780 + 32] = 'SafeMath: division by zero'
                                _786 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_786] = 26
                                mem[_786 + 32] = 'SafeMath: division by zero'
                                _792 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_792] = 30
                                mem[_792 + 32] = 'SafeMath: subtraction overflow'
                                if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                    revert with 0, 17
                                _824 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_824 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_824]:
                                    revert with 0, 50
                                mem[_824 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[_824 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _824 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_824]:
                                    revert with 0, 50
                                mem[_824 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                allowance[address(this.address)][stor9].field_255 = 0
                                emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                mem[_824 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_824 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                mem[_824 + ceil32(return_data.size) + 132] = 0
                                mem[_824 + ceil32(return_data.size) + 164] = 160
                                mem[_824 + ceil32(return_data.size) + 260] = mem[_824]
                                idx = 0
                                s = _824 + ceil32(return_data.size) + 292
                                t = _824 + 32
                                while idx < mem[_824]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_824 + ceil32(return_data.size) + 196] = this.address
                                mem[_824 + ceil32(return_data.size) + 228] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _824 + ceil32(return_data.size) + (32 * mem[_824]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1451 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1451] = 30
                                mem[_1451 + 32] = 'SafeMath: subtraction overflow'
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
                                allowance[address(this.address)][stor9].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
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
                                _1593 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_1593 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_1593]:
                                    revert with 0, 50
                                mem[_1593 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[_1593 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1593 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_1593]:
                                    revert with 0, 50
                                mem[_1593 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[_1593 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_1593 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                mem[_1593 + ceil32(return_data.size) + 132] = 0
                                mem[_1593 + ceil32(return_data.size) + 164] = 160
                                mem[_1593 + ceil32(return_data.size) + 260] = mem[_1593]
                                idx = 0
                                s = _1593 + ceil32(return_data.size) + 292
                                t = _1593 + 32
                                while idx < mem[_1593]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1593 + ceil32(return_data.size) + 228] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_1593 + ceil32(return_data.size) + 260 len (32 * mem[_1593]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1593 + ceil32(return_data.size) + 96] = 30
                                mem[_1593 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call marketingWalletAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor23.field_0) = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[_1593 + ceil32(return_data.size) + 160] = 38
                                mem[_1593 + ceil32(return_data.size) + 192 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                if arg2 >= 3:
                                    revert with 0, 50
                                mem[_1593 + ceil32(return_data.size) + 256] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                mem[_1593 + ceil32(return_data.size) + 260] = msg.sender
                                mem[_1593 + ceil32(return_data.size) + 292] = 64
                                mem[_1593 + ceil32(return_data.size) + 324] = mem[96]
                                mem[_1593 + ceil32(return_data.size) + 356 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                if ceil32(mem[96]) > mem[96]:
                                    mem[_1593 + ceil32(return_data.size) + mem[96] + 356] = 0
                                require ext_code.size(sub_20eea8b5[arg2])
                                call sub_20eea8b5[arg2].createNode(address arg1, string arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=mem[96], data=mem[_1593 + ceil32(return_data.size) + 356 len ceil32(mem[96])])
                        else:
                            if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not balanceOf[this.address]:
                                revert with 0, 18
                            if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = 26
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = 'SafeMath: division by zero'
                            if not balanceOf[this.address] * rewardsFee / 100:
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = 26
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225] = 2
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 321] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 32
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 36
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 'ERC20: approve from the zero add'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 32
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 34
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 'ERC20: approve to the zero addre'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321
                                       len ceil32(return_data.size) + 132
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor9].field_0 = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 0
                                emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 160
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 485] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 517
                                t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257
                                while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + -mem[64] + 577]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _647 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_647] = 30
                                mem[_647 + 32] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call distributionPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _701 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_701] = 30
                                mem[_701 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > balanceOf[this.address] * rewardsFee / 100:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if balanceOf[this.address] * rewardsFee / 100 < 0:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                _720 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_720] = 38
                                mem[_720 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_720 + 70 len 26]
                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                if balanceOf[address(this.address)] < balanceOf[this.address] * rewardsFee / 100:
                                    revert with 0, 17
                                balanceOf[address(this.address)] -= balanceOf[this.address] * rewardsFee / 100
                                if balanceOf[stor12] > !(balanceOf[this.address] * rewardsFee / 100):
                                    revert with 0, 17
                                if balanceOf[stor12] + (balanceOf[this.address] * rewardsFee / 100) < balanceOf[stor12]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = distributionPoolAddress
                                mem[32] = 0
                                balanceOf[stor12] += balanceOf[this.address] * rewardsFee / 100
                                emit Transfer((balanceOf[this.address] * rewardsFee / 100), this.address, distributionPoolAddress);
                                if balanceOf[this.address]:
                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not balanceOf[this.address]:
                                        revert with 0, 18
                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _779 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_779] = 26
                                    mem[_779 + 32] = 'SafeMath: division by zero'
                                    _785 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_785] = 26
                                    mem[_785 + 32] = 'SafeMath: division by zero'
                                    _791 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_791] = 30
                                    mem[_791 + 32] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                        revert with 0, 17
                                    _822 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_822 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_822]:
                                        revert with 0, 50
                                    mem[_822 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_822 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _822 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_822]:
                                        revert with 0, 50
                                    mem[_822 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    allowance[address(this.address)][stor9].field_255 = 0
                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                    mem[_822 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_822 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    mem[_822 + ceil32(return_data.size) + 132] = 0
                                    mem[_822 + ceil32(return_data.size) + 164] = 160
                                    mem[_822 + ceil32(return_data.size) + 260] = mem[_822]
                                    idx = 0
                                    s = _822 + ceil32(return_data.size) + 292
                                    t = _822 + 32
                                    while idx < mem[_822]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_822 + ceil32(return_data.size) + 260 len (32 * mem[_822]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_822 + ceil32(return_data.size) + 96] = 30
                                    mem[_822 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor9].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                    mem[_822 + ceil32(return_data.size) + 228] = 0
                                    mem[_822 + ceil32(return_data.size) + 260] = 0
                                    mem[_822 + ceil32(return_data.size) + 292] = 0
                                    mem[_822 + ceil32(return_data.size) + 324] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[_822 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                    mem[_822 + (2 * ceil32(return_data.size)) + 160] = 2
                                    mem[_822 + (2 * ceil32(return_data.size)) + 192] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_822 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _822 + (4 * ceil32(return_data.size)) + 256
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_822 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_822 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_822 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                    mem[_822 + (4 * ceil32(return_data.size)) + 292] = 0
                                    mem[_822 + (4 * ceil32(return_data.size)) + 324] = 160
                                    mem[_822 + (4 * ceil32(return_data.size)) + 420] = 2
                                    idx = 0
                                    s = _822 + (4 * ceil32(return_data.size)) + 452
                                    t = _822 + (2 * ceil32(return_data.size)) + 192
                                    while idx < mem[_822 + (2 * ceil32(return_data.size)) + 160]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_822 + (4 * ceil32(return_data.size)) + 356] = this.address
                                    mem[_822 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_822 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_822 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_822 + (4 * ceil32(return_data.size)) + 256] = 30
                                    mem[_822 + (4 * ceil32(return_data.size)) + 288] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[_822 + (4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_822 + (4 * ceil32(return_data.size)) + 324] = 32
                                        mem[_822 + (4 * ceil32(return_data.size)) + 356] = 30
                                        mem[_822 + (4 * ceil32(return_data.size)) + 388] = 'SafeMath: subtraction overflow'
                                        mem[_822 + (4 * ceil32(return_data.size)) + 418] = 0
                                        revert with memory
                                          from _822 + (4 * ceil32(return_data.size)) + 320
                                           len (5 * ceil32(return_data.size)) + 100
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call marketingWalletAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor23.field_0) = 0
                                    if not msg.sender:
                                        mem[_822 + (4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_822 + (4 * ceil32(return_data.size)) + 324] = 32
                                        mem[_822 + (4 * ceil32(return_data.size)) + 356] = 37
                                        mem[_822 + (4 * ceil32(return_data.size)) + 388] = 'ERC20: transfer from the zero ad'
                                        mem[_822 + (4 * ceil32(return_data.size)) + 420] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _822 + (4 * ceil32(return_data.size)) + 320
                                           len (5 * ceil32(return_data.size)) + 132
                                    if not this.address:
                                        mem[_822 + (4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_822 + (4 * ceil32(return_data.size)) + 324] = 32
                                        mem[_822 + (4 * ceil32(return_data.size)) + 356] = 35
                                        mem[_822 + (4 * ceil32(return_data.size)) + 388] = 'ERC20: transfer to the zero addr'
                                        mem[_822 + (4 * ceil32(return_data.size)) + 420] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _822 + (4 * ceil32(return_data.size)) + 320
                                           len (5 * ceil32(return_data.size)) + 132
                                    mem[_822 + (4 * ceil32(return_data.size)) + 320] = 38
                                    mem[_822 + (4 * ceil32(return_data.size)) + 352 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        mem[_822 + (4 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_822 + (4 * ceil32(return_data.size)) + 420] = 32
                                        mem[_822 + (4 * ceil32(return_data.size)) + 452] = 38
                                        mem[_822 + (4 * ceil32(return_data.size)) + 484 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32
                                        mem[_822 + (4 * ceil32(return_data.size)) + 522] = 0
                                        revert with memory
                                          from _822 + (4 * ceil32(return_data.size)) + 416
                                           len (5 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[this.address] + ext_call.return_data[0] >= balanceOf[this.address]:
                                        balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                        emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                        if arg2 >= 3:
                                            revert with 0, 50
                                        mem[_822 + (4 * ceil32(return_data.size)) + 416] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                        mem[_822 + (4 * ceil32(return_data.size)) + 420] = msg.sender
                                        mem[_822 + (4 * ceil32(return_data.size)) + 452] = 64
                                        mem[_822 + (4 * ceil32(return_data.size)) + 484] = mem[96]
                                        mem[_822 + (4 * ceil32(return_data.size)) + 516 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[_822 + (4 * ceil32(return_data.size)) + mem[96] + 516] = 0
                                        require ext_code.size(sub_20eea8b5[arg2])
                                        call sub_20eea8b5[arg2].createNode(address arg1, string arg2) with:
                                             gas gas_remaining wei
                                            args mem[_822 + (4 * ceil32(return_data.size)) + 420 len ceil32(mem[96]) + (5 * ceil32(return_data.size)) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if stor27[address(msg.sender)] > -2:
                                            revert with 0, 17
                                        if stor27[address(msg.sender)] + 1 >= stor27[address(msg.sender)]:
                                            stor27[address(msg.sender)]++
                                    mem[_822 + (4 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_822 + (4 * ceil32(return_data.size)) + 420] = 32
                                    mem[_822 + (4 * ceil32(return_data.size)) + 452] = 27
                                    mem[_822 + (4 * ceil32(return_data.size)) + 484] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from _822 + (4 * ceil32(return_data.size)) + 416
                                       len (5 * ceil32(return_data.size)) + 100
                                _770 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_770] = 26
                                mem[_770 + 32] = 'SafeMath: division by zero'
                                _782 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_782] = 26
                                mem[_782 + 32] = 'SafeMath: division by zero'
                                _788 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_788] = 30
                                mem[_788 + 32] = 'SafeMath: subtraction overflow'
                                _797 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_797 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_797]:
                                    revert with 0, 50
                                mem[_797 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[_797 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _797 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_797]:
                                    revert with 0, 50
                                mem[_797 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor9].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[_797 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_797 + ceil32(return_data.size) + 100] = 0
                                mem[_797 + ceil32(return_data.size) + 132] = 0
                                mem[_797 + ceil32(return_data.size) + 164] = 160
                                mem[_797 + ceil32(return_data.size) + 260] = mem[_797]
                                idx = 0
                                s = _797 + ceil32(return_data.size) + 292
                                t = _797 + 32
                                while idx < mem[_797]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_797 + ceil32(return_data.size) + 196] = this.address
                                mem[_797 + ceil32(return_data.size) + 228] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _797 + ceil32(return_data.size) + (32 * mem[_797]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1450 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1450] = 30
                                mem[_1450 + 32] = 'SafeMath: subtraction overflow'
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
                                allowance[address(this.address)][stor9].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
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
                                _1591 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_1591 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_1591]:
                                    revert with 0, 50
                                mem[_1591 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[_1591 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1591 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_1591]:
                                    revert with 0, 50
                                mem[_1591 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[_1591 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_1591 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                mem[_1591 + ceil32(return_data.size) + 132] = 0
                                mem[_1591 + ceil32(return_data.size) + 164] = 160
                                mem[_1591 + ceil32(return_data.size) + 260] = mem[_1591]
                                idx = 0
                                s = _1591 + ceil32(return_data.size) + 292
                                t = _1591 + 32
                                while idx < mem[_1591]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1591 + ceil32(return_data.size) + 228] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_1591 + ceil32(return_data.size) + 260 len (32 * mem[_1591]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1591 + ceil32(return_data.size) + 96] = 30
                                mem[_1591 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call marketingWalletAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor23.field_0) = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[_1591 + ceil32(return_data.size) + 160] = 38
                                mem[_1591 + ceil32(return_data.size) + 192 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                if arg2 >= 3:
                                    revert with 0, 50
                                mem[_1591 + ceil32(return_data.size) + 256] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                mem[_1591 + ceil32(return_data.size) + 260] = msg.sender
                                mem[_1591 + ceil32(return_data.size) + 292] = 64
                                mem[_1591 + ceil32(return_data.size) + 324] = mem[96]
                                mem[_1591 + ceil32(return_data.size) + 356 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                if ceil32(mem[96]) > mem[96]:
                                    mem[_1591 + ceil32(return_data.size) + mem[96] + 356] = 0
                                require ext_code.size(sub_20eea8b5[arg2])
                                call sub_20eea8b5[arg2].createNode(address arg1, string arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=mem[96], data=mem[_1591 + ceil32(return_data.size) + 356 len ceil32(mem[96])])
                            else:
                                if balanceOf[this.address] * rewardsFee / 100 and stor22 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                    revert with 0, 17
                                if not balanceOf[this.address] * rewardsFee / 100:
                                    revert with 0, 18
                                if balanceOf[this.address] * rewardsFee / 100 * stor22 / balanceOf[this.address] * rewardsFee / 100 != stor22:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = 26
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = 'SafeMath: division by zero'
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225] = 2
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 321] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 289] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 32
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 36
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 'ERC20: approve from the zero add'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 32
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 34
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 'ERC20: approve to the zero addre'
                                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321
                                       len ceil32(return_data.size) + 132
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor22 / 100
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = balanceOf[this.address] * rewardsFee / 100 * stor22 / 100
                                emit Approval(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = balanceOf[this.address] * rewardsFee / 100 * stor22 / 100
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 0
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 160
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 485] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 517
                                t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257
                                while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 225]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + -mem[64] + 577]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _646 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_646] = 30
                                mem[_646 + 32] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call distributionPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _699 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_699] = 30
                                mem[_699 + 32] = 'SafeMath: subtraction overflow'
                                if balanceOf[this.address] * rewardsFee / 100 * stor22 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor22 / 100:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                _716 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_716] = 38
                                mem[_716 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor22 / 100) > balanceOf[address(this.address)]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_716 + 70 len 26]
                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor22 / 100):
                                    revert with 0, 17
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor22 / 100)
                                if balanceOf[stor12] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor22 / 100)):
                                    revert with 0, 17
                                if balanceOf[stor12] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor22 / 100) < balanceOf[stor12]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = distributionPoolAddress
                                mem[32] = 0
                                balanceOf[stor12] = balanceOf[stor12] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor22 / 100)
                                emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor22 / 100)), this.address, distributionPoolAddress);
                                if balanceOf[this.address]:
                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not balanceOf[this.address]:
                                        revert with 0, 18
                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _778 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_778] = 26
                                    mem[_778 + 32] = 'SafeMath: division by zero'
                                    _784 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_784] = 26
                                    mem[_784 + 32] = 'SafeMath: division by zero'
                                    _790 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_790] = 30
                                    mem[_790 + 32] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                        revert with 0, 17
                                    _820 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_820 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_820]:
                                        revert with 0, 50
                                    mem[_820 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_820 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _820 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_820]:
                                        revert with 0, 50
                                    mem[_820 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    allowance[address(this.address)][stor9].field_255 = 0
                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                    mem[_820 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_820 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    mem[_820 + ceil32(return_data.size) + 132] = 0
                                    mem[_820 + ceil32(return_data.size) + 164] = 160
                                    mem[_820 + ceil32(return_data.size) + 260] = mem[_820]
                                    idx = 0
                                    s = _820 + ceil32(return_data.size) + 292
                                    t = _820 + 32
                                    while idx < mem[_820]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_820 + ceil32(return_data.size) + 260 len (32 * mem[_820]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_820 + ceil32(return_data.size) + 96] = 30
                                    mem[_820 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor9].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                    mem[_820 + ceil32(return_data.size) + 228] = 0
                                    mem[_820 + ceil32(return_data.size) + 260] = 0
                                    mem[_820 + ceil32(return_data.size) + 292] = 0
                                    mem[_820 + ceil32(return_data.size) + 324] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[_820 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                    mem[_820 + (2 * ceil32(return_data.size)) + 160] = 2
                                    mem[_820 + (2 * ceil32(return_data.size)) + 192] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_820 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _820 + (4 * ceil32(return_data.size)) + 256
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_820 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_820 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_820 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                    mem[_820 + (4 * ceil32(return_data.size)) + 292] = 0
                                    mem[_820 + (4 * ceil32(return_data.size)) + 324] = 160
                                    mem[_820 + (4 * ceil32(return_data.size)) + 420] = 2
                                    idx = 0
                                    s = _820 + (4 * ceil32(return_data.size)) + 452
                                    t = _820 + (2 * ceil32(return_data.size)) + 192
                                    while idx < mem[_820 + (2 * ceil32(return_data.size)) + 160]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_820 + (4 * ceil32(return_data.size)) + 356] = this.address
                                    mem[_820 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _820 + (4 * ceil32(return_data.size)) + (32 * mem[_820 + (2 * ceil32(return_data.size)) + 160]) + -mem[64] + 448]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1957 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1957] = 30
                                    mem[_1957 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call marketingWalletAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor23.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    _2005 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2005] = 38
                                    mem[_2005 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2005 + 70 len 26]
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
                                    if arg2 >= 3:
                                        revert with 0, 50
                                    mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = mem[96]
                                    mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[mem[64] + mem[96] + 100] = 0
                                    require ext_code.size(sub_20eea8b5[arg2])
                                    call sub_20eea8b5[arg2].createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                                else:
                                    _769 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_769] = 26
                                    mem[_769 + 32] = 'SafeMath: division by zero'
                                    _781 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_781] = 26
                                    mem[_781 + 32] = 'SafeMath: division by zero'
                                    _787 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_787] = 30
                                    mem[_787 + 32] = 'SafeMath: subtraction overflow'
                                    _794 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_794 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_794]:
                                        revert with 0, 50
                                    mem[_794 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_794 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _794 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_794]:
                                        revert with 0, 50
                                    mem[_794 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[_794 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_794 + ceil32(return_data.size) + 100] = 0
                                    mem[_794 + ceil32(return_data.size) + 132] = 0
                                    mem[_794 + ceil32(return_data.size) + 164] = 160
                                    mem[_794 + ceil32(return_data.size) + 260] = mem[_794]
                                    idx = 0
                                    s = _794 + ceil32(return_data.size) + 292
                                    t = _794 + 32
                                    while idx < mem[_794]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_794 + ceil32(return_data.size) + 196] = this.address
                                    mem[_794 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _794 + ceil32(return_data.size) + (32 * mem[_794]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1448 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1448] = 30
                                    mem[_1448 + 32] = 'SafeMath: subtraction overflow'
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
                                    allowance[address(this.address)][stor9].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
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
                                    _1587 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_1587 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_1587]:
                                        revert with 0, 50
                                    mem[_1587 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_1587 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1587 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1587]:
                                        revert with 0, 50
                                    mem[_1587 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_1587 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_1587 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                    mem[_1587 + ceil32(return_data.size) + 132] = 0
                                    mem[_1587 + ceil32(return_data.size) + 164] = 160
                                    mem[_1587 + ceil32(return_data.size) + 260] = mem[_1587]
                                    idx = 0
                                    s = _1587 + ceil32(return_data.size) + 292
                                    t = _1587 + 32
                                    while idx < mem[_1587]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1587 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_1587 + ceil32(return_data.size) + 260 len (32 * mem[_1587]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1587 + ceil32(return_data.size) + 96] = 30
                                    mem[_1587 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call marketingWalletAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor23.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    mem[_1587 + ceil32(return_data.size) + 160] = 38
                                    mem[_1587 + ceil32(return_data.size) + 192 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                    if arg2 >= 3:
                                        revert with 0, 50
                                    mem[_1587 + ceil32(return_data.size) + 256] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[_1587 + ceil32(return_data.size) + 260] = msg.sender
                                    mem[_1587 + ceil32(return_data.size) + 292] = 64
                                    mem[_1587 + ceil32(return_data.size) + 324] = mem[96]
                                    mem[_1587 + ceil32(return_data.size) + 356 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[_1587 + ceil32(return_data.size) + mem[96] + 356] = 0
                                    require ext_code.size(sub_20eea8b5[arg2])
                                    call sub_20eea8b5[arg2].createNode(address arg1, string arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[_1587 + ceil32(return_data.size) + 356 len ceil32(mem[96])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor27[address(msg.sender)] > -2:
        revert with 0, 17
    if stor27[address(msg.sender)] + 1 < stor27[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    stor27[address(msg.sender)]++
}



}
