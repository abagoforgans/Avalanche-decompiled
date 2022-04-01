contract main {




// =====================  Runtime code  =====================


#
#  - claim()
#
address owner;
address yayAddress;
address recipientAddress;
uint256 vestingAmount;
uint256 vestingCliff;
uint256 halvingPeriod;
uint256 nextSlash;
uint8 vestingEnabled;
uint256 lastUpdate;
uint256 startingBalance;

function vestingAmount() payable {
    return vestingAmount
}

function nextSlash() payable {
    return nextSlash
}

function halvingPeriod() payable {
    return halvingPeriod
}

function recipient() payable {
    return recipientAddress
}

function vestingEnabled() payable {
    return bool(vestingEnabled)
}

function owner() payable {
    return owner
}

function startingBalance() payable {
    return startingBalance
}

function lastUpdate() payable {
    return lastUpdate
}

function yay() payable {
    return yayAddress
}

function vestingCliff() payable {
    return vestingCliff
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TreasuryVester::setRecipient: Recipient can't be the zero address'
    recipientAddress = arg1
    emit RecipientChanged(arg1);
}

function startVesting() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if vestingEnabled:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TreasuryVester::startVesting: vesting already started'
    require ext_code.size(yayAddress)
    staticcall yayAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < startingBalance:
        revert with 0, 'TreasuryVester::startVesting: incorrect YAY supply'
    if not recipientAddress:
        revert with 0, 'TreasuryVester::startVesting: recipient not set'
    vestingEnabled = 1
    emit 0xf78a71da 
}



}
