contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const decimals = 9

const symbol = '', 0


address owner;
address stor2;
address stor3;
uint256 totalSupply;
uint256 _maxWalletSize;
uint256 sub_4b867e38;
uint256 sub_61ccd13d;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of address sub_35650d92;
mapping of uint256 sub_9ccac38d;
mapping of uint256 totalRewards;
mapping of uint8 stor14;
mapping of uint8 stor15;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 sub_a847aebb;
address stor26;
address stor27;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor29; offset 160
address pairAddress;
uint256 swapThreshold;
uint256 lastSwapTime;
uint256 sub_b5bb3466;
uint256 stor34;
uint256 stor35;

function swapThreshold() {
    return swapThreshold
}

function lastSwapTime() {
    return lastSwapTime
}

function totalSupply() {
    return totalSupply
}

function sub_35650d92(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return address(sub_35650d92[arg1])
}

function sub_4b867e38(?) {
    return sub_4b867e38
}

function sub_61ccd13d(?) {
    return sub_61ccd13d
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
}

function sub_9ccac38d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9ccac38d[arg1]
}

function sub_a847aebb(?) {
    return sub_a847aebb
}

function pair() {
    return pairAddress
}

function totalRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalRewards[arg1]
}

function sub_b5bb3466(?) {
    return sub_b5bb3466
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e6565546(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor14[arg1])
}

function router() {
    return routerAddress
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function sub_1c751cdc(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor23 = arg1
}

function sub_6679ff33(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_a847aebb = arg1
}

function sub_d3dc9584(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 <= 10^9
    sub_4b867e38 = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 >= totalSupply / 1000
    _maxWalletSize = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    emit OwnershipTransferred(arg1);
}

function blacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor15[address(arg1)] = uint8(arg2)
}

function setFeeReceiver(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor26 = arg1
    stor27 = arg2
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor10[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(96, 0, stor29.field_160) = Mask(96, 0, arg1)
    swapThreshold = arg2
}

function sub_745d67d0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    sub_b5bb3466 = 60 * arg1
}

function manualSend() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call stor26 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_aa119398(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require sub_61ccd13d <= balanceOf[msg.sender]
    if stor34 > !stor35:
        revert with 0, 17
    require block.timestamp > stor34 + stor35
    stor14[address(arg1)] = 1
    uint256(sub_35650d92[address(arg1)]) = msg.sender or Mask(96, 160, uint256(sub_35650d92[address(arg1)]))
    return 1
}

function getCirculatingSupply() {
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'Math : subtraction overflow', 0
    if totalSupply < balanceOf[stor2]:
        revert with 0, 17
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'Math : subtraction overflow', 0
    if totalSupply - balanceOf[stor2] < balanceOf[stor3]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor19 = arg1
    stor20 = arg2
    stor21 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'Math : addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'Math : addition overflow'
    stor22 = arg1 + arg2 + arg3
    stor24 = arg4
}

function transferForeignToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't let you take all native token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor26 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'Math : subtraction overflow', 0
    if totalSupply < balanceOf[stor2]:
        revert with 0, 17
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'Math : subtraction overflow', 0
    if totalSupply - balanceOf[stor2] < balanceOf[stor3]:
        revert with 0, 17
    if not balanceOf[address(stor29.field_0)]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 0 / arg1:
                revert with 0, 'Math : multiplication overflow'
        if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
            revert with 0, 'Math : division by zero', 0
        return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3])
    if balanceOf[address(stor29.field_0)] and 2 > -1 / balanceOf[address(stor29.field_0)]:
        revert with 0, 17
    if not balanceOf[address(stor29.field_0)]:
        revert with 0, 18
    if 2 * balanceOf[address(stor29.field_0)] / balanceOf[address(stor29.field_0)] != 2:
        revert with 0, 'Math : multiplication overflow'
    if not arg1:
        if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
            revert with 0, 'Math : division by zero', 0
        return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3])
    if arg1 and 2 * balanceOf[address(stor29.field_0)] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[address(stor29.field_0)] / arg1 != 2 * balanceOf[address(stor29.field_0)]:
        revert with 0, 'Math : multiplication overflow'
    if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
        revert with 0, 'Math : division by zero', 0
    return (arg1 * 2 * balanceOf[address(stor29.field_0)] / totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'Math : subtraction overflow', 0
    if totalSupply < balanceOf[stor2]:
        revert with 0, 17
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'Math : subtraction overflow', 0
    if totalSupply - balanceOf[stor2] < balanceOf[stor3]:
        revert with 0, 17
    if not balanceOf[address(stor29.field_0)]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 'Math : multiplication overflow'
        if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
            revert with 0, 'Math : division by zero', 0
        return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3] > arg1)
    if balanceOf[address(stor29.field_0)] and 2 > -1 / balanceOf[address(stor29.field_0)]:
        revert with 0, 17
    if not balanceOf[address(stor29.field_0)]:
        revert with 0, 18
    if 2 * balanceOf[address(stor29.field_0)] / balanceOf[address(stor29.field_0)] != 2:
        revert with 0, 'Math : multiplication overflow'
    if not arg2:
        if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
            revert with 0, 'Math : division by zero', 0
        return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3] > arg1)
    if arg2 and 2 * balanceOf[address(stor29.field_0)] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[address(stor29.field_0)] / arg2 != 2 * balanceOf[address(stor29.field_0)]:
        revert with 0, 'Math : multiplication overflow'
    if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
        revert with 0, 'Math : division by zero', 0
    return (arg2 * 2 * balanceOf[address(stor29.field_0)] / totalSupply - balanceOf[stor2] - balanceOf[stor3] > arg1)
}



}
