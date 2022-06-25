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
uint256 futurFee;
uint256 totalFees;
uint256 sub_6cdc78b3;
uint256 initialSupply;
array of uint256 sub_075dc237;
uint256 stor23;
uint8 stor24;
uint8 stor24; offset 8
uint256 stor24; offset 8
uint256 swapTokensAmount;
mapping of uint8 stor26;
mapping of uint8 stor27;
mapping of uint256 stor28;

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
    return bool(stor26[arg1])
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

function futurFee() {
    return futurFee
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor27[arg1])
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
    stor23 = arg1
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
    Mask(248, 0, stor24.field_8) = Mask(248, 0, arg1)
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
    stor26[address(arg1)] = uint8(arg2)
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
    staticcall sub_20eea8b5[arg1].0x613ff46f with:
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
    staticcall sub_20eea8b5[arg1].0xf1fec2b8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_43369165(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg2])
    call sub_20eea8b5[arg2].0xcece91eb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e6e9b2b9(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg2])
    call sub_20eea8b5[arg2].0xc6faedc8 with:
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
    staticcall sub_20eea8b5[arg2].0x4491a7e4 with:
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
    staticcall sub_20eea8b5[arg2].0x619a635e with:
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
    if arg2 == bool(stor27[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor27[address(arg1)] = uint8(arg2)
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
        staticcall sub_20eea8b5[idx].0xb8527aef with:
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
    staticcall sub_20eea8b5[arg1].0x41ac82b0 with:
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
    staticcall sub_20eea8b5[arg1].0x619a635e with:
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
    if stor26[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor26[address(arg1)]:
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
    if stor26[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor26[address(arg2)]:
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
    if stor26[msg.sender]:
        revert with 0, 'Cashout: Blacklisted address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT:  creation from the zero address'
    mem[0] = msg.sender
    mem[32] = 26
    if stor26[address(msg.sender)]:
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
        staticcall sub_20eea8b5[idx].0x4491a7e4 with:
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
            staticcall sub_20eea8b5[idx].0x619a635e with:
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
                staticcall sub_20eea8b5[idx].0x619a635e with:
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
                staticcall sub_20eea8b5[idx].0x619a635e with:
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
    if stor26[address(msg.sender)]:
        revert with 0, 'Cashout: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if arg1 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg1])
    staticcall sub_20eea8b5[arg1].0x4491a7e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'no node owner'
    if arg1 >= 3:
        revert with 0, 50
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(sub_20eea8b5[arg1])
    staticcall sub_20eea8b5[arg1].0xa6e15cc4 with:
            gas gas_remaining wei
           args msg.sender, arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if not uint8(stor24.field_8):
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
    call sub_20eea8b5[arg1].0x6edb7002 with:
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
    if sub_6cdc78b3 <= stor28[msg.sender]:
        revert with 0, 'cannot create node more than 100'
    if not msg.sender:
        revert with 0, 'NODE CREATION:  creation from the zero address'
    if stor26[address(msg.sender)]:
        revert with 0, 'NODE CREATION: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
    if distributionPoolAddress == msg.sender:
        revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
    if arg2 >= 3:
        revert with 0, 50
    require ext_code.size(sub_20eea8b5[arg2])
    staticcall sub_20eea8b5[arg2].0xf1fec2b8 with:
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
        call sub_20eea8b5[arg2].0x12b8603f with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor28[address(msg.sender)] > -2:
            revert with 0, 17
        if stor28[address(msg.sender)] + 1 < stor28[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if not uint8(stor24.field_8):
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
            call sub_20eea8b5[arg2].0x12b8603f with:
                 gas gas_remaining wei
                args msg.sender, Array(len=arg1.length, data=arg1[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor28[address(msg.sender)] > -2:
                revert with 0, 17
            if stor28[address(msg.sender)] + 1 < stor28[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if uint8(stor24.field_0):
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
                call sub_20eea8b5[arg2].0x12b8603f with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor28[address(msg.sender)] > -2:
                    revert with 0, 17
                if stor28[address(msg.sender)] + 1 < stor28[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
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
                    call sub_20eea8b5[arg2].0x12b8603f with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor28[address(msg.sender)] > -2:
                        revert with 0, 17
                    if stor28[address(msg.sender)] + 1 < stor28[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if stor27[address(msg.sender)]:
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
                        call sub_20eea8b5[arg2].0x12b8603f with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=arg1[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor28[address(msg.sender)] > -2:
                            revert with 0, 17
                        if stor28[address(msg.sender)] + 1 < stor28[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        uint8(stor24.field_0) = 1
                        if not balanceOf[this.address]:
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = 26
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = 'SafeMath: division by zero'
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = 2
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257
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
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor9].field_0 = 0
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
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + -mem[64] + 513]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _639 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_639] = 30
                            mem[_639 + 32] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call futurUsePoolAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not balanceOf[this.address]:
                                _688 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_688] = 26
                                mem[_688 + 32] = 'SafeMath: division by zero'
                                _696 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_696] = 26
                                mem[_696 + 32] = 'SafeMath: division by zero'
                                _701 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_701 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_701]:
                                    revert with 0, 50
                                mem[_701 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[_701 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _701 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_701]:
                                    revert with 0, 50
                                mem[_701 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor9].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[_701 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_701 + ceil32(return_data.size) + 100] = 0
                                mem[_701 + ceil32(return_data.size) + 132] = 0
                                mem[_701 + ceil32(return_data.size) + 164] = 160
                                mem[_701 + ceil32(return_data.size) + 260] = mem[_701]
                                idx = 0
                                s = _701 + ceil32(return_data.size) + 292
                                t = _701 + 32
                                while idx < mem[_701]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0, 0, 160, address(this.address), block.timestamp, mem[_701 + ceil32(return_data.size) + 260 len (32 * mem[_701]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_701 + ceil32(return_data.size) + 96] = 30
                                mem[_701 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    var141001 = 32
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call distributionPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_701 + ceil32(return_data.size) + 160] = 30
                                mem[_701 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[_701 + ceil32(return_data.size) + 224] = 38
                                mem[_701 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if 0 > balanceOf[address(this.address)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_701 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                0
                                if balanceOf[address(this.address)] < 0:
                                    revert with 0, 17
                                if balanceOf[stor12] > -1:
                                    revert with 0, 17
                                if balanceOf[stor12] < balanceOf[stor12]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor12] = balanceOf[stor12]
                                emit Transfer(0, this.address, distributionPoolAddress);
                                if not balanceOf[this.address]:
                                    mem[_701 + ceil32(return_data.size) + 320] = 26
                                    mem[_701 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                    mem[_701 + ceil32(return_data.size) + 384] = 26
                                    mem[_701 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                    mem[_701 + ceil32(return_data.size) + 448] = 30
                                    mem[_701 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                    mem[_701 + ceil32(return_data.size) + 512] = 2
                                    mem[_701 + ceil32(return_data.size) + 544] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_701 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_701 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor9].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[_701 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_701 + (2 * ceil32(return_data.size)) + 612] = 0
                                    mem[_701 + (2 * ceil32(return_data.size)) + 644] = 0
                                    mem[_701 + (2 * ceil32(return_data.size)) + 676] = 160
                                    mem[_701 + (2 * ceil32(return_data.size)) + 772] = 2
                                    idx = 0
                                    s = _701 + (2 * ceil32(return_data.size)) + 804
                                    t = _701 + ceil32(return_data.size) + 544
                                    while idx < mem[_701 + ceil32(return_data.size) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_701 + (2 * ceil32(return_data.size)) + 708] = this.address
                                    mem[_701 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_701 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_701 + ceil32(return_data.size) + 512]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_701 + (2 * ceil32(return_data.size)) + 608] = 30
                                    mem[_701 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        var229001 = 32
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor9].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[_701 + (2 * ceil32(return_data.size)) + 676] = this.address
                                    mem[_701 + (2 * ceil32(return_data.size)) + 708] = 0
                                    mem[_701 + (2 * ceil32(return_data.size)) + 740] = 0
                                    mem[_701 + (2 * ceil32(return_data.size)) + 772] = 0
                                    mem[_701 + (2 * ceil32(return_data.size)) + 804] = 0
                                    mem[_701 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, 0, 0, 0, 0, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        0,
                                    mem[_701 + (4 * ceil32(return_data.size)) + 672] = 2
                                    mem[_701 + (4 * ceil32(return_data.size)) + 704] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_701 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_701 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_701 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_701 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                    idx = 0
                                    s = _701 + (6 * ceil32(return_data.size)) + 964
                                    t = _701 + (4 * ceil32(return_data.size)) + 704
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_701 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[_701 + (6 * ceil32(return_data.size)) + 964 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_701 + (6 * ceil32(return_data.size)) + 768] = 30
                                    mem[_701 + (6 * ceil32(return_data.size)) + 800] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        var275001 = 32
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                else:
                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not balanceOf[this.address]:
                                        revert with 0, 18
                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[_701 + ceil32(return_data.size) + 320] = 26
                                    mem[_701 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                    mem[_701 + ceil32(return_data.size) + 384] = 26
                                    mem[_701 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                    mem[_701 + ceil32(return_data.size) + 448] = 30
                                    mem[_701 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                        revert with 0, 17
                                    mem[_701 + ceil32(return_data.size) + 512] = 2
                                    mem[_701 + ceil32(return_data.size) + 544] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_701 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_701 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    allowance[address(this.address)][stor9].field_255 = 0
                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                    mem[_701 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_701 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    mem[_701 + (2 * ceil32(return_data.size)) + 644] = 0
                                    mem[_701 + (2 * ceil32(return_data.size)) + 676] = 160
                                    mem[_701 + (2 * ceil32(return_data.size)) + 772] = 2
                                    idx = 0
                                    s = _701 + (2 * ceil32(return_data.size)) + 804
                                    t = _701 + ceil32(return_data.size) + 544
                                    while idx < mem[_701 + ceil32(return_data.size) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_701 + (2 * ceil32(return_data.size)) + 708] = this.address
                                    mem[_701 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_701 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_701 + ceil32(return_data.size) + 512]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_701 + (2 * ceil32(return_data.size)) + 608] = 30
                                    mem[_701 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        var235001 = 32
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor9].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                    mem[_701 + (2 * ceil32(return_data.size)) + 676] = this.address
                                    mem[_701 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    mem[_701 + (2 * ceil32(return_data.size)) + 740] = 0
                                    mem[_701 + (2 * ceil32(return_data.size)) + 772] = 0
                                    mem[_701 + (2 * ceil32(return_data.size)) + 804] = 0
                                    mem[_701 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                    mem[_701 + (4 * ceil32(return_data.size)) + 672] = 2
                                    mem[_701 + (4 * ceil32(return_data.size)) + 704] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_701 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_701 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_701 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_701 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                    idx = 0
                                    s = _701 + (6 * ceil32(return_data.size)) + 964
                                    t = _701 + (4 * ceil32(return_data.size)) + 704
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_701 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[_701 + (6 * ceil32(return_data.size)) + 964 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_701 + (6 * ceil32(return_data.size)) + 768] = 30
                                    mem[_701 + (6 * ceil32(return_data.size)) + 800] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        var281001 = 32
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                ('le', ('balance', 'address'), ('balance', 'address'))
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call marketingWalletAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor24.field_0) = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[_701 + (6 * ceil32(return_data.size)) + 832] = 38
                                mem[_701 + (6 * ceil32(return_data.size)) + 864 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                mem[_701 + (6 * ceil32(return_data.size)) + 928] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                mem[_701 + (6 * ceil32(return_data.size)) + 932] = msg.sender
                                mem[_701 + (6 * ceil32(return_data.size)) + 964] = 64
                                mem[_701 + (6 * ceil32(return_data.size)) + 996] = mem[96]
                                mem[_701 + (6 * ceil32(return_data.size)) + 1028 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                if ceil32(mem[96]) > mem[96]:
                                    mem[_701 + (6 * ceil32(return_data.size)) + mem[96] + 1028] = 0
                                require ext_code.size(sub_20eea8b5[arg2])
                                call sub_20eea8b5[arg2].0x12b8603f with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=mem[96], data=mem[_701 + (6 * ceil32(return_data.size)) + 1028 len ceil32(mem[96])])
                            else:
                                if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not balanceOf[this.address]:
                                    revert with 0, 18
                                if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _694 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_694] = 26
                                mem[_694 + 32] = 'SafeMath: division by zero'
                                if not balanceOf[this.address] * rewardsFee / 100:
                                    _698 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_698] = 26
                                    mem[_698 + 32] = 'SafeMath: division by zero'
                                    _719 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_719 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_719]:
                                        revert with 0, 50
                                    mem[_719 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_719 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _719 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_719]:
                                        revert with 0, 50
                                    mem[_719 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[_719 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_719 + ceil32(return_data.size) + 100] = 0
                                    mem[_719 + ceil32(return_data.size) + 132] = 0
                                    mem[_719 + ceil32(return_data.size) + 164] = 160
                                    mem[_719 + ceil32(return_data.size) + 260] = mem[_719]
                                    idx = 0
                                    s = _719 + ceil32(return_data.size) + 292
                                    t = _719 + 32
                                    while idx < mem[_719]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_719 + ceil32(return_data.size) + 260 len (32 * mem[_719]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_719 + ceil32(return_data.size) + 96] = 30
                                    mem[_719 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_719 + ceil32(return_data.size) + 160] = 30
                                    mem[_719 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                    if 0 > balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * rewardsFee / 100 < 0:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    mem[_719 + ceil32(return_data.size) + 224] = 38
                                    mem[_719 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_719 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                    0
                                    if balanceOf[address(this.address)] < balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(this.address)] -= balanceOf[this.address] * rewardsFee / 100
                                    if balanceOf[stor12] > !(balanceOf[this.address] * rewardsFee / 100):
                                        revert with 0, 17
                                    if balanceOf[stor12] + (balanceOf[this.address] * rewardsFee / 100) < balanceOf[stor12]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor12] += balanceOf[this.address] * rewardsFee / 100
                                    emit Transfer((balanceOf[this.address] * rewardsFee / 100), this.address, distributionPoolAddress);
                                    if not balanceOf[this.address]:
                                        mem[_719 + ceil32(return_data.size) + 320] = 26
                                        mem[_719 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                        mem[_719 + ceil32(return_data.size) + 384] = 26
                                        mem[_719 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                        mem[_719 + ceil32(return_data.size) + 448] = 30
                                        mem[_719 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                        mem[_719 + ceil32(return_data.size) + 512] = 2
                                        mem[_719 + ceil32(return_data.size) + 544] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_719 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_719 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor9].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_719 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_719 + (2 * ceil32(return_data.size)) + 612] = 0
                                        mem[_719 + (2 * ceil32(return_data.size)) + 644] = 0
                                        mem[_719 + (2 * ceil32(return_data.size)) + 676] = 160
                                        mem[_719 + (2 * ceil32(return_data.size)) + 772] = 2
                                        idx = 0
                                        s = _719 + (2 * ceil32(return_data.size)) + 804
                                        t = _719 + ceil32(return_data.size) + 544
                                        while idx < mem[_719 + ceil32(return_data.size) + 512]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_719 + (2 * ceil32(return_data.size)) + 708] = this.address
                                        mem[_719 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, mem[_719 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_719 + ceil32(return_data.size) + 512]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_719 + (2 * ceil32(return_data.size)) + 608] = 30
                                        mem[_719 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            var235001 = 32
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor9].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_719 + (2 * ceil32(return_data.size)) + 676] = this.address
                                        mem[_719 + (2 * ceil32(return_data.size)) + 708] = 0
                                        mem[_719 + (2 * ceil32(return_data.size)) + 740] = 0
                                        mem[_719 + (2 * ceil32(return_data.size)) + 772] = 0
                                        mem[_719 + (2 * ceil32(return_data.size)) + 804] = 0
                                        mem[_719 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, 0, 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            0,
                                        mem[_719 + (4 * ceil32(return_data.size)) + 672] = 2
                                        mem[_719 + (4 * ceil32(return_data.size)) + 704] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_719 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _719 + (6 * ceil32(return_data.size)) + 768
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_719 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_719 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_719 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                        mem[_719 + (6 * ceil32(return_data.size)) + 804] = 0
                                        mem[_719 + (6 * ceil32(return_data.size)) + 836] = 160
                                        mem[_719 + (6 * ceil32(return_data.size)) + 932] = 2
                                        idx = 0
                                        s = _719 + (6 * ceil32(return_data.size)) + 964
                                        t = _719 + (4 * ceil32(return_data.size)) + 704
                                        while idx < mem[_719 + (4 * ceil32(return_data.size)) + 672]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_719 + (6 * ceil32(return_data.size)) + 868] = this.address
                                        mem[_719 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _719 + (6 * ceil32(return_data.size)) + (32 * mem[_719 + (4 * ceil32(return_data.size)) + 672]) + -mem[64] + 960]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4346 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4346] = 30
                                        mem[_4346 + 32] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            var281001 = 32
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call marketingWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor24.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _4460 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4460] = 38
                                        mem[_4460 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4460 + 70 len 26]
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
                                        call sub_20eea8b5[arg2].0x12b8603f with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                                    else:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[_719 + ceil32(return_data.size) + 320] = 26
                                        mem[_719 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                        mem[_719 + ceil32(return_data.size) + 384] = 26
                                        mem[_719 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                        mem[_719 + ceil32(return_data.size) + 448] = 30
                                        mem[_719 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        mem[_719 + ceil32(return_data.size) + 512] = 2
                                        mem[_719 + ceil32(return_data.size) + 544] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_719 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_719 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor9].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[_719 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_719 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[_719 + (2 * ceil32(return_data.size)) + 644] = 0
                                        mem[_719 + (2 * ceil32(return_data.size)) + 676] = 160
                                        mem[_719 + (2 * ceil32(return_data.size)) + 772] = 2
                                        idx = 0
                                        s = _719 + (2 * ceil32(return_data.size)) + 804
                                        t = _719 + ceil32(return_data.size) + 544
                                        while idx < mem[_719 + ceil32(return_data.size) + 512]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_719 + (2 * ceil32(return_data.size)) + 708] = this.address
                                        mem[_719 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_719 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_719 + ceil32(return_data.size) + 512]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_719 + (2 * ceil32(return_data.size)) + 608] = 30
                                        mem[_719 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
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
                                        mem[_719 + (2 * ceil32(return_data.size)) + 676] = this.address
                                        mem[_719 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                        mem[_719 + (2 * ceil32(return_data.size)) + 740] = 0
                                        mem[_719 + (2 * ceil32(return_data.size)) + 772] = 0
                                        mem[_719 + (2 * ceil32(return_data.size)) + 804] = 0
                                        mem[_719 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                        mem[_719 + (4 * ceil32(return_data.size)) + 672] = 2
                                        mem[_719 + (4 * ceil32(return_data.size)) + 704] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_719 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _719 + (6 * ceil32(return_data.size)) + 768
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_719 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_719 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_719 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                        mem[_719 + (6 * ceil32(return_data.size)) + 804] = 0
                                        mem[_719 + (6 * ceil32(return_data.size)) + 836] = 160
                                        mem[_719 + (6 * ceil32(return_data.size)) + 932] = 2
                                        idx = 0
                                        s = _719 + (6 * ceil32(return_data.size)) + 964
                                        t = _719 + (4 * ceil32(return_data.size)) + 704
                                        while idx < mem[_719 + (4 * ceil32(return_data.size)) + 672]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_719 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_719 + (6 * ceil32(return_data.size)) + 932 len (32 * mem[_719 + (4 * ceil32(return_data.size)) + 672]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_719 + (6 * ceil32(return_data.size)) + 768] = 30
                                        mem[_719 + (6 * ceil32(return_data.size)) + 800] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call marketingWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor24.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        mem[_719 + (6 * ceil32(return_data.size)) + 832] = 38
                                        mem[_719 + (6 * ceil32(return_data.size)) + 864 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                        mem[_719 + (6 * ceil32(return_data.size)) + 928] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                        mem[_719 + (6 * ceil32(return_data.size)) + 932] = msg.sender
                                        mem[_719 + (6 * ceil32(return_data.size)) + 964] = 64
                                        mem[_719 + (6 * ceil32(return_data.size)) + 996] = mem[96]
                                        mem[_719 + (6 * ceil32(return_data.size)) + 1028 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[_719 + (6 * ceil32(return_data.size)) + mem[96] + 1028] = 0
                                        require ext_code.size(sub_20eea8b5[arg2])
                                        call sub_20eea8b5[arg2].0x12b8603f with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[_719 + (6 * ceil32(return_data.size)) + 1028 len ceil32(mem[96])])
                                else:
                                    if balanceOf[this.address] * rewardsFee / 100 and stor23 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 17
                                    if not balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 18
                                    if balanceOf[this.address] * rewardsFee / 100 * stor23 / balanceOf[this.address] * rewardsFee / 100 != stor23:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _713 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_713] = 26
                                    mem[_713 + 32] = 'SafeMath: division by zero'
                                    _734 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_734 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_734]:
                                        revert with 0, 50
                                    mem[_734 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_734 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _734 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_734]:
                                        revert with 0, 50
                                    mem[_734 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor23 / 100
                                    emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor23 / 100), this.address, uniswapV2RouterAddress);
                                    mem[_734 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_734 + ceil32(return_data.size) + 100] = balanceOf[this.address] * rewardsFee / 100 * stor23 / 100
                                    mem[_734 + ceil32(return_data.size) + 132] = 0
                                    mem[_734 + ceil32(return_data.size) + 164] = 160
                                    mem[_734 + ceil32(return_data.size) + 260] = mem[_734]
                                    idx = 0
                                    s = _734 + ceil32(return_data.size) + 292
                                    t = _734 + 32
                                    while idx < mem[_734]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_734 + ceil32(return_data.size) + 196] = this.address
                                    mem[_734 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _734 + ceil32(return_data.size) + (32 * mem[_734]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1788 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1788] = 30
                                    mem[_1788 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1827 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1827] = 30
                                    mem[_1827 + 32] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * rewardsFee / 100 * stor23 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor23 / 100:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    _1866 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1866] = 38
                                    mem[_1866 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) > balanceOf[address(this.address)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1866 + 70 len 26]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100):
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)
                                    if balanceOf[stor12] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)):
                                        revert with 0, 17
                                    if balanceOf[stor12] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) < balanceOf[stor12]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = distributionPoolAddress
                                    mem[32] = 0
                                    balanceOf[stor12] = balanceOf[stor12] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)
                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)), this.address, distributionPoolAddress);
                                    if balanceOf[this.address]:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _1982 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1982] = 26
                                        mem[_1982 + 32] = 'SafeMath: division by zero'
                                        _1994 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1994] = 26
                                        mem[_1994 + 32] = 'SafeMath: division by zero'
                                        _2006 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2006] = 30
                                        mem[_2006 + 32] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        _2069 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_2069 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_2069]:
                                            revert with 0, 50
                                        mem[_2069 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_2069 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2069 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_2069]:
                                            revert with 0, 50
                                        mem[_2069 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor9].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[_2069 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_2069 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[_2069 + ceil32(return_data.size) + 132] = 0
                                        mem[_2069 + ceil32(return_data.size) + 164] = 160
                                        mem[_2069 + ceil32(return_data.size) + 260] = mem[_2069]
                                        idx = 0
                                        s = _2069 + ceil32(return_data.size) + 292
                                        t = _2069 + 32
                                        while idx < mem[_2069]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_2069 + ceil32(return_data.size) + 260 len (32 * mem[_2069]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2069 + ceil32(return_data.size) + 96] = 30
                                        mem[_2069 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
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
                                        mem[_2069 + ceil32(return_data.size) + 228] = 0
                                        mem[_2069 + ceil32(return_data.size) + 260] = 0
                                        mem[_2069 + ceil32(return_data.size) + 292] = 0
                                        mem[_2069 + ceil32(return_data.size) + 324] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp
                                        mem[_2069 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2));
                                        mem[_2069 + (2 * ceil32(return_data.size)) + 160] = 2
                                        mem[_2069 + (2 * ceil32(return_data.size)) + 192] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_2069 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2069 + (4 * ceil32(return_data.size)) + 256
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_2069 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_2069 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_2069 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                        mem[_2069 + (4 * ceil32(return_data.size)) + 292] = 0
                                        mem[_2069 + (4 * ceil32(return_data.size)) + 324] = 160
                                        mem[_2069 + (4 * ceil32(return_data.size)) + 420] = 2
                                        idx = 0
                                        s = _2069 + (4 * ceil32(return_data.size)) + 452
                                        t = _2069 + (2 * ceil32(return_data.size)) + 192
                                        while idx < mem[_2069 + (2 * ceil32(return_data.size)) + 160]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_2069 + (4 * ceil32(return_data.size)) + 356] = this.address
                                        mem[_2069 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2069 + (4 * ceil32(return_data.size)) + (32 * mem[_2069 + (2 * ceil32(return_data.size)) + 160]) + -mem[64] + 448]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4343 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4343] = 30
                                        mem[_4343 + 32] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call marketingWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor24.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _4451 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4451] = 38
                                        mem[_4451 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4451 + 70 len 26]
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
                                        call sub_20eea8b5[arg2].0x12b8603f with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                                    else:
                                        _1964 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1964] = 26
                                        mem[_1964 + 32] = 'SafeMath: division by zero'
                                        _1988 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1988] = 26
                                        mem[_1988 + 32] = 'SafeMath: division by zero'
                                        _2000 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2000] = 30
                                        mem[_2000 + 32] = 'SafeMath: subtraction overflow'
                                        _2019 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_2019 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_2019]:
                                            revert with 0, 50
                                        mem[_2019 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_2019 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2019 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_2019]:
                                            revert with 0, 50
                                        mem[_2019 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_2019 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_2019 + ceil32(return_data.size) + 100] = 0
                                        mem[_2019 + ceil32(return_data.size) + 132] = 0
                                        mem[_2019 + ceil32(return_data.size) + 164] = 160
                                        mem[_2019 + ceil32(return_data.size) + 260] = mem[_2019]
                                        idx = 0
                                        s = _2019 + ceil32(return_data.size) + 292
                                        t = _2019 + 32
                                        while idx < mem[_2019]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_2019 + ceil32(return_data.size) + 196] = this.address
                                        mem[_2019 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2019 + ceil32(return_data.size) + (32 * mem[_2019]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3324 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3324] = 30
                                        mem[_3324 + 32] = 'SafeMath: subtraction overflow'
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
                                        _3607 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_3607 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_3607]:
                                            revert with 0, 50
                                        mem[_3607 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_3607 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3607 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_3607]:
                                            revert with 0, 50
                                        mem[_3607 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_3607 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_3607 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                        mem[_3607 + ceil32(return_data.size) + 132] = 0
                                        mem[_3607 + ceil32(return_data.size) + 164] = 160
                                        mem[_3607 + ceil32(return_data.size) + 260] = mem[_3607]
                                        idx = 0
                                        s = _3607 + ceil32(return_data.size) + 292
                                        t = _3607 + 32
                                        while idx < mem[_3607]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_3607 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3607 + ceil32(return_data.size) + 260 len (32 * mem[_3607]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_3607 + ceil32(return_data.size) + 96] = 30
                                        mem[_3607 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call marketingWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor24.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        mem[_3607 + ceil32(return_data.size) + 160] = 38
                                        mem[_3607 + ceil32(return_data.size) + 192 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                        mem[_3607 + ceil32(return_data.size) + 256] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                        mem[_3607 + ceil32(return_data.size) + 260] = msg.sender
                                        mem[_3607 + ceil32(return_data.size) + 292] = 64
                                        mem[_3607 + ceil32(return_data.size) + 324] = mem[96]
                                        mem[_3607 + ceil32(return_data.size) + 356 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[_3607 + ceil32(return_data.size) + mem[96] + 356] = 0
                                        require ext_code.size(sub_20eea8b5[arg2])
                                        call sub_20eea8b5[arg2].0x12b8603f with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[_3607 + ceil32(return_data.size) + 356 len ceil32(mem[96])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor28[address(msg.sender)] > -2:
                                revert with 0, 17
                            if stor28[address(msg.sender)] + 1 < stor28[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
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
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 257] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257
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
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * futurFee / 100
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
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + -mem[64] + 513]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _638 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_638] = 30
                            mem[_638 + 32] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call futurUsePoolAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not balanceOf[this.address]:
                                _687 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_687] = 26
                                mem[_687 + 32] = 'SafeMath: division by zero'
                                _695 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_695] = 26
                                mem[_695 + 32] = 'SafeMath: division by zero'
                                _699 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_699 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_699]:
                                    revert with 0, 50
                                mem[_699 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[_699 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _699 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_699]:
                                    revert with 0, 50
                                mem[_699 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor9].field_0 = 0
                                emit Approval(0, this.address, uniswapV2RouterAddress);
                                mem[_699 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_699 + ceil32(return_data.size) + 100] = 0
                                mem[_699 + ceil32(return_data.size) + 132] = 0
                                mem[_699 + ceil32(return_data.size) + 164] = 160
                                mem[_699 + ceil32(return_data.size) + 260] = mem[_699]
                                idx = 0
                                s = _699 + ceil32(return_data.size) + 292
                                t = _699 + 32
                                while idx < mem[_699]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0, 0, 160, address(this.address), block.timestamp, mem[_699 + ceil32(return_data.size) + 260 len (32 * mem[_699]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_699 + ceil32(return_data.size) + 96] = 30
                                mem[_699 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) > eth.balance(this.address):
                                    var147001 = 32
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call distributionPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_699 + ceil32(return_data.size) + 160] = 30
                                mem[_699 + ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not distributionPoolAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                mem[_699 + ceil32(return_data.size) + 224] = 38
                                mem[_699 + ceil32(return_data.size) + 256 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if 0 > balanceOf[address(this.address)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_699 + ceil32(return_data.size) + 294 len 26] >> 48,
                                                0
                                if balanceOf[address(this.address)] < 0:
                                    revert with 0, 17
                                if balanceOf[stor12] > -1:
                                    revert with 0, 17
                                if balanceOf[stor12] < balanceOf[stor12]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor12] = balanceOf[stor12]
                                emit Transfer(0, this.address, distributionPoolAddress);
                                if not balanceOf[this.address]:
                                    mem[_699 + ceil32(return_data.size) + 320] = 26
                                    mem[_699 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                    mem[_699 + ceil32(return_data.size) + 384] = 26
                                    mem[_699 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                    mem[_699 + ceil32(return_data.size) + 448] = 30
                                    mem[_699 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                    mem[_699 + ceil32(return_data.size) + 512] = 2
                                    mem[_699 + ceil32(return_data.size) + 544] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_699 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _699 + (2 * ceil32(return_data.size)) + 608
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_699 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[_699 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_699 + (2 * ceil32(return_data.size)) + 612] = 0
                                    mem[_699 + (2 * ceil32(return_data.size)) + 644] = 0
                                    mem[_699 + (2 * ceil32(return_data.size)) + 676] = 160
                                    mem[_699 + (2 * ceil32(return_data.size)) + 772] = 2
                                    idx = 0
                                    s = _699 + (2 * ceil32(return_data.size)) + 804
                                    t = _699 + ceil32(return_data.size) + 544
                                    while idx < mem[_699 + ceil32(return_data.size) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_699 + (2 * ceil32(return_data.size)) + 708] = this.address
                                    mem[_699 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, 160, address(this.address), block.timestamp, mem[_699 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_699 + ceil32(return_data.size) + 512]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_699 + (2 * ceil32(return_data.size)) + 608] = 30
                                    mem[_699 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[_699 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_699 + (2 * ceil32(return_data.size)) + 676] = 32
                                        mem[_699 + (2 * ceil32(return_data.size)) + 708] = 30
                                        mem[_699 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                        var235001 = 32
                                        mem[_699 + (2 * ceil32(return_data.size)) + 770] = 0
                                        revert with memory
                                          from _699 + (2 * ceil32(return_data.size)) + 672
                                           len ceil32(return_data.size) + 100
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        mem[_699 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_699 + (2 * ceil32(return_data.size)) + 676] = 32
                                        mem[_699 + (2 * ceil32(return_data.size)) + 708] = 36
                                        mem[_699 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                        mem[_699 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _699 + (2 * ceil32(return_data.size)) + 672
                                           len ceil32(return_data.size) + 132
                                    if not uniswapV2RouterAddress:
                                        mem[_699 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_699 + (2 * ceil32(return_data.size)) + 676] = 32
                                        mem[_699 + (2 * ceil32(return_data.size)) + 708] = 34
                                        mem[_699 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                        mem[_699 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _699 + (2 * ceil32(return_data.size)) + 672
                                           len ceil32(return_data.size) + 132
                                    allowance[address(this.address)][stor9].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[_699 + (2 * ceil32(return_data.size)) + 676] = this.address
                                    mem[_699 + (2 * ceil32(return_data.size)) + 708] = 0
                                    mem[_699 + (2 * ceil32(return_data.size)) + 740] = 0
                                    mem[_699 + (2 * ceil32(return_data.size)) + 772] = 0
                                    mem[_699 + (2 * ceil32(return_data.size)) + 804] = 0
                                    mem[_699 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args mem[_699 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                    mem[_699 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[_699 + (4 * ceil32(return_data.size)) + 672] = 0
                                    mem[_699 + (4 * ceil32(return_data.size)) + 704] = 0
                                    mem[_699 + (4 * ceil32(return_data.size)) + 736] = 0
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        mem[_699 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                    mem[_699 + (4 * ceil32(return_data.size)) + 672] = 2
                                    mem[_699 + (4 * ceil32(return_data.size)) + 704] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_699 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _699 + (6 * ceil32(return_data.size)) + 768
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_699 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_699 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_699 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                    mem[_699 + (6 * ceil32(return_data.size)) + 804] = 0
                                    mem[_699 + (6 * ceil32(return_data.size)) + 836] = 160
                                    mem[_699 + (6 * ceil32(return_data.size)) + 932] = 2
                                    idx = 0
                                    s = _699 + (6 * ceil32(return_data.size)) + 964
                                    t = _699 + (4 * ceil32(return_data.size)) + 704
                                    while idx < mem[_699 + (4 * ceil32(return_data.size)) + 672]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_699 + (6 * ceil32(return_data.size)) + 868] = this.address
                                    mem[_699 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _699 + (6 * ceil32(return_data.size)) + (32 * mem[_699 + (4 * ceil32(return_data.size)) + 672]) + -mem[64] + 960]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4342 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4342] = 30
                                    mem[_4342 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        var281001 = 32
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call marketingWalletAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor24.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    _4448 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4448] = 38
                                    mem[_4448 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4448 + 70 len 26]
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
                                    call sub_20eea8b5[arg2].0x12b8603f with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if stor28[address(msg.sender)] > -2:
                                        revert with 0, 17
                                    if stor28[address(msg.sender)] + 1 < stor28[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not balanceOf[this.address]:
                                        revert with 0, 18
                                    if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[_699 + ceil32(return_data.size) + 320] = 26
                                    mem[_699 + ceil32(return_data.size) + 352] = 'SafeMath: division by zero'
                                    mem[_699 + ceil32(return_data.size) + 384] = 26
                                    mem[_699 + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
                                    mem[_699 + ceil32(return_data.size) + 448] = 30
                                    mem[_699 + ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                        revert with 0, 17
                                    mem[_699 + ceil32(return_data.size) + 512] = 2
                                    mem[_699 + ceil32(return_data.size) + 544] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_699 + ceil32(return_data.size) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _699 + (2 * ceil32(return_data.size)) + 608
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_699 + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    allowance[address(this.address)][stor9].field_255 = 0
                                    emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                    mem[_699 + (2 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_699 + (2 * ceil32(return_data.size)) + 612] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    mem[_699 + (2 * ceil32(return_data.size)) + 644] = 0
                                    mem[_699 + (2 * ceil32(return_data.size)) + 676] = 160
                                    mem[_699 + (2 * ceil32(return_data.size)) + 772] = 2
                                    idx = 0
                                    s = _699 + (2 * ceil32(return_data.size)) + 804
                                    t = _699 + ceil32(return_data.size) + 544
                                    while idx < mem[_699 + ceil32(return_data.size) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_699 + (2 * ceil32(return_data.size)) + 708] = this.address
                                    mem[_699 + (2 * ceil32(return_data.size)) + 740] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, mem[_699 + (2 * ceil32(return_data.size)) + 772 len (32 * mem[_699 + ceil32(return_data.size) + 512]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_699 + (2 * ceil32(return_data.size)) + 608] = 30
                                    mem[_699 + (2 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[_699 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_699 + (2 * ceil32(return_data.size)) + 676] = 32
                                        mem[_699 + (2 * ceil32(return_data.size)) + 708] = 30
                                        mem[_699 + (2 * ceil32(return_data.size)) + 740] = 'SafeMath: subtraction overflow'
                                        var241001 = 32
                                        mem[_699 + (2 * ceil32(return_data.size)) + 770] = 0
                                        revert with memory
                                          from _699 + (2 * ceil32(return_data.size)) + 672
                                           len ceil32(return_data.size) + 100
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if not this.address:
                                        mem[_699 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_699 + (2 * ceil32(return_data.size)) + 676] = 32
                                        mem[_699 + (2 * ceil32(return_data.size)) + 708] = 36
                                        mem[_699 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                                        mem[_699 + (2 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _699 + (2 * ceil32(return_data.size)) + 672
                                           len ceil32(return_data.size) + 132
                                    if not uniswapV2RouterAddress:
                                        mem[_699 + (2 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_699 + (2 * ceil32(return_data.size)) + 676] = 32
                                        mem[_699 + (2 * ceil32(return_data.size)) + 708] = 34
                                        mem[_699 + (2 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                                        mem[_699 + (2 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _699 + (2 * ceil32(return_data.size)) + 672
                                           len ceil32(return_data.size) + 132
                                    allowance[address(this.address)][stor9].field_0 = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    emit Approval(((balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)), this.address, uniswapV2RouterAddress);
                                    mem[_699 + (2 * ceil32(return_data.size)) + 676] = this.address
                                    mem[_699 + (2 * ceil32(return_data.size)) + 708] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    mem[_699 + (2 * ceil32(return_data.size)) + 740] = 0
                                    mem[_699 + (2 * ceil32(return_data.size)) + 772] = 0
                                    mem[_699 + (2 * ceil32(return_data.size)) + 804] = 0
                                    mem[_699 + (2 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args mem[_699 + (2 * ceil32(return_data.size)) + 676 len ceil32(return_data.size) + 192]
                                    mem[_699 + (2 * ceil32(return_data.size)) + 672 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[_699 + (4 * ceil32(return_data.size)) + 672] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                    mem[_699 + (4 * ceil32(return_data.size)) + 704] = 0
                                    mem[_699 + (4 * ceil32(return_data.size)) + 736] = (balanceOf[this.address] * liquidityPoolFee / 100) - (balanceOf[this.address] * liquidityPoolFee / 100 / 2)
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        mem[_699 + (4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 96],
                                    mem[_699 + (4 * ceil32(return_data.size)) + 672] = 2
                                    mem[_699 + (4 * ceil32(return_data.size)) + 704] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_699 + (4 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _699 + (6 * ceil32(return_data.size)) + 768
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_699 + (4 * ceil32(return_data.size)) + 736] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_699 + (6 * ceil32(return_data.size)) + 768] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_699 + (6 * ceil32(return_data.size)) + 772] = balanceOf[this.address]
                                    mem[_699 + (6 * ceil32(return_data.size)) + 804] = 0
                                    mem[_699 + (6 * ceil32(return_data.size)) + 836] = 160
                                    mem[_699 + (6 * ceil32(return_data.size)) + 932] = 2
                                    idx = 0
                                    s = _699 + (6 * ceil32(return_data.size)) + 964
                                    t = _699 + (4 * ceil32(return_data.size)) + 704
                                    while idx < mem[_699 + (4 * ceil32(return_data.size)) + 672]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_699 + (6 * ceil32(return_data.size)) + 900] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_699 + (6 * ceil32(return_data.size)) + 932 len (32 * mem[_699 + (4 * ceil32(return_data.size)) + 672]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_699 + (6 * ceil32(return_data.size)) + 768] = 30
                                    mem[_699 + (6 * ceil32(return_data.size)) + 800] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        var287001 = 32
                                        mem[_699 + (6 * ceil32(return_data.size)) + 930] = 0
                                        revert with 0, 
                                                    'SafeMath: subtraction overflow',
                                                    mem[_699 + (6 * ceil32(return_data.size)) + 930 len (9 * ceil32(return_data.size)) + 2]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call marketingWalletAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor24.field_0) = 0
                                    if not msg.sender:
                                        revert with 0, 
                                                    'ERC20: transfer from the zero address',
                                                    mem[_699 + (6 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                    if not this.address:
                                        revert with 0, 
                                                    'ERC20: transfer to the zero address',
                                                    mem[_699 + (6 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                    mem[_699 + (6 * ceil32(return_data.size)) + 832] = 38
                                    mem[_699 + (6 * ceil32(return_data.size)) + 864 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                        mem[_699 + (6 * ceil32(return_data.size)) + 1034] = 0
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                                    mem[_699 + (6 * ceil32(return_data.size)) + 1034 len (9 * ceil32(return_data.size)) + 26]
                                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                                    if balanceOf[this.address] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow', mem[_699 + (6 * ceil32(return_data.size)) + 1028 len 9 * ceil32(return_data.size)]
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                                    emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                                    if arg2 >= 3:
                                        revert with 0, 50
                                    mem[_699 + (6 * ceil32(return_data.size)) + 928] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                    mem[_699 + (6 * ceil32(return_data.size)) + 932] = msg.sender
                                    mem[_699 + (6 * ceil32(return_data.size)) + 964] = 64
                                    mem[_699 + (6 * ceil32(return_data.size)) + 996] = mem[96]
                                    mem[_699 + (6 * ceil32(return_data.size)) + 1028 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[_699 + (6 * ceil32(return_data.size)) + mem[96] + 1028] = 0
                                    require ext_code.size(sub_20eea8b5[arg2])
                                    call sub_20eea8b5[arg2].0x12b8603f with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[_699 + (6 * ceil32(return_data.size)) + 1028 len (9 * ceil32(return_data.size)) + ceil32(mem[96])])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if stor28[address(msg.sender)] > -2:
                                        revert with 0, 17
                                    if stor28[address(msg.sender)] + 1 < stor28[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow', mem[_699 + (6 * ceil32(return_data.size)) + 1028 len 9 * ceil32(return_data.size)]
                            else:
                                if balanceOf[this.address] and rewardsFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not balanceOf[this.address]:
                                    revert with 0, 18
                                if balanceOf[this.address] * rewardsFee / balanceOf[this.address] != rewardsFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _693 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_693] = 26
                                mem[_693 + 32] = 'SafeMath: division by zero'
                                if not balanceOf[this.address] * rewardsFee / 100:
                                    _697 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_697] = 26
                                    mem[_697 + 32] = 'SafeMath: division by zero'
                                    _717 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_717 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_717]:
                                        revert with 0, 50
                                    mem[_717 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_717 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _717 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_717]:
                                        revert with 0, 50
                                    mem[_717 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = 0
                                    emit Approval(0, this.address, uniswapV2RouterAddress);
                                    mem[_717 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_717 + ceil32(return_data.size) + 100] = 0
                                    mem[_717 + ceil32(return_data.size) + 132] = 0
                                    mem[_717 + ceil32(return_data.size) + 164] = 160
                                    mem[_717 + ceil32(return_data.size) + 260] = mem[_717]
                                    idx = 0
                                    s = _717 + ceil32(return_data.size) + 292
                                    t = _717 + 32
                                    while idx < mem[_717]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_717 + ceil32(return_data.size) + 196] = this.address
                                    mem[_717 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _717 + ceil32(return_data.size) + (32 * mem[_717]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1786 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1786] = 30
                                    mem[_1786 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1823 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1823] = 30
                                    mem[_1823 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * rewardsFee / 100 < 0:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    _1859 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1859] = 38
                                    mem[_1859 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if balanceOf[this.address] * rewardsFee / 100 > balanceOf[address(this.address)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1859 + 70 len 26]
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
                                    if not balanceOf[this.address]:
                                        _1962 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1962] = 26
                                        mem[_1962 + 32] = 'SafeMath: division by zero'
                                        _1986 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1986] = 26
                                        mem[_1986 + 32] = 'SafeMath: division by zero'
                                        _1998 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1998] = 30
                                        mem[_1998 + 32] = 'SafeMath: subtraction overflow'
                                        _2013 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_2013 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_2013]:
                                            revert with 0, 50
                                        mem[_2013 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_2013 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2013 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_2013]:
                                            revert with 0, 50
                                        mem[_2013 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_2013 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_2013 + ceil32(return_data.size) + 100] = 0
                                        mem[_2013 + ceil32(return_data.size) + 132] = 0
                                        mem[_2013 + ceil32(return_data.size) + 164] = 160
                                        mem[_2013 + ceil32(return_data.size) + 260] = mem[_2013]
                                        idx = 0
                                        s = _2013 + ceil32(return_data.size) + 292
                                        t = _2013 + 32
                                        while idx < mem[_2013]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, mem[_2013 + ceil32(return_data.size) + 260 len (32 * mem[_2013]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2013 + ceil32(return_data.size) + 96] = 30
                                        mem[_2013 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            var241001 = 32
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor9].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_2013 + ceil32(return_data.size) + 228] = 0
                                        mem[_2013 + ceil32(return_data.size) + 260] = 0
                                        mem[_2013 + ceil32(return_data.size) + 292] = 0
                                        mem[_2013 + ceil32(return_data.size) + 324] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, 0, 0, 0, 0, block.timestamp
                                        mem[_2013 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            0,
                                        mem[_2013 + (2 * ceil32(return_data.size)) + 160] = 2
                                        mem[_2013 + (2 * ceil32(return_data.size)) + 192] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_2013 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_2013 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 292] = 0
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 324] = 160
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 420] = 2
                                        idx = 0
                                        s = _2013 + (4 * ceil32(return_data.size)) + 452
                                        t = _2013 + (2 * ceil32(return_data.size)) + 192
                                        while idx < mem[_2013 + (2 * ceil32(return_data.size)) + 160]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 356] = this.address
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_2013 + (4 * ceil32(return_data.size)) + 420 len (32 * mem[_2013 + (2 * ceil32(return_data.size)) + 160]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 256] = 30
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 288] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            var287001 = 32
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call marketingWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor24.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 320] = 38
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 352 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 416] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 420] = msg.sender
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 452] = 64
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 484] = mem[96]
                                        mem[_2013 + (4 * ceil32(return_data.size)) + 516 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[_2013 + (4 * ceil32(return_data.size)) + mem[96] + 516] = 0
                                        require ext_code.size(sub_20eea8b5[arg2])
                                        call sub_20eea8b5[arg2].0x12b8603f with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[_2013 + (4 * ceil32(return_data.size)) + 516 len ceil32(mem[96])])
                                    else:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _1980 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1980] = 26
                                        mem[_1980 + 32] = 'SafeMath: division by zero'
                                        _1992 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1992] = 26
                                        mem[_1992 + 32] = 'SafeMath: division by zero'
                                        _2004 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2004] = 30
                                        mem[_2004 + 32] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        _2065 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_2065 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_2065]:
                                            revert with 0, 50
                                        mem[_2065 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_2065 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2065 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_2065]:
                                            revert with 0, 50
                                        mem[_2065 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor9].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[_2065 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_2065 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[_2065 + ceil32(return_data.size) + 132] = 0
                                        mem[_2065 + ceil32(return_data.size) + 164] = 160
                                        mem[_2065 + ceil32(return_data.size) + 260] = mem[_2065]
                                        idx = 0
                                        s = _2065 + ceil32(return_data.size) + 292
                                        t = _2065 + 32
                                        while idx < mem[_2065]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_2065 + ceil32(return_data.size) + 196] = this.address
                                        mem[_2065 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2065 + ceil32(return_data.size) + (32 * mem[_2065]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3319 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3319] = 30
                                        mem[_3319 + 32] = 'SafeMath: subtraction overflow'
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
                                        _3597 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_3597 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_3597]:
                                            revert with 0, 50
                                        mem[_3597 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_3597 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3597 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_3597]:
                                            revert with 0, 50
                                        mem[_3597 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_3597 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_3597 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                        mem[_3597 + ceil32(return_data.size) + 132] = 0
                                        mem[_3597 + ceil32(return_data.size) + 164] = 160
                                        mem[_3597 + ceil32(return_data.size) + 260] = mem[_3597]
                                        idx = 0
                                        s = _3597 + ceil32(return_data.size) + 292
                                        t = _3597 + 32
                                        while idx < mem[_3597]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_3597 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3597 + ceil32(return_data.size) + 260 len (32 * mem[_3597]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_3597 + ceil32(return_data.size) + 96] = 30
                                        mem[_3597 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call marketingWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor24.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        mem[_3597 + ceil32(return_data.size) + 160] = 38
                                        mem[_3597 + ceil32(return_data.size) + 192 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                        mem[_3597 + ceil32(return_data.size) + 256] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                        mem[_3597 + ceil32(return_data.size) + 260] = msg.sender
                                        mem[_3597 + ceil32(return_data.size) + 292] = 64
                                        mem[_3597 + ceil32(return_data.size) + 324] = mem[96]
                                        mem[_3597 + ceil32(return_data.size) + 356 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[_3597 + ceil32(return_data.size) + mem[96] + 356] = 0
                                        require ext_code.size(sub_20eea8b5[arg2])
                                        call sub_20eea8b5[arg2].0x12b8603f with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[_3597 + ceil32(return_data.size) + 356 len ceil32(mem[96])])
                                else:
                                    if balanceOf[this.address] * rewardsFee / 100 and stor23 > -1 / balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 17
                                    if not balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 18
                                    if balanceOf[this.address] * rewardsFee / 100 * stor23 / balanceOf[this.address] * rewardsFee / 100 != stor23:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _711 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_711] = 26
                                    mem[_711 + 32] = 'SafeMath: division by zero'
                                    _731 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_731 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_731]:
                                        revert with 0, 50
                                    mem[_731 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_731 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _731 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_731]:
                                        revert with 0, 50
                                    mem[_731 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * rewardsFee / 100 * stor23 / 100
                                    emit Approval((balanceOf[this.address] * rewardsFee / 100 * stor23 / 100), this.address, uniswapV2RouterAddress);
                                    mem[_731 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_731 + ceil32(return_data.size) + 100] = balanceOf[this.address] * rewardsFee / 100 * stor23 / 100
                                    mem[_731 + ceil32(return_data.size) + 132] = 0
                                    mem[_731 + ceil32(return_data.size) + 164] = 160
                                    mem[_731 + ceil32(return_data.size) + 260] = mem[_731]
                                    idx = 0
                                    s = _731 + ceil32(return_data.size) + 292
                                    t = _731 + 32
                                    while idx < mem[_731]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_731 + ceil32(return_data.size) + 196] = this.address
                                    mem[_731 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _731 + ceil32(return_data.size) + (32 * mem[_731]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1785 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1785] = 30
                                    mem[_1785 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call distributionPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1821 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1821] = 30
                                    mem[_1821 + 32] = 'SafeMath: subtraction overflow'
                                    if balanceOf[this.address] * rewardsFee / 100 * stor23 / 100 > balanceOf[this.address] * rewardsFee / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[this.address] * rewardsFee / 100 < balanceOf[this.address] * rewardsFee / 100 * stor23 / 100:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not distributionPoolAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    _1855 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1855] = 38
                                    mem[_1855 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) > balanceOf[address(this.address)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1855 + 70 len 26]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                    if balanceOf[address(this.address)] < (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100):
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (balanceOf[this.address] * rewardsFee / 100) + (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)
                                    if balanceOf[stor12] > !((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)):
                                        revert with 0, 17
                                    if balanceOf[stor12] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100) < balanceOf[stor12]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = distributionPoolAddress
                                    mem[32] = 0
                                    balanceOf[stor12] = balanceOf[stor12] + (balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)
                                    emit Transfer(((balanceOf[this.address] * rewardsFee / 100) - (balanceOf[this.address] * rewardsFee / 100 * stor23 / 100)), this.address, distributionPoolAddress);
                                    if not balanceOf[this.address]:
                                        _1961 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1961] = 26
                                        mem[_1961 + 32] = 'SafeMath: division by zero'
                                        _1985 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1985] = 26
                                        mem[_1985 + 32] = 'SafeMath: division by zero'
                                        _1997 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1997] = 30
                                        mem[_1997 + 32] = 'SafeMath: subtraction overflow'
                                        _2010 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_2010 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_2010]:
                                            revert with 0, 50
                                        mem[_2010 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_2010 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2010 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_2010]:
                                            revert with 0, 50
                                        mem[_2010 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_2010 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_2010 + ceil32(return_data.size) + 100] = 0
                                        mem[_2010 + ceil32(return_data.size) + 132] = 0
                                        mem[_2010 + ceil32(return_data.size) + 164] = 160
                                        mem[_2010 + ceil32(return_data.size) + 260] = mem[_2010]
                                        idx = 0
                                        s = _2010 + ceil32(return_data.size) + 292
                                        t = _2010 + 32
                                        while idx < mem[_2010]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, mem[_2010 + ceil32(return_data.size) + 260 len (32 * mem[_2010]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2010 + ceil32(return_data.size) + 96] = 30
                                        mem[_2010 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor9].field_0 = 0
                                        emit Approval(0, this.address, uniswapV2RouterAddress);
                                        mem[_2010 + ceil32(return_data.size) + 228] = 0
                                        mem[_2010 + ceil32(return_data.size) + 260] = 0
                                        mem[_2010 + ceil32(return_data.size) + 292] = 0
                                        mem[_2010 + ceil32(return_data.size) + 324] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, 0, 0, 0, 0, block.timestamp
                                        mem[_2010 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            0,
                                        mem[_2010 + (2 * ceil32(return_data.size)) + 160] = 2
                                        mem[_2010 + (2 * ceil32(return_data.size)) + 192] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_2010 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2010 + (4 * ceil32(return_data.size)) + 256
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_2010 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_2010 + (4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_2010 + (4 * ceil32(return_data.size)) + 260] = balanceOf[this.address]
                                        mem[_2010 + (4 * ceil32(return_data.size)) + 292] = 0
                                        mem[_2010 + (4 * ceil32(return_data.size)) + 324] = 160
                                        mem[_2010 + (4 * ceil32(return_data.size)) + 420] = 2
                                        idx = 0
                                        s = _2010 + (4 * ceil32(return_data.size)) + 452
                                        t = _2010 + (2 * ceil32(return_data.size)) + 192
                                        while idx < mem[_2010 + (2 * ceil32(return_data.size)) + 160]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_2010 + (4 * ceil32(return_data.size)) + 356] = this.address
                                        mem[_2010 + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2010 + (4 * ceil32(return_data.size)) + (32 * mem[_2010 + (2 * ceil32(return_data.size)) + 160]) + -mem[64] + 448]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4338 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4338] = 30
                                        mem[_4338 + 32] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call marketingWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor24.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        _4436 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4436] = 38
                                        mem[_4436 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4436 + 70 len 26]
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
                                        call sub_20eea8b5[arg2].0x12b8603f with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                                    else:
                                        if balanceOf[this.address] and liquidityPoolFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityPoolFee / balanceOf[this.address] != liquidityPoolFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _1979 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1979] = 26
                                        mem[_1979 + 32] = 'SafeMath: division by zero'
                                        _1991 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1991] = 26
                                        mem[_1991 + 32] = 'SafeMath: division by zero'
                                        _2003 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2003] = 30
                                        mem[_2003 + 32] = 'SafeMath: subtraction overflow'
                                        if balanceOf[this.address] * liquidityPoolFee / 100 / 2 > balanceOf[this.address] * liquidityPoolFee / 100:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityPoolFee / 100 < balanceOf[this.address] * liquidityPoolFee / 100 / 2:
                                            revert with 0, 17
                                        _2063 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_2063 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_2063]:
                                            revert with 0, 50
                                        mem[_2063 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_2063 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2063 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_2063]:
                                            revert with 0, 50
                                        mem[_2063 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        allowance[address(this.address)][stor9].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityPoolFee / 100 / 2), this.address, uniswapV2RouterAddress);
                                        mem[_2063 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_2063 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityPoolFee / 100 / 2
                                        mem[_2063 + ceil32(return_data.size) + 132] = 0
                                        mem[_2063 + ceil32(return_data.size) + 164] = 160
                                        mem[_2063 + ceil32(return_data.size) + 260] = mem[_2063]
                                        idx = 0
                                        s = _2063 + ceil32(return_data.size) + 292
                                        t = _2063 + 32
                                        while idx < mem[_2063]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_2063 + ceil32(return_data.size) + 196] = this.address
                                        mem[_2063 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2063 + ceil32(return_data.size) + (32 * mem[_2063]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3317 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3317] = 30
                                        mem[_3317 + 32] = 'SafeMath: subtraction overflow'
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
                                        _3593 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_3593 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_3593]:
                                            revert with 0, 50
                                        mem[_3593 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_3593 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3593 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_3593]:
                                            revert with 0, 50
                                        mem[_3593 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor9].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_3593 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_3593 + ceil32(return_data.size) + 100] = balanceOf[this.address]
                                        mem[_3593 + ceil32(return_data.size) + 132] = 0
                                        mem[_3593 + ceil32(return_data.size) + 164] = 160
                                        mem[_3593 + ceil32(return_data.size) + 260] = mem[_3593]
                                        idx = 0
                                        s = _3593 + ceil32(return_data.size) + 292
                                        t = _3593 + 32
                                        while idx < mem[_3593]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_3593 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3593 + ceil32(return_data.size) + 260 len (32 * mem[_3593]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_3593 + ceil32(return_data.size) + 96] = 30
                                        mem[_3593 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call marketingWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor24.field_0) = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        mem[_3593 + ceil32(return_data.size) + 160] = 38
                                        mem[_3593 + ceil32(return_data.size) + 192 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
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
                                        mem[_3593 + ceil32(return_data.size) + 256] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                        mem[_3593 + ceil32(return_data.size) + 260] = msg.sender
                                        mem[_3593 + ceil32(return_data.size) + 292] = 64
                                        mem[_3593 + ceil32(return_data.size) + 324] = mem[96]
                                        mem[_3593 + ceil32(return_data.size) + 356 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[_3593 + ceil32(return_data.size) + mem[96] + 356] = 0
                                        require ext_code.size(sub_20eea8b5[arg2])
                                        call sub_20eea8b5[arg2].0x12b8603f with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[_3593 + ceil32(return_data.size) + 356 len ceil32(mem[96])])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor28[address(msg.sender)] > -2:
                                    revert with 0, 17
                                if stor28[address(msg.sender)] + 1 < stor28[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
    ('ge', ('add', 1, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor28', 28)))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor28', 28))))
    stor28[address(msg.sender)]++
}



}
