contract main {




// =====================  Runtime code  =====================


address owner;
address nominatedOwner;
address lqtyTokenAddress;
address communityIssuanceAddress;
uint256 issued;
uint256 available;

function lqtyToken() payable {
    return lqtyTokenAddress
}

function available() payable {
    return available
}

function nominatedOwner() payable {
    return nominatedOwner
}

function issued() payable {
    return issued
}

function owner() payable {
    return owner
}

function communityIssuance() payable {
    return communityIssuanceAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function nominateNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function updateAvailable() payable {
    require ext_code.size(communityIssuanceAddress)
    call communityIssuanceAddress.issueLQTY() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + available < available:
        revert with 0, 'SafeMath: addition overflow'
    available += ext_call.return_data[0]
}

function acceptOwnership() payable {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0xfe596f75206d757374206265206e6f6d696e61746564206265666f726520796f752063616e20616363657074206f776e6572736869,
                    mem[217 len 11]
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function sendTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(communityIssuanceAddress)
    call communityIssuanceAddress.issueLQTY() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + available < available:
        revert with 0, 'SafeMath: addition overflow'
    available += ext_call.return_data[0]
    if arg2 > ext_call.return_data[0] + available:
        revert with 0, 'Exceeds available amount'
    available = ext_call.return_data[0] + available - arg2
    require ext_code.size(communityIssuanceAddress)
    call communityIssuanceAddress.sendLQTY(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 + issued < issued:
        revert with 0, 'SafeMath: addition overflow'
    issued += arg2
}



}
