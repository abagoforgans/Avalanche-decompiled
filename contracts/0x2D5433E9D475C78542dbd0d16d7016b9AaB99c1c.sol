contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Big Fund Capital DAO', 0

const decimals = 9

const symbol = 'BFC', 0


address owner;
address stor2;
address stor3;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 stor11;
address marketingWalletAddress;
address treasuryAddress;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 stor18;
uint256 stor18; offset 8
address stor20;

function totalSupply() {
    return totalSupply
}

function isInBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    return bool(stor10[address(arg1)])
}

function treasury() {
    return treasuryAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function marketingWallet() {
    return marketingWalletAddress
}

function getOwner() {
    return owner
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

function removeBuyLimit() {
    if owner != msg.sender:
        revert with 0, '!Owner'
    Mask(248, 0, stor18.field_8) = 0
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, '!Owner'
    launchedAt = block.number
    uint8(stor18.field_0) = 1
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    marketingWalletAddress = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    owner = arg1
    emit OwnershipTransferred(arg1);
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    if arg1 > 14:
        revert with 0, 'Fee can't exceed 14%'
    stor11 = arg1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!Owner'
    stor8[address(arg1)] = uint8(arg2)
}

function claimDividend() {
    require ext_code.size(stor20)
    call stor20.0x15f7e05e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function manualSend() {
    if owner != msg.sender:
        revert with 0, '!Owner'
    call marketingWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTotalClaimed() {
    require ext_code.size(stor20)
    staticcall stor20.totalClaimed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function claimDividend(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    require ext_code.size(stor20)
    call stor20.0x15f7e05e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTotalDividends() {
    require ext_code.size(stor20)
    staticcall stor20.totalDividends() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    treasuryAddress = arg1
    require ext_code.size(stor20)
    call stor20.0xf0f44260 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getDividendsClaimedOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor20)
    staticcall stor20.0x5cc33f74 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getClaimableDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor20)
    staticcall stor20.0x8ecc37fb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getCirculatingSupply() {
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor2]:
        revert with 'NH{q', 17
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor2] < balanceOf[stor3]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function manualBurn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    if arg1 > balanceOf[address(this.address)]:
        revert with 0, 'Insufficient Balance', 0
    if balanceOf[address(this.address)] < arg1:
        revert with 'NH{q', 17
    balanceOf[address(this.address)] -= arg1
    if balanceOf[stor2] > -arg1 - 1:
        revert with 'NH{q', 17
    if balanceOf[stor2] + arg1 < balanceOf[stor2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor2] += arg1
    emit Transfer(arg1, this.address, stor2);
    return 1
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!Owner'
    require arg1 != this.address
    require arg1 != pairAddress
    stor9[address(arg1)] = uint8(arg2)
    require ext_code.size(stor20)
    if not arg2:
        call stor20.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor20.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBot(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!Owner'
    stor10[address(arg1)] = uint8(arg2)
    require arg1 != this.address
    require arg1 != pairAddress
    stor9[address(arg1)] = uint8(arg2)
    require ext_code.size(stor20)
    if not arg2:
        call stor20.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor20.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
