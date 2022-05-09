contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 sub_4e040f71;
mapping of uint256 stor3;
uint256 stor4;
uint256 claimedCount;
address stor6;

function getTokenAddress() payable {
    return tokenAddress
}

function sub_4e040f71(?) payable {
    return sub_4e040f71
}

function owner() payable {
    return owner
}

function claimedCount() payable {
    return claimedCount
}

function kill() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_c9b75131(?) payable {
    if stor4 < claimedCount:
        revert with 'NH{q', 17
    return (stor4 - claimedCount)
}

function canClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (stor3[address(arg1)] > 0)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function claim() payable {
    if stor3[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop unavailable or already claimed'
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor3[address(msg.sender)]:
        revert with 0, 'Not enough tokens'
    stor3[address(msg.sender)] = sub_4e040f71
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor3[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        stor3[address(msg.sender)] = 0
        if claimedCount > -2:
            revert with 'NH{q', 17
        claimedCount++
}



}
