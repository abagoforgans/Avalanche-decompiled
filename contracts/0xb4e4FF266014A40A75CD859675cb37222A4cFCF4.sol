contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Pegasus Finance', 0

const decimals = 18

const symbol = 'PEGASUS', 0


address owner;
uint256 totalSupply;
uint256 maxTxAmount;
uint256 maxWallet;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address routerAddress;
address routerAddress;
address WAVAXAddress;
address pairAddress;
uint256 stor10;
uint8 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor15;
uint256 stor16;
uint8 swapAndLiquify; offset 160
uint128 stor18; offset 160
address marketingWalletAddress;
address distributorAddress;
mapping of uint8 stor21;
mapping of uint8 stor22;
mapping of uint8 stor26;

function totalSupply() {
    return totalSupply
}

function routerAddress() {
    return routerAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function WAVAX() {
    return WAVAXAddress
}

function marketingWallet() {
    return marketingWalletAddress
}

function maxTxAmount() {
    return maxTxAmount
}

function owner() {
    return owner
}

function distributorAddress() {
    return distributorAddress
}

function pair() {
    return pairAddress
}

function swapAndLiquify() {
    return bool(swapAndLiquify)
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

function maxWallet() {
    return maxWallet
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function launch() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor11:
        revert with 0, 'Already launched'
    stor11 = 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
}

function sub_aa7235c5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26[address(arg1)] = 0
}

function updateWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingWalletAddress = arg1
}

function updateSwapAndLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = Mask(96, 0, arg1)
}

function sub_1326f357(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTxAmount = arg1
    maxWallet = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_e73217f5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26[address(arg1)] = 1
    emit 0x71ada328: address(arg1)
}

function excludeFromMaxTx(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21[address(arg1)] = uint8(arg2)
}

function excludeFromMaxWallet(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22[address(arg1)] = uint8(arg2)
}

function collect() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function updateFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
    stor12 = arg2
    stor15 = arg3
    if stor13 > -stor12 - 1:
        revert with 'NH{q', 17
    if stor13 + stor12 > -stor15 - 1:
        revert with 'NH{q', 17
    stor16 = stor13 + stor12 + stor15
}



}
