contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Snow Goose', 0

const decimals = 18

const symbol = '', 0


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
uint256 totalSupply;
uint256 stor7;
uint256 sub_b5d3448c;
uint256 sub_f01592e7;
uint256 _maxWalletToken;
uint256 _coolDown;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint256 sub_92d2abb1;
uint256 stor17;
uint256 stor18;
uint8 sub_b08b9b46;
address marketingWalletAddress; offset 8
address routerAddress;
array of address pairs;
uint8 swapEnabled;
uint256 swapThreshold;
uint256 launchedAt;
uint256 stor27;
uint256 stor28;
uint8 stor29;
array of address stor97789825912453899259273410636466998099043528421815129078110847000656284369545;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function marketingWallet() {
    return marketingWalletAddress
}

function _maxWalletToken() {
    return _maxWalletToken
}

function getOwner() {
    return owner
}

function sub_92d2abb1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_92d2abb1[address(arg1)]
}

function _coolDown() {
    return _coolDown
}

function sub_b08b9b46(?) {
    return bool(sub_b08b9b46)
}

function sub_b5d3448c(?) {
    return sub_b5d3448c
}

function pairs(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pairs.length
    return pairs[arg1]
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

function sub_f01592e7(?) {
    return sub_f01592e7
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function setAntisniperBlocks(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor27 = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function removeLastPair() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not pairs.length:
        revert with 0, 49
    pairs[pairs.length] = 0
    pairs.length--
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    marketingWalletAddress = arg1
}

function rescue() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    pairs.length++
    storD833[stor22.length] = arg1
}

function setSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    emit AutoLiquifyEnabled(arg1);
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor2]:
        revert with 0, 17
    if totalSupply - balanceOf[stor2] < balanceOf[stor3]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = uint8(arg2)
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 and totalSupply > -1 / arg1:
        revert with 0, 17
    stor7 = arg1 * totalSupply / 100
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15[address(arg1)] = uint8(arg2)
}

function setAntisniperGas(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1:
        if arg2 < 10^9:
            revert with 0, 'Needs to be at least 1 gwei.'
    stor29 = uint8(arg1)
    stor28 = arg2
}

function setFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor17 = arg1
    stor18 = arg2
    if arg1 >= arg2 / 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Maximum allowed taxation on this contract is 20%.'
}



}
