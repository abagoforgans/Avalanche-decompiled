contract main {




// =====================  Runtime code  =====================


#
#  - sub_57dae063(?)
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
address stor217;
address usdcTokenAddress; offset 16
uint256 stor217; offset 8
uint256 sub_86838116;
uint256 sub_f34f1522;
mapping of uint256 sub_9ff41fe3;
mapping of uint8 stor221;
mapping of uint8 stor222;
uint8 sub_b9bd3933;
uint8 sub_eb71c5d9; offset 8
address stor223;
address sub_f764bfb5Address; offset 16
uint256 stor223; offset 8
uint8 sub_0db92449; offset 160
uint128 stor224; offset 160
address sub_82a8ebadAddress;

function rewardsPool() {
    return rewardsPoolAddress
}

function sub_0db92449(?) {
    return bool(sub_0db92449)
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

function sub_82a8ebad(?) {
    return sub_82a8ebadAddress
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

function sub_f764bfb5(?) {
    return sub_f764bfb5Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function sub_839df919(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor217.field_8) = Mask(248, 0, bool(arg1))
}

function sub_9149acbc(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor223.field_8) = Mask(248, 0, bool(arg1))
}

function sub_ba2734d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor224.field_160) = Mask(96, 0, bool(arg1))
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

function setUSDCAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'NEW_USDC: zero addr'
    usdcTokenAddress = arg1
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

function sub_5dd731fc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'UPD_WALL: zero addr'
    sub_f764bfb5Address = address(arg1)
}

function sub_cd6e18f1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'NEW_LROUTER: zero addr'
    sub_82a8ebadAddress = address(arg1)
}

function getRewardAmount() {
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0x619a635e with:
            gas gas_remaining wei
           args msg.sender
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_3bf20e60(?) {
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

function sub_241a38c6(?) payable {
    require calldata.size - 4 >= 64
    if block.timestamp > !arg2:
        revert with 0, 17
    require ext_code.size(sub_82a8ebadAddress)
    call sub_82a8ebadAddress.0x8f6e53b7 with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, arg1, block.timestamp + arg2
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

function sub_d75e2773(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    if arg1 > 2:
        revert with 0, 33
    if arg1 >= 3:
        revert with 0, 33
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0xce6912a3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg1:
        revert with 0, 17
    return (ext_call.return_data[0] + arg1)
}

function sub_07a55860(?) payable {
    require calldata.size - 4 >= 96
    if arg2 > msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SWAP: msg.value less than slippage'
    if block.timestamp > !arg3:
        revert with 0, 17
    require ext_code.size(sub_82a8ebadAddress)
    call sub_82a8ebadAddress.0xed9705da with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, arg1, block.timestamp + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor221[address(msg.sender)]:
        revert with 0, 'ERC20: Blacklisted address'
    if stor221[address(arg1)]:
        revert with 0, 'ERC20: Blacklisted address'
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

function sub_0841e977(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'SWAP: insufficient balance'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_82a8ebadAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > !arg4:
        revert with 0, 17
    require ext_code.size(sub_82a8ebadAddress)
    call sub_82a8ebadAddress.0x6e54a8a0 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2, arg3, block.timestamp + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9c64291c(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'SWAP: insufficient balance'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_82a8ebadAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > !arg4:
        revert with 0, 17
    require ext_code.size(sub_82a8ebadAddress)
    call sub_82a8ebadAddress.0x74cefd8a with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2, arg3, block.timestamp + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_0129981c(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if balanceOf[address(msg.sender)] < arg3:
        revert with 0, 'SWAP: insufficient balance'
    if stor221[address(msg.sender)]:
        revert with 0, 'ERC20: Blacklisted address'
    if stor221[address(stor224.field_0)]:
        revert with 0, 'ERC20: Blacklisted address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not sub_82a8ebadAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg3
    if balanceOf[address(stor224.field_0)] > !arg3:
        revert with 0, 17
    balanceOf[address(stor224.field_0)] += arg3
    emit Transfer(arg3, msg.sender, sub_82a8ebadAddress);
    if block.timestamp > !arg4:
        revert with 0, 17
    require ext_code.size(sub_82a8ebadAddress)
    call sub_82a8ebadAddress.0x80be66cf with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), arg2, arg3, block.timestamp + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f2e03023(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'SWAP: insufficient balance'
    if stor221[address(msg.sender)]:
        revert with 0, 'ERC20: Blacklisted address'
    if stor221[address(stor224.field_0)]:
        revert with 0, 'ERC20: Blacklisted address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not sub_82a8ebadAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(stor224.field_0)] > !arg2:
        revert with 0, 17
    balanceOf[address(stor224.field_0)] += arg2
    emit Transfer(arg2, msg.sender, sub_82a8ebadAddress);
    if block.timestamp > !arg4:
        revert with 0, 17
    require ext_code.size(sub_82a8ebadAddress)
    call sub_82a8ebadAddress.0x88e5249f with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), arg2, arg3, block.timestamp + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_10153e7b(?) {
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
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[_5 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[_5 + ceil32(return_data.size) + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[_5 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function sub_6b38c586(?) {
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
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[_5 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[_5 + ceil32(return_data.size) + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[_5 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function sub_8161ab76(?) {
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
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[_5 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[_5 + ceil32(return_data.size) + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[_5 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function sub_84884e44(?) {
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
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[_5 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[_5 + ceil32(return_data.size) + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[_5 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function sub_8ea928f1(?) {
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
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[_5 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[_5 + ceil32(return_data.size) + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[_5 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function sub_9b03f449(?) {
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
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[_5 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[_5 + ceil32(return_data.size) + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[_5 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function sub_e22ee813(?) {
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
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[_5 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[_5 + ceil32(return_data.size) + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[_5 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
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

function cashoutAll() {
    if bool(sub_b9bd3933) != 1:
        revert with 0, 'CSHTALL: cashout disabled'
    if not msg.sender:
        revert with 0, 'CSHTALL: zero address'
    if stor221[address(msg.sender)]:
        revert with 0, 'CSHTALL: blacklisted address'
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0x619a635e with:
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
        if stor221[stor209]:
            revert with 0, 'ERC20: Blacklisted address'
        if stor221[address(msg.sender)]:
            revert with 0, 'ERC20: Blacklisted address'
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
        if not sub_0db92449:
            if rewardsPoolAddress != sub_f764bfb5Address:
                if not rewardsPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not sub_f764bfb5Address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[stor209] < ext_call.return_data[0] * cashoutFee / 100:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[stor209] -= ext_call.return_data[0] * cashoutFee / 100
                if balanceOf[address(stor223.field_16)] > !(ext_call.return_data[0] * cashoutFee / 100):
                    revert with 0, 17
                balanceOf[address(stor223.field_16)] += ext_call.return_data[0] * cashoutFee / 100
                emit Transfer((ext_call.return_data[0] * cashoutFee / 100), rewardsPoolAddress, sub_f764bfb5Address);
        else:
            if not rewardsPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not sub_82a8ebadAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor209] < ext_call.return_data[0] * cashoutFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor209] -= ext_call.return_data[0] * cashoutFee / 100
            if balanceOf[address(stor224.field_0)] > !(ext_call.return_data[0] * cashoutFee / 100):
                revert with 0, 17
            balanceOf[address(stor224.field_0)] += ext_call.return_data[0] * cashoutFee / 100
            emit Transfer((ext_call.return_data[0] * cashoutFee / 100), rewardsPoolAddress, sub_82a8ebadAddress);
            require ext_code.size(sub_82a8ebadAddress)
            call sub_82a8ebadAddress.0x88e5249f with:
                 gas gas_remaining wei
                args address(stor223.field_0), address(stor217.field_0), ext_call.return_data[0] * cashoutFee / 100, 0, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
            revert with 0, 17
        if stor221[stor209]:
            revert with 0, 'ERC20: Blacklisted address'
        if stor221[address(msg.sender)]:
            revert with 0, 'ERC20: Blacklisted address'
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
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
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

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(sub_b9bd3933) != 1:
        revert with 0, 'CSHT: Cashout Disabled'
    if not msg.sender:
        revert with 0, 'CSHT: zero address'
    if stor221[address(msg.sender)]:
        revert with 0, 'CSHT: blacklisted'
    require ext_code.size(sub_9a6e80dbAddress)
    staticcall sub_9a6e80dbAddress.0xa6e15cc4 with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: reward not ready'
    if not cashoutFee:
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if stor221[stor209]:
            revert with 0, 'ERC20: Blacklisted address'
        if stor221[address(msg.sender)]:
            revert with 0, 'ERC20: Blacklisted address'
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
        if not sub_0db92449:
            if rewardsPoolAddress != sub_f764bfb5Address:
                if not rewardsPoolAddress:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not sub_f764bfb5Address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[stor209] < ext_call.return_data[0] * cashoutFee / 100:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[stor209] -= ext_call.return_data[0] * cashoutFee / 100
                if balanceOf[address(stor223.field_16)] > !(ext_call.return_data[0] * cashoutFee / 100):
                    revert with 0, 17
                balanceOf[address(stor223.field_16)] += ext_call.return_data[0] * cashoutFee / 100
                emit Transfer((ext_call.return_data[0] * cashoutFee / 100), rewardsPoolAddress, sub_f764bfb5Address);
        else:
            if not rewardsPoolAddress:
                revert with 0, 'ERC20: transfer from the zero address'
            if not sub_82a8ebadAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[stor209] < ext_call.return_data[0] * cashoutFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[stor209] -= ext_call.return_data[0] * cashoutFee / 100
            if balanceOf[address(stor224.field_0)] > !(ext_call.return_data[0] * cashoutFee / 100):
                revert with 0, 17
            balanceOf[address(stor224.field_0)] += ext_call.return_data[0] * cashoutFee / 100
            emit Transfer((ext_call.return_data[0] * cashoutFee / 100), rewardsPoolAddress, sub_82a8ebadAddress);
            require ext_code.size(sub_82a8ebadAddress)
            call sub_82a8ebadAddress.0x88e5249f with:
                 gas gas_remaining wei
                args address(stor223.field_0), address(stor217.field_0), ext_call.return_data[0] * cashoutFee / 100, 0, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
            revert with 0, 17
        if stor221[stor209]:
            revert with 0, 'ERC20: Blacklisted address'
        if stor221[address(msg.sender)]:
            revert with 0, 'ERC20: Blacklisted address'
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
        _293 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_293] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_293 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_293 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _293
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
    _604 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_604] > !mem[96]:
        revert with 0, 17
    if mem[_604] + mem[96] > sub_bcb8ebfc:
        revert with 0, 'CONTMINT: reached mint limit'
    _607 = mem[96]
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
    _612 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _613 = mem[_612]
    if mem[_612] and _607 > -1 / mem[_612]:
        revert with 0, 17
    if sub_39306140 > !(mem[_612] * _607):
        revert with 0, 17
    sub_39306140 += mem[_612] * _607
    if balanceOf[address(msg.sender)] < mem[_612] * _607:
        revert with 0, 'CONTMINT: Balance too low for creation.'
    if mem[_612] * _607 and developmentFee > -1 / mem[_612] * _607:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_0f1978fb:
        if not sub_810be66dAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < mem[_612] * _607 * developmentFee / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= mem[_612] * _607 * developmentFee / 100
        if balanceOf[stor207] > !(mem[_612] * _607 * developmentFee / 100):
            revert with 0, 17
        balanceOf[stor207] += mem[_612] * _607 * developmentFee / 100
        emit Transfer((mem[_612] * _607 * developmentFee / 100), msg.sender, sub_810be66dAddress);
        if mem[_612] * _607 and rewardsFee > -1 / mem[_612] * _607:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < mem[_612] * _607 * rewardsFee / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= mem[_612] * _607 * rewardsFee / 100
        if balanceOf[stor209] > !(mem[_612] * _607 * rewardsFee / 100):
            revert with 0, 17
        balanceOf[stor209] += mem[_612] * _607 * rewardsFee / 100
        emit Transfer((mem[_612] * _607 * rewardsFee / 100), msg.sender, rewardsPoolAddress);
        if mem[_612] * _607 and treasuryFee > -1 / mem[_612] * _607:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not sub_e0583ec0:
            if not treasuryPoolAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < mem[_612] * _607 * treasuryFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= mem[_612] * _607 * treasuryFee / 100
            if balanceOf[stor208] > !(mem[_612] * _607 * treasuryFee / 100):
                revert with 0, 17
            balanceOf[stor208] += mem[_612] * _607 * treasuryFee / 100
            emit Transfer((mem[_612] * _607 * treasuryFee / 100), msg.sender, treasuryPoolAddress);
            if mem[_612] * _607 and liquidityPoolFee > -1 / mem[_612] * _607:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not liquidityPoolAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < mem[_612] * _607 * liquidityPoolFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            mem[32] = 51
            balanceOf[address(msg.sender)] -= _613 * _607 * liquidityPoolFee / 100
            mem[0] = liquidityPoolAddress
            if balanceOf[stor210] > !(_613 * _607 * liquidityPoolFee / 100):
                revert with 0, 17
            balanceOf[stor210] += _613 * _607 * liquidityPoolFee / 100
            emit Transfer((_613 * _607 * liquidityPoolFee / 100), msg.sender, liquidityPoolAddress);
            if _613 * _607 < _613 * _607 * developmentFee / 100:
                revert with 0, 17
            if (_613 * _607) - (_613 * _607 * developmentFee / 100) < _613 * _607 * rewardsFee / 100:
                revert with 0, 17
            if (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) < _613 * _607 * treasuryFee / 100:
                revert with 0, 17
            if (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) < _613 * _607 * liquidityPoolFee / 100:
                revert with 0, 17
            if not (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100):
                _755 = mem[64]
                mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 96
                _756 = mem[96]
                mem[mem[64] + 100] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 132
                u = mem[64] + (32 * mem[96]) + 132
                while idx < _756:
                    mem[t] = u + -_755 - 132
                    _863 = mem[s]
                    _871 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _871:
                        mem[v + u + 32] = mem[v + _863 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_871) > _871:
                        mem[_871 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_871) + u + 32
                    continue 
                if cd[36] >= 3:
                    revert with 0, 33
                mem[_755 + 68] = cd[36]
            else:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100):
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                mem[32] = 51
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (_613 * _607) + (_613 * _607 * developmentFee / 100) + (_613 * _607 * rewardsFee / 100) + (_613 * _607 * treasuryFee / 100) + (_613 * _607 * liquidityPoolFee / 100)
                mem[0] = this.address
                if balanceOf[this.address] > !((_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100)
                emit Transfer(((_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100)), msg.sender, this.address);
                _797 = mem[64]
                mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 96
                _802 = mem[96]
                mem[mem[64] + 100] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 132
                u = mem[64] + (32 * mem[96]) + 132
                while idx < _802:
                    mem[t] = u + -_797 - 132
                    _864 = mem[s]
                    _872 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _872:
                        mem[v + u + 32] = mem[v + _864 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_872) > _872:
                        mem[_872 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_872) + u + 32
                    continue 
                if cd[36] >= 3:
                    revert with 0, 33
                mem[_797 + 68] = cd[36]
        else:
            if not sub_82a8ebadAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < mem[_612] * _607 * treasuryFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= mem[_612] * _607 * treasuryFee / 100
            if balanceOf[address(stor224.field_0)] > !(mem[_612] * _607 * treasuryFee / 100):
                revert with 0, 17
            balanceOf[address(stor224.field_0)] += mem[_612] * _607 * treasuryFee / 100
            emit Transfer((mem[_612] * _607 * treasuryFee / 100), msg.sender, sub_82a8ebadAddress);
            mem[mem[64] + 68] = mem[_612] * _607 * treasuryFee / 100
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(sub_82a8ebadAddress)
            call sub_82a8ebadAddress.0x88e5249f with:
                 gas gas_remaining wei
                args treasuryPoolAddress, address(stor217.field_0), _613 * _607 * treasuryFee / 100, 0, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _613 * _607 and liquidityPoolFee > -1 / _613 * _607:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not liquidityPoolAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < _613 * _607 * liquidityPoolFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            mem[32] = 51
            balanceOf[address(msg.sender)] -= _613 * _607 * liquidityPoolFee / 100
            mem[0] = liquidityPoolAddress
            if balanceOf[stor210] > !(_613 * _607 * liquidityPoolFee / 100):
                revert with 0, 17
            balanceOf[stor210] += _613 * _607 * liquidityPoolFee / 100
            emit Transfer((_613 * _607 * liquidityPoolFee / 100), msg.sender, liquidityPoolAddress);
            if _613 * _607 < _613 * _607 * developmentFee / 100:
                revert with 0, 17
            if (_613 * _607) - (_613 * _607 * developmentFee / 100) < _613 * _607 * rewardsFee / 100:
                revert with 0, 17
            if (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) < _613 * _607 * treasuryFee / 100:
                revert with 0, 17
            if (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) < _613 * _607 * liquidityPoolFee / 100:
                revert with 0, 17
            if not (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100):
                _768 = mem[64]
                mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 96
                _770 = mem[96]
                mem[mem[64] + 100] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 132
                u = mem[64] + (32 * mem[96]) + 132
                while idx < _770:
                    mem[t] = u + -_768 - 132
                    _865 = mem[s]
                    _873 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _873:
                        mem[v + u + 32] = mem[v + _865 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_873) > _873:
                        mem[_873 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_873) + u + 32
                    continue 
                if cd[36] >= 3:
                    revert with 0, 33
                mem[_768 + 68] = cd[36]
            else:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100):
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                mem[32] = 51
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (_613 * _607) + (_613 * _607 * developmentFee / 100) + (_613 * _607 * rewardsFee / 100) + (_613 * _607 * treasuryFee / 100) + (_613 * _607 * liquidityPoolFee / 100)
                mem[0] = this.address
                if balanceOf[this.address] > !((_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100)
                emit Transfer(((_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100)), msg.sender, this.address);
                _826 = mem[64]
                mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 96
                _830 = mem[96]
                mem[mem[64] + 100] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 132
                u = mem[64] + (32 * mem[96]) + 132
                while idx < _830:
                    mem[t] = u + -_826 - 132
                    _866 = mem[s]
                    _874 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _874:
                        mem[v + u + 32] = mem[v + _866 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_874) > _874:
                        mem[_874 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_874) + u + 32
                    continue 
                if cd[36] >= 3:
                    revert with 0, 33
                mem[_826 + 68] = cd[36]
    else:
        if not sub_82a8ebadAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < mem[_612] * _607 * developmentFee / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= mem[_612] * _607 * developmentFee / 100
        if balanceOf[address(stor224.field_0)] > !(mem[_612] * _607 * developmentFee / 100):
            revert with 0, 17
        balanceOf[address(stor224.field_0)] += mem[_612] * _607 * developmentFee / 100
        emit Transfer((mem[_612] * _607 * developmentFee / 100), msg.sender, sub_82a8ebadAddress);
        mem[mem[64] + 68] = mem[_612] * _607 * developmentFee / 100
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(sub_82a8ebadAddress)
        call sub_82a8ebadAddress.0x88e5249f with:
             gas gas_remaining wei
            args sub_810be66dAddress, address(stor217.field_0), _613 * _607 * developmentFee / 100, 0, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _613 * _607 and rewardsFee > -1 / _613 * _607:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < _613 * _607 * rewardsFee / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= _613 * _607 * rewardsFee / 100
        if balanceOf[stor209] > !(_613 * _607 * rewardsFee / 100):
            revert with 0, 17
        balanceOf[stor209] += _613 * _607 * rewardsFee / 100
        emit Transfer((_613 * _607 * rewardsFee / 100), msg.sender, rewardsPoolAddress);
        if _613 * _607 and treasuryFee > -1 / _613 * _607:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not sub_e0583ec0:
            if not treasuryPoolAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < _613 * _607 * treasuryFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= _613 * _607 * treasuryFee / 100
            if balanceOf[stor208] > !(_613 * _607 * treasuryFee / 100):
                revert with 0, 17
            balanceOf[stor208] += _613 * _607 * treasuryFee / 100
            emit Transfer((_613 * _607 * treasuryFee / 100), msg.sender, treasuryPoolAddress);
            if _613 * _607 and liquidityPoolFee > -1 / _613 * _607:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not liquidityPoolAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < _613 * _607 * liquidityPoolFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            mem[32] = 51
            balanceOf[address(msg.sender)] -= _613 * _607 * liquidityPoolFee / 100
            mem[0] = liquidityPoolAddress
            if balanceOf[stor210] > !(_613 * _607 * liquidityPoolFee / 100):
                revert with 0, 17
            balanceOf[stor210] += _613 * _607 * liquidityPoolFee / 100
            emit Transfer((_613 * _607 * liquidityPoolFee / 100), msg.sender, liquidityPoolAddress);
            if _613 * _607 < _613 * _607 * developmentFee / 100:
                revert with 0, 17
            if (_613 * _607) - (_613 * _607 * developmentFee / 100) < _613 * _607 * rewardsFee / 100:
                revert with 0, 17
            if (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) < _613 * _607 * treasuryFee / 100:
                revert with 0, 17
            if (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) < _613 * _607 * liquidityPoolFee / 100:
                revert with 0, 17
            if not (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100):
                _769 = mem[64]
                mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 96
                _771 = mem[96]
                mem[mem[64] + 100] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 132
                u = mem[64] + (32 * mem[96]) + 132
                while idx < _771:
                    mem[t] = u + -_769 - 132
                    _867 = mem[s]
                    _875 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _875:
                        mem[v + u + 32] = mem[v + _867 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_875) > _875:
                        mem[_875 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_875) + u + 32
                    continue 
                if cd[36] >= 3:
                    revert with 0, 33
                mem[_769 + 68] = cd[36]
            else:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100):
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                mem[32] = 51
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (_613 * _607) + (_613 * _607 * developmentFee / 100) + (_613 * _607 * rewardsFee / 100) + (_613 * _607 * treasuryFee / 100) + (_613 * _607 * liquidityPoolFee / 100)
                mem[0] = this.address
                if balanceOf[this.address] > !((_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100)
                emit Transfer(((_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100)), msg.sender, this.address);
                _827 = mem[64]
                mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 96
                _832 = mem[96]
                mem[mem[64] + 100] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 132
                u = mem[64] + (32 * mem[96]) + 132
                while idx < _832:
                    mem[t] = u + -_827 - 132
                    _868 = mem[s]
                    _876 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _876:
                        mem[v + u + 32] = mem[v + _868 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_876) > _876:
                        mem[_876 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_876) + u + 32
                    continue 
                if cd[36] >= 3:
                    revert with 0, 33
                mem[_827 + 68] = cd[36]
        else:
            if not sub_82a8ebadAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < _613 * _607 * treasuryFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= _613 * _607 * treasuryFee / 100
            if balanceOf[address(stor224.field_0)] > !(_613 * _607 * treasuryFee / 100):
                revert with 0, 17
            balanceOf[address(stor224.field_0)] += _613 * _607 * treasuryFee / 100
            emit Transfer((_613 * _607 * treasuryFee / 100), msg.sender, sub_82a8ebadAddress);
            mem[mem[64] + 68] = _613 * _607 * treasuryFee / 100
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(sub_82a8ebadAddress)
            call sub_82a8ebadAddress.0x88e5249f with:
                 gas gas_remaining wei
                args treasuryPoolAddress, address(stor217.field_0), _613 * _607 * treasuryFee / 100, 0, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _613 * _607 and liquidityPoolFee > -1 / _613 * _607:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not liquidityPoolAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < _613 * _607 * liquidityPoolFee / 100:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            mem[32] = 51
            balanceOf[address(msg.sender)] -= _613 * _607 * liquidityPoolFee / 100
            mem[0] = liquidityPoolAddress
            if balanceOf[stor210] > !(_613 * _607 * liquidityPoolFee / 100):
                revert with 0, 17
            balanceOf[stor210] += _613 * _607 * liquidityPoolFee / 100
            emit Transfer((_613 * _607 * liquidityPoolFee / 100), msg.sender, liquidityPoolAddress);
            if _613 * _607 < _613 * _607 * developmentFee / 100:
                revert with 0, 17
            if (_613 * _607) - (_613 * _607 * developmentFee / 100) < _613 * _607 * rewardsFee / 100:
                revert with 0, 17
            if (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) < _613 * _607 * treasuryFee / 100:
                revert with 0, 17
            if (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) < _613 * _607 * liquidityPoolFee / 100:
                revert with 0, 17
            if not (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100):
                _800 = mem[64]
                mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 96
                _803 = mem[96]
                mem[mem[64] + 100] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 132
                u = mem[64] + (32 * mem[96]) + 132
                while idx < _803:
                    mem[t] = u + -_800 - 132
                    _869 = mem[s]
                    _877 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _877:
                        mem[v + u + 32] = mem[v + _869 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_877) > _877:
                        mem[_877 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_877) + u + 32
                    continue 
                if cd[36] >= 3:
                    revert with 0, 33
                mem[_800 + 68] = cd[36]
            else:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100):
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                mem[32] = 51
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (_613 * _607) + (_613 * _607 * developmentFee / 100) + (_613 * _607 * rewardsFee / 100) + (_613 * _607 * treasuryFee / 100) + (_613 * _607 * liquidityPoolFee / 100)
                mem[0] = this.address
                if balanceOf[this.address] > !((_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100)
                emit Transfer(((_613 * _607) - (_613 * _607 * developmentFee / 100) - (_613 * _607 * rewardsFee / 100) - (_613 * _607 * treasuryFee / 100) - (_613 * _607 * liquidityPoolFee / 100)), msg.sender, this.address);
                _845 = mem[64]
                mem[mem[64]] = 0x534cc6800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 96
                _848 = mem[96]
                mem[mem[64] + 100] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 132
                u = mem[64] + (32 * mem[96]) + 132
                while idx < _848:
                    mem[t] = u + -_845 - 132
                    _870 = mem[s]
                    _878 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _878:
                        mem[v + u + 32] = mem[v + _870 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_878) > _878:
                        mem[_878 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_878) + u + 32
                    continue 
                if cd[36] >= 3:
                    revert with 0, 33
                mem[_845 + 68] = cd[36]
    require ext_code.size(sub_9a6e80dbAddress)
    call sub_9a6e80dbAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len u + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x120c2f36: msg.sender
}



}
