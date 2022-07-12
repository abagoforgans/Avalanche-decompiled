contract main {




// =====================  Runtime code  =====================


#
#  - sub_08031012(?)
#  - _fallback()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
address owner;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
address sub_9a6e80dbAddress;
address uniswapV2RouterAddress;
uint256 sub_bcb8ebfc;
uint256 stor204;
address uniswapV2PairAddress;
uint256 sub_39306140;
address sub_810be66dAddress;
address treasuryPoolAddress;
address rewardsPoolAddress;
address liquidityPoolAddress;
uint256 rewardsFee;
uint256 treasuryFee;
uint256 liquidityPoolFee;
uint256 developmentFee;
uint256 totalFees;
uint256 cashoutFee;
uint8 sub_e0583ec0;
uint8 sub_0f1978fb; offset 8
uint8 antiBotEnabled; offset 176
uint128 stor217; offset 176
address usdcTokenAddress; offset 16
uint256 stor217; offset 8
uint256 sub_86838116;
uint256 sub_f34f1522;
mapping of uint256 sub_9ff41fe3;
mapping of uint8 stor221;
mapping of uint8 stor222;
uint8 sub_b9bd3933;
uint8 sub_eb71c5d9; offset 8
uint256 stor223; offset 8

function rewardsPool() {
    return rewardsPoolAddress
}

function sub_0f1978fb(?) {
    return bool(sub_0f1978fb)
}

function usdcToken() {
    return usdcTokenAddress
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
    return bool(stor221[arg1])
}

function rewardsFee() {
    return rewardsFee
}

function sub_39306140(?) {
    return sub_39306140
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

function treasuryPool() {
    return treasuryPoolAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function liquidityPool() {
    return liquidityPoolAddress
}

function cashoutFee() {
    return cashoutFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_810be66d(?) {
    return sub_810be66dAddress
}

function sub_86838116(?) {
    return sub_86838116
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

function sub_9a6e80db(?) {
    return sub_9a6e80dbAddress
}

function sub_9ff41fe3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9ff41fe3[arg1]
}

function developmentFee() {
    return developmentFee
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor222[arg1])
}

function sub_b9bd3933(?) {
    return bool(sub_b9bd3933)
}

function sub_bcb8ebfc(?) {
    return sub_bcb8ebfc
}

function treasuryFee() {
    return treasuryFee
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

function antiBotEnabled() {
    return bool(antiBotEnabled)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e0583ec0(?) {
    return bool(sub_e0583ec0)
}

function totalReleased() {
    return totalReleased
}

function sub_eb71c5d9(?) {
    return bool(sub_eb71c5d9)
}

function sub_f34f1522(?) {
    return sub_f34f1522
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_24fa08e4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_86838116 = arg1
}

function sub_f61472e2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f34f1522 = arg1
}

function setUSDCAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    usdcTokenAddress = arg1
}

function sub_9dc73a49(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e0583ec0 = uint8(bool(arg1))
}

function sub_b3328aae(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b9bd3933 = uint8(bool(arg1))
}

function sub_9149acbc(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor223 = Mask(248, 0, bool(arg1))
}

function sub_839df919(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor217.field_8) = Mask(248, 0, bool(arg1))
}

function updateCashoutFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0, 'FEES: cashout exceeding 100%'
    cashoutFee = arg1
}

function setBlacklistStatus(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor221[address(arg1)] = uint8(arg2)
}

function updateRewardsWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'UPD_WALL: zero addr'
    rewardsPoolAddress = arg1
}

function updateTreasuryWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'UPD_WALL: zero addr'
    treasuryPoolAddress = arg1
}

function updateLiquidityWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'UPD_WALL: zero addr'
    liquidityPoolAddress = arg1
}

function sub_8d289144(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'NEW_CRM: zero addr'
    sub_9a6e80dbAddress = address(arg1)
}

function sub_559bf302(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'UPD_WALL: zero addr'
    sub_810be66dAddress = address(arg1)
}

function sub_78045b4d(?) {
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0x55a757d0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a6559ce4(?) {
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0xe18f03ad with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c3491b49(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_9a6e80dbAddress)
    call sub_9a6e80dbAddress.0x390c991e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setEnableAntiBot(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ANTI-BOT: do not turn on after switching off'
    Mask(80, 0, stor217.field_176) = Mask(80, 0, arg1)
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

function sub_7a0aacf3(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0xc73e4d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1e7a934e(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0x63a9b098 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_239c038a(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0xce6912a3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRewardAmount() {
    if not msg.sender:
        revert with 0, 'SENDER IS 0'
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d3a2c9cf(?) {
    require calldata.size - 4 >= 64
    require arg1 < 3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 3:
        revert with 0, 33
    require ext_code.size(sub_9a6e80dbAddress)
    call sub_9a6e80dbAddress.0x1d5a1731 with:
         gas gas_remaining wei
        args arg1, arg2
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
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_f78d5c55(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardsFee > !liquidityPoolFee:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee > !treasuryFee:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee + treasuryFee > !arg1:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee + treasuryFee + arg1 > 100:
        revert with 0, 'FEES: total exceeding 100%'
    developmentFee = arg1
    totalFees = rewardsFee + liquidityPoolFee + treasuryFee + arg1
}

function updateLiquidityFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardsFee > !developmentFee:
        revert with 0, 17
    if rewardsFee + developmentFee > !treasuryFee:
        revert with 0, 17
    if rewardsFee + developmentFee + treasuryFee > !arg1:
        revert with 0, 17
    if rewardsFee + developmentFee + treasuryFee + arg1 > 100:
        revert with 0, 'FEES: total exceeding 100%'
    liquidityPoolFee = arg1
    totalFees = rewardsFee + developmentFee + treasuryFee + arg1
}

function sub_0c162440(?) {
    require calldata.size - 4 >= 64
    require arg1 < 3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= 100 * 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'REDUCE_RWD: do not reduce more than 100%'
    if arg1 >= 3:
        revert with 0, 33
    require ext_code.size(sub_9a6e80dbAddress)
    call sub_9a6e80dbAddress.0x9d2040f0 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateTreasuryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardsFee > !liquidityPoolFee:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee > !developmentFee:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee + developmentFee > !arg1:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee + developmentFee + arg1 > 100:
        revert with 0, 'FEES: total exceeding 100%'
    treasuryFee = arg1
    totalFees = rewardsFee + liquidityPoolFee + developmentFee + arg1
}

function updateRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if liquidityPoolFee > !developmentFee:
        revert with 0, 17
    if liquidityPoolFee + developmentFee > !treasuryFee:
        revert with 0, 17
    if liquidityPoolFee + developmentFee + treasuryFee > !arg1:
        revert with 0, 17
    if liquidityPoolFee + developmentFee + treasuryFee + arg1 > 100:
        revert with 0, 'FEES: total exceeding 100%'
    rewardsFee = arg1
    totalFees = liquidityPoolFee + developmentFee + treasuryFee + arg1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The PancakeSwap pair cannot be removed'
    if arg2 == bool(stor222[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor222[address(arg1)] = uint8(arg2)
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

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The router already has that address'
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
    if stor221[address(msg.sender)]:
        revert with 0, 'ERC20: Blacklisted address'
    if stor221[address(arg1)]:
        revert with 0, 'ERC20: Blacklisted address'
    if antiBotEnabled:
        if uniswapV2PairAddress != arg1:
            if uniswapV2RouterAddress != arg1:
                if rewardsPoolAddress != arg1:
                    if treasuryPoolAddress != arg1:
                        if liquidityPoolAddress != arg1:
                            if sub_810be66dAddress != arg1:
                                if arg1 != this.address:
                                    if balanceOf[address(arg1)] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] + arg2 > sub_86838116:
                                        revert with 0, '0xB LAUNCH: own exceeds limit'
                                    if sub_9ff41fe3[address(arg1)]:
                                        if block.timestamp < sub_9ff41fe3[address(arg1)]:
                                            revert with 0, 17
                                        if block.timestamp - sub_9ff41fe3[address(arg1)] < sub_f34f1522:
                                            revert with 0, '0xB LAUNCH: timeout'
                                    sub_9ff41fe3[address(arg1)] = block.timestamp
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

function sub_10153e7b(?) {
    if not msg.sender:
        revert with 0, 'SENDER IS 0'
    mem[96] = 0x5dbab6ed00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0x5dbab6ed with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _7 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _21 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _7
        mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        if ceil32(_7) <= _7:
            return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
        mem[_7 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_7) + _21 + -mem[64] + 64
    mem[_7 + ceil32(return_data.size) + 128] = 0
    _22 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
    mem[_7 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_7) + _22 + -mem[64] + 64
}

function sub_6b38c586(?) {
    if not msg.sender:
        revert with 0, 'SENDER IS 0'
    mem[96] = 0x77ec782600000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0x77ec7826 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _7 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _21 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _7
        mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        if ceil32(_7) <= _7:
            return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
        mem[_7 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_7) + _21 + -mem[64] + 64
    mem[_7 + ceil32(return_data.size) + 128] = 0
    _22 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
    mem[_7 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_7) + _22 + -mem[64] + 64
}

function sub_8161ab76(?) {
    if not msg.sender:
        revert with 0, 'SENDER IS 0'
    mem[96] = 0x8bf1451400000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0x8bf14514 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _7 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _21 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _7
        mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        if ceil32(_7) <= _7:
            return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
        mem[_7 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_7) + _21 + -mem[64] + 64
    mem[_7 + ceil32(return_data.size) + 128] = 0
    _22 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
    mem[_7 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_7) + _22 + -mem[64] + 64
}

function sub_84884e44(?) {
    if not msg.sender:
        revert with 0, 'SENDER IS 0'
    mem[96] = 0xf743f31900000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0xf743f319 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _7 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _21 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _7
        mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        if ceil32(_7) <= _7:
            return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
        mem[_7 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_7) + _21 + -mem[64] + 64
    mem[_7 + ceil32(return_data.size) + 128] = 0
    _22 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
    mem[_7 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_7) + _22 + -mem[64] + 64
}

function sub_8ea928f1(?) {
    if not msg.sender:
        revert with 0, 'SENDER IS 0'
    mem[96] = 0x51bf120c00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0x51bf120c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _7 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _21 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _7
        mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        if ceil32(_7) <= _7:
            return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
        mem[_7 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_7) + _21 + -mem[64] + 64
    mem[_7 + ceil32(return_data.size) + 128] = 0
    _22 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
    mem[_7 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_7) + _22 + -mem[64] + 64
}

function sub_9b03f449(?) {
    if not msg.sender:
        revert with 0, 'SENDER IS 0'
    mem[96] = 0x367fd07400000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0x367fd074 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _7 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _21 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _7
        mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        if ceil32(_7) <= _7:
            return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
        mem[_7 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_7) + _21 + -mem[64] + 64
    mem[_7 + ceil32(return_data.size) + 128] = 0
    _22 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
    mem[_7 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_7) + _22 + -mem[64] + 64
}

function sub_e22ee813(?) {
    if not msg.sender:
        revert with 0, 'SENDER IS 0'
    mem[96] = 0x28cceb2400000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0x28cceb24 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _7 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _21 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _7
        mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        if ceil32(_7) <= _7:
            return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
        mem[_7 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_7) + _21 + -mem[64] + 64
    mem[_7 + ceil32(return_data.size) + 128] = 0
    _22 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
    mem[_7 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_7) + _22 + -mem[64] + 64
}

function sub_d631f705(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > balanceOf[address(this.address)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SAVE_MISSENT: tokens exceed addr balance'
    if not address(arg1):
        revert with 0, 'SAVE_MISSENT: zero_address'
    if stor221[address(this.address)]:
        revert with 0, 'ERC20: Blacklisted address'
    if stor221[address(arg1)]:
        revert with 0, 'ERC20: Blacklisted address'
    if antiBotEnabled:
        if uniswapV2PairAddress != address(arg1):
            if uniswapV2RouterAddress != address(arg1):
                if rewardsPoolAddress != address(arg1):
                    if treasuryPoolAddress != address(arg1):
                        if liquidityPoolAddress != address(arg1):
                            if sub_810be66dAddress != address(arg1):
                                if address(arg1) != this.address:
                                    if balanceOf[address(arg1)] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] + arg2 > sub_86838116:
                                        revert with 0, '0xB LAUNCH: own exceeds limit'
                                    if sub_9ff41fe3[address(arg1)]:
                                        if block.timestamp < sub_9ff41fe3[address(arg1)]:
                                            revert with 0, 17
                                        if block.timestamp - sub_9ff41fe3[address(arg1)] < sub_f34f1522:
                                            revert with 0, '0xB LAUNCH: timeout'
                                    sub_9ff41fe3[address(arg1)] = block.timestamp
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(this.address)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(this.address)] -= arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, address(arg1));
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if stor221[address(arg1)]:
        revert with 0, 'ERC20: Blacklisted address'
    if stor221[address(arg2)]:
        revert with 0, 'ERC20: Blacklisted address'
    if antiBotEnabled:
        if uniswapV2PairAddress != arg2:
            if uniswapV2RouterAddress != arg2:
                if rewardsPoolAddress != arg2:
                    if treasuryPoolAddress != arg2:
                        if liquidityPoolAddress != arg2:
                            if sub_810be66dAddress != arg2:
                                if arg2 != this.address:
                                    if balanceOf[address(arg2)] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] + arg3 > sub_86838116:
                                        revert with 0, '0xB LAUNCH: own exceeds limit'
                                    if sub_9ff41fe3[address(arg2)]:
                                        if block.timestamp < sub_9ff41fe3[address(arg2)]:
                                            revert with 0, 17
                                        if block.timestamp - sub_9ff41fe3[address(arg2)] < sub_f34f1522:
                                            revert with 0, '0xB LAUNCH: timeout'
                                    sub_9ff41fe3[address(arg2)] = block.timestamp
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
    return 1
}

function cashoutAll() {
    if bool(sub_b9bd3933) != 1:
        revert with 0, 'CSHTALL: cashout disabled'
    if not msg.sender:
        revert with 0, 'CSHTALL: zero address'
    if stor221[address(msg.sender)]:
        revert with 0, 'CSHTALL: blacklisted address'
    if sub_810be66dAddress == msg.sender:
        revert with 0, 'CSHTALL: pools cannot cashout'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'CSHTALL: pools cannot cashout'
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHTALL: reward not ready'
    if not cashoutFee:
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor209] < ext_call.return_data[0]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor209] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[msg.sender] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
    else:
        if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
            revert with 0, 17
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor209] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor209] = balanceOf[stor209] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
        if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
            revert with 0, 17
        balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
        emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), rewardsPoolAddress, msg.sender);
    require ext_code.size(sub_9a6e80dbAddress)
    call sub_9a6e80dbAddress.0xd094fa8d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x564112c0: msg.sender
}

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(sub_b9bd3933) != 1:
        revert with 0, 'CSHT: Cashout Disabled'
    if not msg.sender:
        revert with 0, 'CSHT: zero address'
    if stor221[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: this address has been blacklisted'
    if sub_810be66dAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CSHT: future and reward pools cannot cashout rewards'
    if rewardsPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CSHT: future and reward pools cannot cashout rewards'
    if treasuryPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CSHT: future and reward pools cannot cashout rewards'
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress._getRewardAmountOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: your reward is not ready yet'
    if not cashoutFee:
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor209] < ext_call.return_data[0]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor209] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[msg.sender] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], rewardsPoolAddress, msg.sender);
    else:
        if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
            revert with 0, 17
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor209] < ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100):
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor209] = balanceOf[stor209] - ext_call.return_data[0] + (ext_call.return_data[0] * cashoutFee / 100)
        if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)):
            revert with 0, 17
        balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
        emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)), rewardsPoolAddress, msg.sender);
    require ext_code.size(sub_9a6e80dbAddress)
    call sub_9a6e80dbAddress.0xc2202b66 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x39f6d68d: msg.sender, arg1
}

function name() {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[(uint255(stor54.length) * 0.5) + ceil32(uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[stor54.length.field_1 + ceil32(stor54.length.field_1) + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[(uint255(stor55.length) * 0.5) + ceil32(uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[stor55.length.field_1 + ceil32(stor55.length.field_1) + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
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

function sub_3086319d(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require calldata.size > cd[4] + cd[s] + 67
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _468 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_468] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_468 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_468 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _468
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] < 3
    if not sub_eb71c5d9:
        revert with 0, 'CONTMINT: mint conts disabled'
    if mem[96] > stor204:
        revert with 0, 'CONTMINT: too many conts'
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128]] <= 3:
            revert with 0, 'CONTMINT: improper character count'
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128]] >= 33:
            revert with 0, 'CONTMINT: improper character count'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'CONTMINT: zero address'
    mem[0] = msg.sender
    mem[32] = 221
    if stor221[address(msg.sender)]:
        revert with 0, 'CONTMINT: blacklisted address'
    if sub_810be66dAddress == msg.sender:
        revert with 0, 'CONTMINT: pools cannot create cont'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'CONTMINT: pools cannot create cont'
    if treasuryPoolAddress == msg.sender:
        revert with 0, 'CONTMINT: pools cannot create cont'
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0x44fea1b9 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _995 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_995] > !mem[96]:
        revert with 0, 17
    if mem[_995] + mem[96] > sub_bcb8ebfc:
        revert with 0, 'CONTMINT: reached mint limit'
    _998 = mem[96]
    if cd[36] >= 3:
        revert with 0, 33
    mem[mem[64] + 4] = cd[36]
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0x63a9b098 with:
            gas gas_remaining wei
           args cd[36]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1003 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1004 = mem[_1003]
    if mem[_1003] and _998 > -1 / mem[_1003]:
        revert with 0, 17
    if sub_39306140 > !(mem[_1003] * _998):
        revert with 0, 17
    sub_39306140 += mem[_1003] * _998
    if balanceOf[address(msg.sender)] < mem[_1003] * _998:
        revert with 0, 'CONTMINT: Balance too low for creation.'
    if mem[_1003] * _998 and developmentFee > -1 / mem[_1003] * _998:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_0f1978fb:
        if not sub_810be66dAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < mem[_1003] * _998 * developmentFee / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= mem[_1003] * _998 * developmentFee / 100
        if balanceOf[stor207] > !(mem[_1003] * _998 * developmentFee / 100):
            revert with 0, 17
        balanceOf[stor207] += mem[_1003] * _998 * developmentFee / 100
        emit Transfer((mem[_1003] * _998 * developmentFee / 100), msg.sender, sub_810be66dAddress);
        if mem[_1003] * _998 and rewardsFee > -1 / mem[_1003] * _998:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < mem[_1003] * _998 * rewardsFee / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= mem[_1003] * _998 * rewardsFee / 100
        if balanceOf[stor209] > !(mem[_1003] * _998 * rewardsFee / 100):
            revert with 0, 17
        balanceOf[stor209] += mem[_1003] * _998 * rewardsFee / 100
        emit Transfer((mem[_1003] * _998 * rewardsFee / 100), msg.sender, rewardsPoolAddress);
        if mem[_1003] * _998 and treasuryFee > -1 / mem[_1003] * _998:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not sub_e0583ec0:
            if not treasuryPoolAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < mem[_1003] * _998 * treasuryFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= mem[_1003] * _998 * treasuryFee / 100
            if balanceOf[stor208] > !(mem[_1003] * _998 * treasuryFee / 100):
                revert with 0, 17
            balanceOf[stor208] += mem[_1003] * _998 * treasuryFee / 100
            emit Transfer((mem[_1003] * _998 * treasuryFee / 100), msg.sender, treasuryPoolAddress);
            if mem[_1003] * _998 and liquidityPoolFee > -1 / mem[_1003] * _998:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            mem[0] = uniswapV2RouterAddress
            mem[32] = sha3(address(msg.sender), 52)
            allowance[address(msg.sender)][stor202] = _1004 * _998 * liquidityPoolFee / 100
            emit Approval((_1004 * _998 * liquidityPoolFee / 100), msg.sender, uniswapV2RouterAddress);
            if 120 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = 0
            mem[mem[64] + 132] = liquidityPoolAddress
            mem[mem[64] + 164] = block.timestamp + 120
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(this.address), _1004 * _998 * liquidityPoolFee / 100, 0, 0, liquidityPoolAddress, block.timestamp + 120
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if ext_call.success:
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[mem[64] + 32] = _1004 * _998 * liquidityPoolFee / 100
                emit AddLiquidity(msg.sender, _1004 * _998 * liquidityPoolFee / 100);
                if _1004 * _998 < _1004 * _998 * developmentFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) < _1004 * _998 * rewardsFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) < _1004 * _998 * treasuryFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) < _1004 * _998 * liquidityPoolFee / 100:
                    revert with 0, 17
                if not (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                    _1187 = mem[64]
                    mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 96
                    _1188 = mem[96]
                    mem[mem[64] + 100] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 132
                    u = mem[64] + (32 * mem[96]) + 132
                    while idx < _1188:
                        mem[t] = u + -_1187 - 132
                        _1481 = mem[s]
                        _1487 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1487:
                            mem[v + u + 32] = mem[v + _1481 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1487) > _1487:
                            mem[_1487 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1487) + u + 32
                        continue 
                    if cd[36] >= 3:
                        revert with 0, 33
                    mem[_1187 + 68] = cd[36]
                else:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    mem[32] = 51
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (_1004 * _998) + (_1004 * _998 * developmentFee / 100) + (_1004 * _998 * rewardsFee / 100) + (_1004 * _998 * treasuryFee / 100) + (_1004 * _998 * liquidityPoolFee / 100)
                    mem[0] = this.address
                    if balanceOf[this.address] > !((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)):
                        revert with 0, 17
                    balanceOf[this.address] = balanceOf[this.address] + (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)
                    emit Transfer(((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)), msg.sender, this.address);
                    _1262 = mem[64]
                    mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 96
                    _1269 = mem[96]
                    mem[mem[64] + 100] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 132
                    u = mem[64] + (32 * mem[96]) + 132
                    while idx < _1269:
                        mem[t] = u + -_1262 - 132
                        _1482 = mem[s]
                        _1488 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1488:
                            mem[v + u + 32] = mem[v + _1482 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1488) > _1488:
                            mem[_1488 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1488) + u + 32
                        continue 
                    if cd[36] >= 3:
                        revert with 0, 33
                    mem[_1262 + 68] = cd[36]
            else:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not liquidityPoolAddress:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < _1004 * _998 * liquidityPoolFee / 100:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                mem[32] = 51
                balanceOf[address(msg.sender)] -= _1004 * _998 * liquidityPoolFee / 100
                mem[0] = liquidityPoolAddress
                if balanceOf[stor210] > !(_1004 * _998 * liquidityPoolFee / 100):
                    revert with 0, 17
                balanceOf[stor210] += _1004 * _998 * liquidityPoolFee / 100
                emit Transfer((_1004 * _998 * liquidityPoolFee / 100), msg.sender, liquidityPoolAddress);
                if _1004 * _998 < _1004 * _998 * developmentFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) < _1004 * _998 * rewardsFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) < _1004 * _998 * treasuryFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) < _1004 * _998 * liquidityPoolFee / 100:
                    revert with 0, 17
                if not (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                    _1209 = mem[64]
                    mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 96
                    _1216 = mem[96]
                    mem[mem[64] + 100] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 132
                    u = mem[64] + (32 * mem[96]) + 132
                    while idx < _1216:
                        mem[t] = u + -_1209 - 132
                        _1479 = mem[s]
                        _1485 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1485:
                            mem[v + u + 32] = mem[v + _1479 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1485) > _1485:
                            mem[_1485 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1485) + u + 32
                        continue 
                    if cd[36] >= 3:
                        revert with 0, 33
                    mem[_1209 + 68] = cd[36]
                else:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    mem[32] = 51
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (_1004 * _998) + (_1004 * _998 * developmentFee / 100) + (_1004 * _998 * rewardsFee / 100) + (_1004 * _998 * treasuryFee / 100) + (_1004 * _998 * liquidityPoolFee / 100)
                    mem[0] = this.address
                    if balanceOf[this.address] > !((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)):
                        revert with 0, 17
                    balanceOf[this.address] = balanceOf[this.address] + (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)
                    emit Transfer(((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)), msg.sender, this.address);
                    _1277 = mem[64]
                    mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 96
                    _1280 = mem[96]
                    mem[mem[64] + 100] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 132
                    u = mem[64] + (32 * mem[96]) + 132
                    while idx < _1280:
                        mem[t] = u + -_1277 - 132
                        _1480 = mem[s]
                        _1486 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1486:
                            mem[v + u + 32] = mem[v + _1480 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1486) > _1486:
                            mem[_1486 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1486) + u + 32
                        continue 
                    if cd[36] >= 3:
                        revert with 0, 33
                    mem[_1277 + 68] = cd[36]
        else:
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < mem[_1003] * _998 * treasuryFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            mem[32] = 51
            balanceOf[address(msg.sender)] -= _1004 * _998 * treasuryFee / 100
            mem[0] = this.address
            if balanceOf[this.address] > !(_1004 * _998 * treasuryFee / 100):
                revert with 0, 17
            balanceOf[this.address] += _1004 * _998 * treasuryFee / 100
            emit Transfer((_1004 * _998 * treasuryFee / 100), msg.sender, this.address);
            _1087 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            mem[_1087 + 32 len 96] = call.data[calldata.size len 96]
            if 0 >= mem[_1087]:
                revert with 0, 50
            mem[_1087 + 32] = this.address
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                    gas gas_remaining wei
            mem[_1087 + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1087 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= mem[_1087]:
                revert with 0, 50
            mem[_1087 + 64] = ext_call.return_data[12 len 20]
            if 2 >= mem[_1087]:
                revert with 0, 50
            mem[_1087 + 96] = usdcTokenAddress
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            mem[0] = uniswapV2RouterAddress
            mem[32] = sha3(address(this.address), 52)
            allowance[address(this.address)][stor202] = _1004 * _998 * treasuryFee / 100
            emit Approval((_1004 * _998 * treasuryFee / 100), this.address, uniswapV2RouterAddress);
            mem[_1087 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[_1087 + ceil32(return_data.size) + 132] = _1004 * _998 * treasuryFee / 100
            mem[_1087 + ceil32(return_data.size) + 164] = 0
            mem[_1087 + ceil32(return_data.size) + 196] = 160
            mem[_1087 + ceil32(return_data.size) + 292] = mem[_1087]
            idx = 0
            s = _1087 + ceil32(return_data.size) + 324
            t = _1087 + 32
            while idx < mem[_1087]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1087 + ceil32(return_data.size) + 228] = treasuryPoolAddress
            mem[_1087 + ceil32(return_data.size) + 260] = block.timestamp
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1087 + ceil32(return_data.size) + (32 * mem[_1087]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _1004 * _998 and liquidityPoolFee > -1 / _1004 * _998:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            mem[0] = uniswapV2RouterAddress
            mem[32] = sha3(address(msg.sender), 52)
            allowance[address(msg.sender)][stor202] = _1004 * _998 * liquidityPoolFee / 100
            emit Approval((_1004 * _998 * liquidityPoolFee / 100), msg.sender, uniswapV2RouterAddress);
            if 120 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = 0
            mem[mem[64] + 132] = liquidityPoolAddress
            mem[mem[64] + 164] = block.timestamp + 120
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(this.address), _1004 * _998 * liquidityPoolFee / 100, 0, 0, liquidityPoolAddress, block.timestamp + 120
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if ext_call.success:
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[mem[64] + 32] = _1004 * _998 * liquidityPoolFee / 100
                emit AddLiquidity(msg.sender, _1004 * _998 * liquidityPoolFee / 100);
                if _1004 * _998 < _1004 * _998 * developmentFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) < _1004 * _998 * rewardsFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) < _1004 * _998 * treasuryFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) < _1004 * _998 * liquidityPoolFee / 100:
                    revert with 0, 17
                if not (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                    _1571 = mem[64]
                    mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 96
                    _1573 = mem[96]
                    mem[mem[64] + 100] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 132
                    u = mem[64] + (32 * mem[96]) + 132
                    while idx < _1573:
                        mem[t] = u + -_1571 - 132
                        _1809 = mem[s]
                        _1818 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1818:
                            mem[v + u + 32] = mem[v + _1809 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1818) > _1818:
                            mem[_1818 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1818) + u + 32
                        continue 
                    if cd[36] >= 3:
                        revert with 0, 33
                    mem[_1571 + 68] = cd[36]
                else:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    mem[32] = 51
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (_1004 * _998) + (_1004 * _998 * developmentFee / 100) + (_1004 * _998 * rewardsFee / 100) + (_1004 * _998 * treasuryFee / 100) + (_1004 * _998 * liquidityPoolFee / 100)
                    mem[0] = this.address
                    if balanceOf[this.address] > !((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)):
                        revert with 0, 17
                    balanceOf[this.address] = balanceOf[this.address] + (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)
                    emit Transfer(((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)), msg.sender, this.address);
                    _1614 = mem[64]
                    mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 96
                    _1622 = mem[96]
                    mem[mem[64] + 100] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 132
                    u = mem[64] + (32 * mem[96]) + 132
                    while idx < _1622:
                        mem[t] = u + -_1614 - 132
                        _1810 = mem[s]
                        _1819 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1819:
                            mem[v + u + 32] = mem[v + _1810 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1819) > _1819:
                            mem[_1819 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1819) + u + 32
                        continue 
                    if cd[36] >= 3:
                        revert with 0, 33
                    mem[_1614 + 68] = cd[36]
            else:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not liquidityPoolAddress:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < _1004 * _998 * liquidityPoolFee / 100:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                mem[32] = 51
                balanceOf[address(msg.sender)] -= _1004 * _998 * liquidityPoolFee / 100
                mem[0] = liquidityPoolAddress
                if balanceOf[stor210] > !(_1004 * _998 * liquidityPoolFee / 100):
                    revert with 0, 17
                balanceOf[stor210] += _1004 * _998 * liquidityPoolFee / 100
                emit Transfer((_1004 * _998 * liquidityPoolFee / 100), msg.sender, liquidityPoolAddress);
                if _1004 * _998 < _1004 * _998 * developmentFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) < _1004 * _998 * rewardsFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) < _1004 * _998 * treasuryFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) < _1004 * _998 * liquidityPoolFee / 100:
                    revert with 0, 17
                if not (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                    _1580 = mem[64]
                    mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 96
                    _1586 = mem[96]
                    mem[mem[64] + 100] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 132
                    u = mem[64] + (32 * mem[96]) + 132
                    while idx < _1586:
                        mem[t] = u + -_1580 - 132
                        _1807 = mem[s]
                        _1816 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1816:
                            mem[v + u + 32] = mem[v + _1807 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1816) > _1816:
                            mem[_1816 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1816) + u + 32
                        continue 
                    if cd[36] >= 3:
                        revert with 0, 33
                    mem[_1580 + 68] = cd[36]
                else:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    mem[32] = 51
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (_1004 * _998) + (_1004 * _998 * developmentFee / 100) + (_1004 * _998 * rewardsFee / 100) + (_1004 * _998 * treasuryFee / 100) + (_1004 * _998 * liquidityPoolFee / 100)
                    mem[0] = this.address
                    if balanceOf[this.address] > !((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)):
                        revert with 0, 17
                    balanceOf[this.address] = balanceOf[this.address] + (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)
                    emit Transfer(((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)), msg.sender, this.address);
                    _1636 = mem[64]
                    mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 96
                    _1642 = mem[96]
                    mem[mem[64] + 100] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 132
                    u = mem[64] + (32 * mem[96]) + 132
                    while idx < _1642:
                        mem[t] = u + -_1636 - 132
                        _1808 = mem[s]
                        _1817 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1817:
                            mem[v + u + 32] = mem[v + _1808 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1817) > _1817:
                            mem[_1817 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1817) + u + 32
                        continue 
                    if cd[36] >= 3:
                        revert with 0, 33
                    mem[_1636 + 68] = cd[36]
    else:
        if not this.address:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < mem[_1003] * _998 * developmentFee / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        mem[32] = 51
        balanceOf[address(msg.sender)] -= _1004 * _998 * developmentFee / 100
        mem[0] = this.address
        if balanceOf[this.address] > !(_1004 * _998 * developmentFee / 100):
            revert with 0, 17
        balanceOf[this.address] += _1004 * _998 * developmentFee / 100
        emit Transfer((_1004 * _998 * developmentFee / 100), msg.sender, this.address);
        _1030 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_1030 + 32 len 96] = call.data[calldata.size len 96]
        if 0 >= mem[_1030]:
            revert with 0, 50
        mem[_1030 + 32] = this.address
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.0x73b295c2 with:
                gas gas_remaining wei
        mem[_1030 + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1030 + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= mem[_1030]:
            revert with 0, 50
        mem[_1030 + 64] = ext_call.return_data[12 len 20]
        if 2 >= mem[_1030]:
            revert with 0, 50
        mem[_1030 + 96] = usdcTokenAddress
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        mem[0] = uniswapV2RouterAddress
        mem[32] = sha3(address(this.address), 52)
        allowance[address(this.address)][stor202] = _1004 * _998 * developmentFee / 100
        emit Approval((_1004 * _998 * developmentFee / 100), this.address, uniswapV2RouterAddress);
        mem[_1030 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[_1030 + ceil32(return_data.size) + 132] = _1004 * _998 * developmentFee / 100
        mem[_1030 + ceil32(return_data.size) + 164] = 0
        mem[_1030 + ceil32(return_data.size) + 196] = 160
        mem[_1030 + ceil32(return_data.size) + 292] = mem[_1030]
        idx = 0
        s = _1030 + ceil32(return_data.size) + 324
        t = _1030 + 32
        while idx < mem[_1030]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1030 + ceil32(return_data.size) + 260] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _1004 * _998 * developmentFee / 100, 0, 160, sub_810be66dAddress, block.timestamp, mem[_1030 + ceil32(return_data.size) + 292 len (32 * mem[_1030]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _1004 * _998 and rewardsFee > -1 / _1004 * _998:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < _1004 * _998 * rewardsFee / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= _1004 * _998 * rewardsFee / 100
        if balanceOf[stor209] > !(_1004 * _998 * rewardsFee / 100):
            revert with 0, 17
        balanceOf[stor209] += _1004 * _998 * rewardsFee / 100
        emit Transfer((_1004 * _998 * rewardsFee / 100), msg.sender, rewardsPoolAddress);
        if _1004 * _998 and treasuryFee > -1 / _1004 * _998:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not sub_e0583ec0:
            if not treasuryPoolAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < _1004 * _998 * treasuryFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= _1004 * _998 * treasuryFee / 100
            if balanceOf[stor208] > !(_1004 * _998 * treasuryFee / 100):
                revert with 0, 17
            balanceOf[stor208] += _1004 * _998 * treasuryFee / 100
            emit Transfer((_1004 * _998 * treasuryFee / 100), msg.sender, treasuryPoolAddress);
            if _1004 * _998 and liquidityPoolFee > -1 / _1004 * _998:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            mem[0] = uniswapV2RouterAddress
            mem[32] = sha3(address(msg.sender), 52)
            allowance[address(msg.sender)][stor202] = _1004 * _998 * liquidityPoolFee / 100
            emit Approval((_1004 * _998 * liquidityPoolFee / 100), msg.sender, uniswapV2RouterAddress);
            if 120 > !block.timestamp:
                revert with 0, 17
            mem[_1030 + ceil32(return_data.size) + 196] = 0
            mem[_1030 + ceil32(return_data.size) + 228] = 0
            mem[_1030 + ceil32(return_data.size) + 260] = liquidityPoolAddress
            mem[_1030 + ceil32(return_data.size) + 292] = block.timestamp + 120
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(this.address), _1004 * _998 * liquidityPoolFee / 100, 0, 0, liquidityPoolAddress, block.timestamp + 120
            mem[_1030 + ceil32(return_data.size) + 128 len 96] = ext_call.return_data[0 len 96]
            if ext_call.success:
                mem[64] = _1030 + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 96
                emit AddLiquidity(msg.sender, _1004 * _998 * liquidityPoolFee / 100);
                if _1004 * _998 < _1004 * _998 * developmentFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) < _1004 * _998 * rewardsFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) < _1004 * _998 * treasuryFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) < _1004 * _998 * liquidityPoolFee / 100:
                    revert with 0, 17
                if not (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                    mem[_1030 + (2 * ceil32(return_data.size)) + 128] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[_1030 + (2 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[_1030 + (2 * ceil32(return_data.size)) + 164] = 96
                    _1677 = mem[96]
                    mem[_1030 + (2 * ceil32(return_data.size)) + 228] = mem[96]
                    idx = 0
                    s = 128
                    t = _1030 + (2 * ceil32(return_data.size)) + 260
                    u = _1030 + (2 * ceil32(return_data.size)) + (32 * mem[96]) + 260
                    while idx < _1677:
                        mem[t] = u + -_1030 + -(2 * ceil32(return_data.size)) - 260
                        _1813 = mem[s]
                        _1822 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1822:
                            mem[v + u + 32] = mem[v + _1813 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1822) > _1822:
                            mem[_1822 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1822) + u + 32
                        continue 
                else:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    mem[32] = 51
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (_1004 * _998) + (_1004 * _998 * developmentFee / 100) + (_1004 * _998 * rewardsFee / 100) + (_1004 * _998 * treasuryFee / 100) + (_1004 * _998 * liquidityPoolFee / 100)
                    mem[0] = this.address
                    if balanceOf[this.address] > !((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)):
                        revert with 0, 17
                    balanceOf[this.address] = balanceOf[this.address] + (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)
                    emit Transfer(((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)), msg.sender, this.address);
                    mem[_1030 + (2 * ceil32(return_data.size)) + 128] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[_1030 + (2 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[_1030 + (2 * ceil32(return_data.size)) + 164] = 96
                    _1729 = mem[96]
                    mem[_1030 + (2 * ceil32(return_data.size)) + 228] = mem[96]
                    idx = 0
                    s = 128
                    t = _1030 + (2 * ceil32(return_data.size)) + 260
                    u = _1030 + (2 * ceil32(return_data.size)) + (32 * mem[96]) + 260
                    while idx < _1729:
                        mem[t] = u + -_1030 + -(2 * ceil32(return_data.size)) - 260
                        _1814 = mem[s]
                        _1823 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1823:
                            mem[v + u + 32] = mem[v + _1814 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1823) > _1823:
                            mem[_1823 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1823) + u + 32
                        continue 
                if cd[36] >= 3:
                    revert with 0, 33
                mem[_1030 + (2 * ceil32(return_data.size)) + 196] = cd[36]
            else:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not liquidityPoolAddress:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < _1004 * _998 * liquidityPoolFee / 100:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                mem[32] = 51
                balanceOf[address(msg.sender)] -= _1004 * _998 * liquidityPoolFee / 100
                mem[0] = liquidityPoolAddress
                if balanceOf[stor210] > !(_1004 * _998 * liquidityPoolFee / 100):
                    revert with 0, 17
                balanceOf[stor210] += _1004 * _998 * liquidityPoolFee / 100
                emit Transfer((_1004 * _998 * liquidityPoolFee / 100), msg.sender, liquidityPoolAddress);
                if _1004 * _998 < _1004 * _998 * developmentFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) < _1004 * _998 * rewardsFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) < _1004 * _998 * treasuryFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) < _1004 * _998 * liquidityPoolFee / 100:
                    revert with 0, 17
                if not (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                    mem[_1030 + ceil32(return_data.size) + 128] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[_1030 + ceil32(return_data.size) + 132] = msg.sender
                    mem[_1030 + ceil32(return_data.size) + 164] = 96
                    _1692 = mem[96]
                    mem[_1030 + ceil32(return_data.size) + 228] = mem[96]
                    idx = 0
                    s = 128
                    t = _1030 + ceil32(return_data.size) + 260
                    u = _1030 + ceil32(return_data.size) + (32 * mem[96]) + 260
                    while idx < _1692:
                        mem[t] = u + -_1030 + -ceil32(return_data.size) - 260
                        _1811 = mem[s]
                        _1820 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1820:
                            mem[v + u + 32] = mem[v + _1811 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1820) > _1820:
                            mem[_1820 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1820) + u + 32
                        continue 
                else:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    mem[32] = 51
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (_1004 * _998) + (_1004 * _998 * developmentFee / 100) + (_1004 * _998 * rewardsFee / 100) + (_1004 * _998 * treasuryFee / 100) + (_1004 * _998 * liquidityPoolFee / 100)
                    mem[0] = this.address
                    if balanceOf[this.address] > !((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)):
                        revert with 0, 17
                    balanceOf[this.address] = balanceOf[this.address] + (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)
                    emit Transfer(((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)), msg.sender, this.address);
                    mem[_1030 + ceil32(return_data.size) + 128] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[_1030 + ceil32(return_data.size) + 132] = msg.sender
                    mem[_1030 + ceil32(return_data.size) + 164] = 96
                    _1738 = mem[96]
                    mem[_1030 + ceil32(return_data.size) + 228] = mem[96]
                    idx = 0
                    s = 128
                    t = _1030 + ceil32(return_data.size) + 260
                    u = _1030 + ceil32(return_data.size) + (32 * mem[96]) + 260
                    while idx < _1738:
                        mem[t] = u + -_1030 + -ceil32(return_data.size) - 260
                        _1812 = mem[s]
                        _1821 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1821:
                            mem[v + u + 32] = mem[v + _1812 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1821) > _1821:
                            mem[_1821 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1821) + u + 32
                        continue 
                if cd[36] >= 3:
                    revert with 0, 33
                mem[_1030 + ceil32(return_data.size) + 196] = cd[36]
        else:
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < _1004 * _998 * treasuryFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= _1004 * _998 * treasuryFee / 100
            if balanceOf[this.address] > !(_1004 * _998 * treasuryFee / 100):
                revert with 0, 17
            balanceOf[this.address] += _1004 * _998 * treasuryFee / 100
            emit Transfer((_1004 * _998 * treasuryFee / 100), msg.sender, this.address);
            mem[_1030 + ceil32(return_data.size) + 128] = 3
            mem[_1030 + ceil32(return_data.size) + 160] = this.address
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.0x73b295c2 with:
                    gas gas_remaining wei
            mem[_1030 + ceil32(return_data.size) + 256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1030 + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_1030 + ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
            mem[_1030 + ceil32(return_data.size) + 224] = usdcTokenAddress
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor202] = _1004 * _998 * treasuryFee / 100
            emit Approval((_1004 * _998 * treasuryFee / 100), this.address, uniswapV2RouterAddress);
            mem[_1030 + (2 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[_1030 + (2 * ceil32(return_data.size)) + 260] = _1004 * _998 * treasuryFee / 100
            mem[_1030 + (2 * ceil32(return_data.size)) + 292] = 0
            mem[_1030 + (2 * ceil32(return_data.size)) + 324] = 160
            mem[_1030 + (2 * ceil32(return_data.size)) + 420] = 3
            idx = 0
            s = _1030 + (2 * ceil32(return_data.size)) + 452
            t = _1030 + ceil32(return_data.size) + 160
            while idx < mem[_1030 + ceil32(return_data.size) + 128]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1030 + (2 * ceil32(return_data.size)) + 356] = treasuryPoolAddress
            mem[_1030 + (2 * ceil32(return_data.size)) + 388] = block.timestamp
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _1004 * _998 * treasuryFee / 100, 0, 160, treasuryPoolAddress, block.timestamp, mem[_1030 + (2 * ceil32(return_data.size)) + 420 len (32 * mem[_1030 + ceil32(return_data.size) + 128]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _1004 * _998 and liquidityPoolFee > -1 / _1004 * _998:
                revert with 0, 17
            if not msg.sender:
                mem[_1030 + (2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1030 + (2 * ceil32(return_data.size)) + 260] = 32
                mem[_1030 + (2 * ceil32(return_data.size)) + 292] = 36
                mem[_1030 + (2 * ceil32(return_data.size)) + 324] = 'ERC20: approve from the zero add'
                mem[_1030 + (2 * ceil32(return_data.size)) + 356] = 0x7265737300000000000000000000000000000000000000000000000000000000
                revert with memory
                  from _1030 + (2 * ceil32(return_data.size)) + 256
                   len ceil32(return_data.size) + 132
            if not uniswapV2RouterAddress:
                mem[_1030 + (2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1030 + (2 * ceil32(return_data.size)) + 260] = 32
                mem[_1030 + (2 * ceil32(return_data.size)) + 292] = 34
                mem[_1030 + (2 * ceil32(return_data.size)) + 324] = 'ERC20: approve to the zero addre'
                mem[_1030 + (2 * ceil32(return_data.size)) + 356] = 0x7373000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from _1030 + (2 * ceil32(return_data.size)) + 256
                   len ceil32(return_data.size) + 132
            mem[0] = uniswapV2RouterAddress
            mem[32] = sha3(address(msg.sender), 52)
            allowance[address(msg.sender)][stor202] = _1004 * _998 * liquidityPoolFee / 100
            emit Approval((_1004 * _998 * liquidityPoolFee / 100), msg.sender, uniswapV2RouterAddress);
            if 120 > !block.timestamp:
                revert with 0, 17
            mem[_1030 + (2 * ceil32(return_data.size)) + 260] = this.address
            mem[_1030 + (2 * ceil32(return_data.size)) + 292] = _1004 * _998 * liquidityPoolFee / 100
            mem[_1030 + (2 * ceil32(return_data.size)) + 324] = 0
            mem[_1030 + (2 * ceil32(return_data.size)) + 356] = 0
            mem[_1030 + (2 * ceil32(return_data.size)) + 388] = liquidityPoolAddress
            mem[_1030 + (2 * ceil32(return_data.size)) + 420] = block.timestamp + 120
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args mem[_1030 + (2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 192]
            mem[_1030 + (2 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
            if ext_call.success:
                mem[64] = _1030 + (4 * ceil32(return_data.size)) + 256
                require return_data.size >= 96
                emit AddLiquidity(msg.sender, _1004 * _998 * liquidityPoolFee / 100);
                if _1004 * _998 < _1004 * _998 * developmentFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) < _1004 * _998 * rewardsFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) < _1004 * _998 * treasuryFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) < _1004 * _998 * liquidityPoolFee / 100:
                    revert with 0, 17
                if not (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                    mem[_1030 + (4 * ceil32(return_data.size)) + 256] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[_1030 + (4 * ceil32(return_data.size)) + 260] = msg.sender
                    mem[_1030 + (4 * ceil32(return_data.size)) + 292] = 96
                    _1885 = mem[96]
                    mem[_1030 + (4 * ceil32(return_data.size)) + 356] = mem[96]
                    idx = 0
                    s = 128
                    t = _1030 + (4 * ceil32(return_data.size)) + 388
                    u = _1030 + (4 * ceil32(return_data.size)) + (32 * mem[96]) + 388
                    while idx < _1885:
                        mem[t] = u + -_1030 + -(4 * ceil32(return_data.size)) - 388
                        _1948 = mem[s]
                        _1952 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1952:
                            mem[v + u + 32] = mem[v + _1948 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1952) > _1952:
                            mem[_1952 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1952) + u + 32
                        continue 
                else:
                    if not msg.sender:
                        mem[_1030 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1030 + (4 * ceil32(return_data.size)) + 260] = 32
                        mem[_1030 + (4 * ceil32(return_data.size)) + 292] = 37
                        mem[_1030 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer from the zero ad'
                        mem[_1030 + (4 * ceil32(return_data.size)) + 356] = 0x6472657373000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from _1030 + (4 * ceil32(return_data.size)) + 256
                           len (5 * ceil32(return_data.size)) + 132
                    if not this.address:
                        mem[_1030 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1030 + (4 * ceil32(return_data.size)) + 260] = 32
                        mem[_1030 + (4 * ceil32(return_data.size)) + 292] = 35
                        mem[_1030 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer to the zero addr'
                        mem[_1030 + (4 * ceil32(return_data.size)) + 356] = 0x6573730000000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from _1030 + (4 * ceil32(return_data.size)) + 256
                           len (5 * ceil32(return_data.size)) + 132
                    if balanceOf[address(msg.sender)] < (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                        mem[_1030 + (4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1030 + (4 * ceil32(return_data.size)) + 260] = 32
                        mem[_1030 + (4 * ceil32(return_data.size)) + 292] = 38
                        mem[_1030 + (4 * ceil32(return_data.size)) + 324] = 'ERC20: transfer amount exceeds b'
                        mem[_1030 + (4 * ceil32(return_data.size)) + 356] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                        revert with memory
                          from _1030 + (4 * ceil32(return_data.size)) + 256
                           len (5 * ceil32(return_data.size)) + 132
                    mem[32] = 51
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (_1004 * _998) + (_1004 * _998 * developmentFee / 100) + (_1004 * _998 * rewardsFee / 100) + (_1004 * _998 * treasuryFee / 100) + (_1004 * _998 * liquidityPoolFee / 100)
                    mem[0] = this.address
                    if balanceOf[this.address] > !((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)):
                        revert with 0, 17
                    balanceOf[this.address] = balanceOf[this.address] + (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)
                    emit Transfer(((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)), msg.sender, this.address);
                    mem[_1030 + (4 * ceil32(return_data.size)) + 256] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[_1030 + (4 * ceil32(return_data.size)) + 260] = msg.sender
                    mem[_1030 + (4 * ceil32(return_data.size)) + 292] = 96
                    _1920 = mem[96]
                    mem[_1030 + (4 * ceil32(return_data.size)) + 356] = mem[96]
                    idx = 0
                    s = 128
                    t = _1030 + (4 * ceil32(return_data.size)) + 388
                    u = _1030 + (4 * ceil32(return_data.size)) + (32 * mem[96]) + 388
                    while idx < _1920:
                        mem[t] = u + -_1030 + -(4 * ceil32(return_data.size)) - 388
                        _1949 = mem[s]
                        _1953 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1953:
                            mem[v + u + 32] = mem[v + _1949 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1953) > _1953:
                            mem[_1953 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1953) + u + 32
                        continue 
                if cd[36] >= 3:
                    revert with 0, 33
                mem[_1030 + (4 * ceil32(return_data.size)) + 324] = cd[36]
            else:
                if not msg.sender:
                    mem[_1030 + (2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1030 + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[_1030 + (2 * ceil32(return_data.size)) + 292] = 37
                    mem[_1030 + (2 * ceil32(return_data.size)) + 324] = 'ERC20: transfer from the zero ad'
                    mem[_1030 + (2 * ceil32(return_data.size)) + 356] = 0x6472657373000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from _1030 + (2 * ceil32(return_data.size)) + 256
                       len ceil32(return_data.size) + 132
                if not liquidityPoolAddress:
                    mem[_1030 + (2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1030 + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[_1030 + (2 * ceil32(return_data.size)) + 292] = 35
                    mem[_1030 + (2 * ceil32(return_data.size)) + 324] = 'ERC20: transfer to the zero addr'
                    mem[_1030 + (2 * ceil32(return_data.size)) + 356] = 0x6573730000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from _1030 + (2 * ceil32(return_data.size)) + 256
                       len ceil32(return_data.size) + 132
                if balanceOf[address(msg.sender)] < _1004 * _998 * liquidityPoolFee / 100:
                    mem[_1030 + (2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1030 + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[_1030 + (2 * ceil32(return_data.size)) + 292] = 38
                    mem[_1030 + (2 * ceil32(return_data.size)) + 324] = 'ERC20: transfer amount exceeds b'
                    mem[_1030 + (2 * ceil32(return_data.size)) + 356] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                    revert with memory
                      from _1030 + (2 * ceil32(return_data.size)) + 256
                       len ceil32(return_data.size) + 132
                mem[32] = 51
                balanceOf[address(msg.sender)] -= _1004 * _998 * liquidityPoolFee / 100
                mem[0] = liquidityPoolAddress
                if balanceOf[stor210] > !(_1004 * _998 * liquidityPoolFee / 100):
                    revert with 0, 17
                balanceOf[stor210] += _1004 * _998 * liquidityPoolFee / 100
                emit Transfer((_1004 * _998 * liquidityPoolFee / 100), msg.sender, liquidityPoolAddress);
                if _1004 * _998 < _1004 * _998 * developmentFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) < _1004 * _998 * rewardsFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) < _1004 * _998 * treasuryFee / 100:
                    revert with 0, 17
                if (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) < _1004 * _998 * liquidityPoolFee / 100:
                    revert with 0, 17
                if not (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                    mem[_1030 + (2 * ceil32(return_data.size)) + 256] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[_1030 + (2 * ceil32(return_data.size)) + 260] = msg.sender
                    mem[_1030 + (2 * ceil32(return_data.size)) + 292] = 96
                    _1897 = mem[96]
                    mem[_1030 + (2 * ceil32(return_data.size)) + 356] = mem[96]
                    idx = 0
                    s = 128
                    t = _1030 + (2 * ceil32(return_data.size)) + 388
                    u = _1030 + (2 * ceil32(return_data.size)) + (32 * mem[96]) + 388
                    while idx < _1897:
                        mem[t] = u + -_1030 + -(2 * ceil32(return_data.size)) - 388
                        _1946 = mem[s]
                        _1950 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1950:
                            mem[v + u + 32] = mem[v + _1946 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1950) > _1950:
                            mem[_1950 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1950) + u + 32
                        continue 
                else:
                    if not msg.sender:
                        mem[_1030 + (2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1030 + (2 * ceil32(return_data.size)) + 260] = 32
                        mem[_1030 + (2 * ceil32(return_data.size)) + 292] = 37
                        mem[_1030 + (2 * ceil32(return_data.size)) + 324] = 'ERC20: transfer from the zero ad'
                        mem[_1030 + (2 * ceil32(return_data.size)) + 356] = 0x6472657373000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from _1030 + (2 * ceil32(return_data.size)) + 256
                           len ceil32(return_data.size) + 132
                    if not this.address:
                        mem[_1030 + (2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1030 + (2 * ceil32(return_data.size)) + 260] = 32
                        mem[_1030 + (2 * ceil32(return_data.size)) + 292] = 35
                        mem[_1030 + (2 * ceil32(return_data.size)) + 324] = 'ERC20: transfer to the zero addr'
                        mem[_1030 + (2 * ceil32(return_data.size)) + 356] = 0x6573730000000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from _1030 + (2 * ceil32(return_data.size)) + 256
                           len ceil32(return_data.size) + 132
                    if balanceOf[address(msg.sender)] < (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100):
                        mem[_1030 + (2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1030 + (2 * ceil32(return_data.size)) + 260] = 32
                        mem[_1030 + (2 * ceil32(return_data.size)) + 292] = 38
                        mem[_1030 + (2 * ceil32(return_data.size)) + 324] = 'ERC20: transfer amount exceeds b'
                        mem[_1030 + (2 * ceil32(return_data.size)) + 356] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                        revert with memory
                          from _1030 + (2 * ceil32(return_data.size)) + 256
                           len ceil32(return_data.size) + 132
                    mem[32] = 51
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (_1004 * _998) + (_1004 * _998 * developmentFee / 100) + (_1004 * _998 * rewardsFee / 100) + (_1004 * _998 * treasuryFee / 100) + (_1004 * _998 * liquidityPoolFee / 100)
                    mem[0] = this.address
                    if balanceOf[this.address] > !((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)):
                        revert with 0, 17
                    balanceOf[this.address] = balanceOf[this.address] + (_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)
                    emit Transfer(((_1004 * _998) - (_1004 * _998 * developmentFee / 100) - (_1004 * _998 * rewardsFee / 100) - (_1004 * _998 * treasuryFee / 100) - (_1004 * _998 * liquidityPoolFee / 100)), msg.sender, this.address);
                    mem[_1030 + (2 * ceil32(return_data.size)) + 256] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                    mem[_1030 + (2 * ceil32(return_data.size)) + 260] = msg.sender
                    mem[_1030 + (2 * ceil32(return_data.size)) + 292] = 96
                    _1927 = mem[96]
                    mem[_1030 + (2 * ceil32(return_data.size)) + 356] = mem[96]
                    idx = 0
                    s = 128
                    t = _1030 + (2 * ceil32(return_data.size)) + 388
                    u = _1030 + (2 * ceil32(return_data.size)) + (32 * mem[96]) + 388
                    while idx < _1927:
                        mem[t] = u + -_1030 + -(2 * ceil32(return_data.size)) - 388
                        _1947 = mem[s]
                        _1951 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1951:
                            mem[v + u + 32] = mem[v + _1947 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1951) > _1951:
                            mem[_1951 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1951) + u + 32
                        continue 
                if cd[36] >= 3:
                    revert with 0, 33
                mem[_1030 + (2 * ceil32(return_data.size)) + 324] = cd[36]
    require ext_code.size(sub_9a6e80dbAddress)
    call sub_9a6e80dbAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len u + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x120c2f36: msg.sender
}



}
