contract main {




// =====================  Runtime code  =====================


#
#  - sub_3d5628fc(?)
#  - sub_3fd634af(?)
#
address owner;
uint8 paused;
mapping of uint8 stor3;
uint256 feeRate;
uint256 sub_7e5bf1a9;

function paused() {
    return bool(paused)
}

function sub_7e5bf1a9(?) {
    return sub_7e5bf1a9
}

function owner() {
    return owner
}

function feeRate() {
    return feeRate
}

function isMember(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function changeFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    feeRate = arg1
    emit FeeRateChanged(feeRate, arg1);
}

function addMember(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[address(arg1)]:
        revert with 0, 'Address is member already.'
    stor3[address(arg1)] = 1
    emit MemberAdded(arg1);
}

function removeMember(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0, 'Not member of whitelist.'
    stor3[address(arg1)] = 0
    emit MemberRemoved(arg1);
}

function changeReferrerFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    sub_7e5bf1a9 = arg1
    emit ReferrerFeeRateChanged(sub_7e5bf1a9, arg1);
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



}
