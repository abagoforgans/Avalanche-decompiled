contract main {




// =====================  Runtime code  =====================


#
#  - withdrawTokens(address arg1, uint256 arg2)
#  - sub_44eafc97(?)
#  - sub_a7a5a188(?)
#  - claimWinnings()
#  - approve(address arg1)
#
uint8 stor0; offset 160
address owner;
mapping of uint256 winnings;
uint256 sub_224258c6;
uint256 sub_b5248d38;
uint256 sub_ebe55886;
uint256 sub_a9998238;
uint256 stor6;
uint256 stor7;
uint256 sub_53bbe507;
uint256 sub_6a3607a2;
uint256 sub_08087db3;
uint256 sub_77b89689;
uint256 sub_28ada496;
uint256 sub_af0f91ea;
uint256 stor14;
uint256 stor15;
uint256 sub_5cf8d81e;
uint8 stor17;
array of address sub_1085b0a0;
array of address sub_f55c0cab;
address stor38;
address rewardTokenAddress;

function sub_08087db3(?) {
    return sub_08087db3
}

function sub_1085b0a0(?) {
    require calldata.size - 4 >= 32
    require arg1 < 10
    return sub_1085b0a0[arg1]
}

function rewardTokenAddress() {
    return rewardTokenAddress
}

function sub_224258c6(?) {
    return sub_224258c6
}

function sub_28ada496(?) {
    return sub_28ada496
}

function sub_53bbe507(?) {
    return sub_53bbe507
}

function paused() {
    return bool(stor0)
}

function sub_5cf8d81e(?) {
    return sub_5cf8d81e
}

function sub_6a3607a2(?) {
    return sub_6a3607a2
}

function getWinnings() {
    return winnings[msg.sender]
}

function sub_77b89689(?) {
    return sub_77b89689
}

function owner() {
    return owner
}

function sub_a9998238(?) {
    return sub_a9998238
}

function sub_af0f91ea(?) {
    return sub_af0f91ea
}

function sub_b5248d38(?) {
    return sub_b5248d38
}

function sub_ebe55886(?) {
    return sub_ebe55886
}

function sub_f55c0cab(?) {
    require calldata.size - 4 >= 32
    require arg1 < 10
    return sub_f55c0cab[arg1]
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

function sub_be922250(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_af0f91ea = arg1
}

function setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = uint8(arg1)
}

function sub_decda8b2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor38 = address(arg1)
}

function sub_a3cb5a21(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        sub_08087db3 = arg1
    else:
        sub_b5248d38 = arg1
}

function sub_a3d6615c(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        sub_5cf8d81e = arg1
    else:
        sub_53bbe507 = arg1
}

function sub_d22afd48(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        sub_28ada496 = arg1
    else:
        sub_a9998238 = arg1
}

function sub_20c1e907(?) {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        stor14 = arg1
        stor15 = arg2
    else:
        stor6 = arg1
        stor7 = arg2
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value arg1 wei
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



}
