contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'TestAVAXCOIN', 0

const decimals = 9

const symbol = 'TEV', 0


address owner;
address stor1;
uint256 unlockTime;
mapping of uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 totalSupply;
uint256 stor9;
uint256 _maxWalletSize;
uint256 _maxTX;
uint256 sub_13a4cb7a;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
address stor25;
address stor26;
address stor27;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 swapEnabled;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function _maxTX() {
    return _maxTX
}

function sub_13a4cb7a(?) {
    return sub_13a4cb7a
}

function totalSupply() {
    return totalSupply
}

function getUnlockTime() {
    return unlockTime
}

function swapEnabled() {
    return bool(swapEnabled)
}

function getOwner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor5[address(arg1)] = uint8(arg2)
    emit 0x1b92447b: address(arg1), arg2
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 <= totalSupply / 1000:
        revert with 0, 'Can't set maxTX below 0.1%'
    _maxWalletSize = arg1
    emit 0xa2c87c3e: arg1
}

function sub_a4e13071(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1 = owner
    owner = 0
    if block.timestamp > -arg1 - 1:
        revert with 'NH{q', 17
    unlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function sub_f7baf3c5(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function ClearStuckBalance() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call stor25 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x98be19c3: eth.balance(this.address), stor25
}

function sub_24d51523(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor25 = address(arg1)
    stor27 = address(arg3)
    stor26 = address(arg2)
    emit 0xb923dcdf: stor25, stor26, stor27
}

function sub_215a62d4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor7[address(arg1)] = uint8(bool(arg2))
    stor5[address(arg1)] = uint8(bool(arg2))
    stor6[address(arg1)] = uint8(bool(arg2))
    emit 0x539d3e76: address(arg1), bool(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2 <= 0:
        revert with 0, 'Can't set SwapThreshold to ZERO'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
    emit SetSwapBackSettings(bool(swapEnabled), swapThreshold);
}

function setMaxTx(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 <= totalSupply / 1000:
        revert with 0, 'Can't set maxTX below 0.1%'
    if arg2 <= totalSupply / 1000:
        revert with 0, 'Can't set maxTX below 0.1%'
    _maxTX = arg1
    sub_13a4cb7a = arg2
    emit 0x96c2f26c: arg1, arg2
}

function tokenFromReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not totalSupply:
        revert with 'NH{q', 18
    if not totalSupply:
        revert with 'NH{q', 18
    if not stor9 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor9 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[address(arg1)] > stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not totalSupply:
        revert with 'NH{q', 18
    if not totalSupply:
        revert with 'NH{q', 18
    if not stor9 / totalSupply:
        revert with 'NH{q', 18
    return (stor3[address(arg1)] / stor9 / totalSupply)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferForeignToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call stor25 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x91cecbb8: address(arg1), ext_call.return_data[0]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 >= 15:
        revert with 0, 'Total fees must be below 15%'
    stor15 = arg1
    stor14 = arg2
    stor13 = arg3
    stor16 = arg4
    stor17 = arg5
    if stor15 > -stor14 - 1:
        revert with 'NH{q', 17
    if stor15 + stor14 > -stor13 - 1:
        revert with 'NH{q', 17
    if stor15 + stor14 + stor13 > -stor16 - 1:
        revert with 'NH{q', 17
    if stor15 + stor14 + stor13 + stor16 > -stor17 - 1:
        revert with 'NH{q', 17
    stor18 = stor15 + stor14 + stor13 + stor16 + stor17
    if stor15 > -stor14 - 1:
        revert with 'NH{q', 17
    if stor15 + stor14 > -stor17 - 1:
        revert with 'NH{q', 17
    if stor15 + stor14 + stor17 > -stor16 - 1:
        revert with 'NH{q', 17
    stor19 = stor15 + stor14 + stor17 + stor16
    emit SetFees(stor15, stor14, stor13, stor16, stor17, stor18);
}



}
