contract main {




// =====================  Runtime code  =====================


const maxMaxAuctionLength = 1200

const minMinBidIncrease = 10

const maxGovFee = 100

const minMinAuctionLength = 600

const maxMinBidIncrease = 100


address owner;
uint256 maxAuctionLength;
uint256 minAuctionLength;
uint256 governanceFee;
uint256 maxCuratorFee;
uint256 minBidIncrease;
uint256 minVotePercentage;
uint256 maxReserveFactor;
uint256 minReserveFactor;
address feeReceiverAddress;
address commissionReceiverAddress;
uint256 sub_d06a77d8;

function minReserveFactor() payable {
    return minReserveFactor
}

function maxAuctionLength() payable {
    return maxAuctionLength
}

function governanceFee() payable {
    return governanceFee
}

function minVotePercentage() payable {
    return minVotePercentage
}

function maxReserveFactor() payable {
    return maxReserveFactor
}

function minBidIncrease() payable {
    return minBidIncrease
}

function maxCuratorFee() payable {
    return maxCuratorFee
}

function owner() payable {
    return owner
}

function minAuctionLength() payable {
    return minAuctionLength
}

function feeReceiver() payable {
    return feeReceiverAddress
}

function sub_d06a77d8(?) payable {
    return sub_d06a77d8
}

function commissionReceiver() payable {
    return commissionReceiverAddress
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

function setMaxCuratorFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit UpdateCuratorFee(governanceFee, arg1);
    maxCuratorFee = arg1
}

function setGovernanceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0, 'fee too high'
    emit UpdateGovernanceFee(governanceFee, arg1);
    governanceFee = arg1
}

function setMinVotePercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0, 'min vote percentage too high'
    emit UpdateMinVotePercentage(minVotePercentage, arg1);
    minVotePercentage = arg1
}

function setMaxReserveFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= minReserveFactor:
        revert with 0, 'max reserve factor too low'
    emit UpdateMaxReserveFactor(maxReserveFactor, arg1);
    maxReserveFactor = arg1
}

function setMinReserveFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= maxReserveFactor:
        revert with 0, 'min reserve factor too high'
    emit UpdateMinReserveFactor(minReserveFactor, arg1);
    minReserveFactor = arg1
}

function setFeeReceiver(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'fees cannot go to 0 address'
    emit UpdateFeeReceiver(feeReceiverAddress, arg1);
    feeReceiverAddress = arg1
}

function setCommissionReceiver(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'fees cannot go to 0 address'
    emit 0xea9622a3: commissionReceiverAddress, arg1
    commissionReceiverAddress = arg1
}

function sub_61335f35(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can not charge commission more than 100%'
    emit 0x266c1c0a: sub_d06a77d8, arg1
    sub_d06a77d8 = arg1
}

function setMinBidIncrease(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0, 'min bid increase too high'
    if arg1 < 10:
        revert with 0, 'min bid increase too low'
    emit UpdateMinBidIncrease(minBidIncrease, arg1);
    minBidIncrease = arg1
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

function setMinAuctionLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 600:
        revert with 0, 'min auction length too low'
    if arg1 >= maxAuctionLength:
        revert with 0, 'min auction length too high'
    emit UpdateMinAuctionLength(minAuctionLength, arg1);
    minAuctionLength = arg1
}

function setMaxAuctionLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1200:
        revert with 0, 'max auction length too high'
    if arg1 <= minAuctionLength:
        revert with 0, 'max auction length too low'
    emit UpdateMaxAuctionLength(maxAuctionLength, arg1);
    maxAuctionLength = arg1
}



}
