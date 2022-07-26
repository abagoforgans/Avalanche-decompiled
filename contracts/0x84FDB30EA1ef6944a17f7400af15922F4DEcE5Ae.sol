contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const feeDenominator = 100

const sellFee = 5

const Treasury = 5

const liquidityFee = 5

const RATE_DECIMALS = 9


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address pairContractAddress;
mapping of uint8 stor4;
uint256 totalFee;
address autoLiquidityReceiverAddress;
address sub_800cee51Address;
uint256 stor8;
uint256 stor9;
uint256 sub_32b75683;
uint256 sub_fa2fa02e;
uint256 rebaseRate;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor14; offset 160
address pairAddress;
uint256 stor15;
uint8 stor16;
uint256 MAX_SUPPLY;
uint256 totalSupply;
uint256 stor19;
mapping of uint256 stor20;
mapping of uint256 allowance;
mapping of uint8 stor22;
uint256 stor4F26;
uint256 stor8B9E;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function totalFee() {
    return totalFee
}

function decimals() {
    return decimals
}

function sub_32b75683(?) {
    return sub_32b75683
}

function MAX_SUPPLY() {
    return MAX_SUPPLY
}

function pairContract() {
    return pairContractAddress
}

function swapEnabled() {
    return bool(swapEnabled)
}

function rebaseRate() {
    return rebaseRate
}

function sub_800cee51(?) {
    return sub_800cee51Address
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function pair() {
    return pairAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor22[arg1])
}

function sub_fa2fa02e(?) {
    return sub_fa2fa02e
}

function _fallback() payable {
    revert
}

function isNotInSwap() {
    return not bool(stor16)
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pairContractAddress = arg1
}

function checkSwapThreshold() {
    if not stor19:
        revert with 0, 'SafeMath: division by zero'
    return (stor15 / stor19)
}

function setFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor8 = arg1
    stor9 = arg2
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor19:
        revert with 0, 'SafeMath: division by zero'
    return (stor20[address(arg1)] / stor19)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    autoLiquidityReceiverAddress = arg1
    sub_800cee51Address = arg2
}

function manualSync() {
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateBlacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not ext_code.size(arg1):
        revert with 0, 'Only contract address'
    stor22[address(arg1)] = uint8(arg2)
}

function clearStuckBalance(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    call arg2 with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getCirculatingSupply() {
    if stor8B9E > 0xffffffffffffffffffffffffffffffffffffffffffffbe18f8b7bf6c658c0000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor4F26 > -stor8B9E - 311215544007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor19:
        revert with 0, 'SafeMath: division by zero'
    return (-stor8B9E + -stor4F26 - 311215544007913129639936 / stor19)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if arg2 > allowance[msg.sender][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_30251b17(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if block.timestamp <= sub_fa2fa02e:
        revert with 0, 'Locked'
    if arg1 > rebaseRate:
        revert with 0, 'Rebase Rate cannot be increased'
    if arg2 < totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe4d617820737570706c792063616e6e6f74206265206c6f776572207468616e20746f74616c20737570706c,
                    mem[208 len 20]
    rebaseRate = arg1
    MAX_SUPPLY = arg2
    sub_fa2fa02e = block.timestamp + (24 * 3600)
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    Mask(96, 0, stor14.field_160) = Mask(96, 0, arg1)
    if not arg3:
        revert with 0, 'SafeMath: division by zero'
    if not 0xffffffffffffffffffffffffffffffffffffffffffffbe18f8b7bf6c658c0000 / arg3:
        stor15 = 0
    else:
        if arg2 * 0xffffffffffffffffffffffffffffffffffffffffffffbe18f8b7bf6c658c0000 / arg3 / 0xffffffffffffffffffffffffffffffffffffffffffffbe18f8b7bf6c658c0000 / arg3 != arg2:
            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        stor15 = arg2 * 0xffffffffffffffffffffffffffffffffffffffffffffbe18f8b7bf6c658c0000 / arg3
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor19:
        revert with 0, 'SafeMath: division by zero'
    if stor8B9E > 0xffffffffffffffffffffffffffffffffffffffffffffbe18f8b7bf6c658c0000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor4F26 > -stor8B9E - 311215544007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor19:
        revert with 0, 'SafeMath: division by zero'
    if not stor20[address(stor14.field_0)] / stor19:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor8B9E + -stor4F26 - 311215544007913129639936 / stor19:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor8B9E + -stor4F26 - 311215544007913129639936 / stor19)
    if 2 * stor20[address(stor14.field_0)] / stor19 / stor20[address(stor14.field_0)] / stor19 != 2:
        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -stor8B9E + -stor4F26 - 311215544007913129639936 / stor19:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor8B9E + -stor4F26 - 311215544007913129639936 / stor19)
    if 2 * stor20[address(stor14.field_0)] / stor19 * arg1 / arg1 != 2 * stor20[address(stor14.field_0)] / stor19:
        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor8B9E + -stor4F26 - 311215544007913129639936 / stor19:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor20[address(stor14.field_0)] / stor19 * arg1 / -stor8B9E + -stor4F26 - 311215544007913129639936 / stor19)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor19:
        revert with 0, 'SafeMath: division by zero'
    if stor8B9E > 0xffffffffffffffffffffffffffffffffffffffffffffbe18f8b7bf6c658c0000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor4F26 > -stor8B9E - 311215544007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor19:
        revert with 0, 'SafeMath: division by zero'
    if not stor20[address(stor14.field_0)] / stor19:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor8B9E + -stor4F26 - 311215544007913129639936 / stor19:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor8B9E + -stor4F26 - 311215544007913129639936 / stor19 > arg1)
    if 2 * stor20[address(stor14.field_0)] / stor19 / stor20[address(stor14.field_0)] / stor19 != 2:
        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg2:
        if not -stor8B9E + -stor4F26 - 311215544007913129639936 / stor19:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor8B9E + -stor4F26 - 311215544007913129639936 / stor19 > arg1)
    if 2 * stor20[address(stor14.field_0)] / stor19 * arg2 / arg2 != 2 * stor20[address(stor14.field_0)] / stor19:
        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor8B9E + -stor4F26 - 311215544007913129639936 / stor19:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor20[address(stor14.field_0)] / stor19 * arg2 / -stor8B9E + -stor4F26 - 311215544007913129639936 / stor19 > arg1)
}



}
