contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 sub_4e040f71;
mapping of uint8 stor3;
uint256 stor4;
uint256 claimedCount;

function sub_4e040f71(?) {
    return sub_4e040f71
}

function owner() {
    return owner
}

function claimedCount() {
    return claimedCount
}

function kill() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_c9b75131(?) {
    if stor4 < claimedCount:
        revert with 'NH{q', 17
    return (stor4 - claimedCount)
}

function canClaim(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (bool(stor3[address(arg1)]) == 1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function claim() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop unavailable or already claimed'
    if eth.balance(this.address) < sub_4e040f71:
        revert with 0, 'Not enough tokens'
    stor3[address(msg.sender)] = 0
    call msg.sender with:
       value sub_4e040f71 wei
         gas gas_remaining wei
    if not ext_call.success:
        stor3[address(msg.sender)] = 1
        revert
    if claimedCount > -2:
        revert with 'NH{q', 17
    claimedCount++
    stor1 = 1
}



}
