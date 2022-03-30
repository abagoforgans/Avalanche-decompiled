contract main {




// =====================  Runtime code  =====================


#
#  - removeBid(uint256 arg1, address arg2)
#  - acceptBid(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, uint256 arg6)
#  - setBid(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, uint256 arg6, address arg7)
#
address mediaContractAddress;
address stor1;
mapping of struct bidForTokenBidder;
mapping of struct bidSharesForToken;
mapping of struct currentAskForToken;

function mediaContract() payable {
    return mediaContractAddress
}

function currentAskForToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return currentAskForToken[arg1].field_0, currentAskForToken[arg1].field_256
}

function bidForTokenBidder(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bidForTokenBidder[arg1][address(arg2)].field_0, 
           bidForTokenBidder[arg1][address(arg2)].field_256,
           bidForTokenBidder[arg1][address(arg2)].field_512,
           bidForTokenBidder[arg1][address(arg2)].field_768,
           bidForTokenBidder[arg1][address(arg2)].field_1024
}

function bidSharesForToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bidSharesForToken[arg1].field_0, bidSharesForToken[arg1].field_256, bidSharesForToken[arg1].field_512
}

function _fallback() payable {
    revert
}

function splitShare(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require calldata.size - 4 >= 32
    if arg2 and arg1 > -1 / arg2:
        revert with 0, 17
    return (arg2 * arg1 / 10^18 / 100)
}

function removeAsk(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if mediaContractAddress != msg.sender:
        revert with 0, 'Market: Only media contract'
    emit 0xbf58f6d6: currentAskForToken[arg1].field_0, currentAskForToken[arg1].field_256, arg1
    currentAskForToken[arg1].field_0 = 0
    currentAskForToken[arg1].field_256 = 0
}

function isValidBidShares(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require calldata.size - 4 >= 32
    require calldata.size - 36 >= 32
    require calldata.size - 68 >= 32
    if arg2 > !arg3:
        revert with 0, 17
    if arg2 + arg3 > !arg1:
        revert with 0, 17
    return (arg2 + arg3 + arg1 == 100 * 10^18)
}

function configure(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Market: Only owner'
    if mediaContractAddress:
        revert with 0, 'Market: Already configured'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Market: cannot set media contract as zero address'
    mediaContractAddress = arg1
}

function setBidShares(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require calldata.size - 36 >= 96
    require calldata.size - 36 >= 32
    require calldata.size - 68 >= 32
    require calldata.size - 100 >= 32
    if mediaContractAddress != msg.sender:
        revert with 0, 'Market: Only media contract'
    if arg3 > !arg4:
        revert with 0, 17
    if arg3 + arg4 > !arg2:
        revert with 0, 17
    if arg3 + arg4 + arg2 != 100 * 10^18:
        revert with 0, 'Market: Invalid bid shares, must sum to 100'
    bidSharesForToken[arg1].field_0 = arg2
    bidSharesForToken[arg1].field_256 = arg3
    bidSharesForToken[arg1].field_512 = arg4
    emit 0xdb88d4e9: arg2, arg3, arg4, arg1
}

function isValidBid(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bidSharesForToken[arg1].field_256 > !bidSharesForToken[arg1].field_512:
        revert with 0, 17
    if bidSharesForToken[arg1].field_256 + bidSharesForToken[arg1].field_512 > !bidSharesForToken[arg1].field_0:
        revert with 0, 17
    if bidSharesForToken[arg1].field_256 + bidSharesForToken[arg1].field_512 + bidSharesForToken[arg1].field_0 != 100 * 10^18:
        revert with 0, 'Market: Invalid bid shares for token'
    if not arg2:
        return bool(arg2)
    if arg2 and bidSharesForToken[arg1].field_512 > -1 / arg2:
        revert with 0, 17
    if arg2 and bidSharesForToken[arg1].field_0 > -1 / arg2:
        revert with 0, 17
    if arg2 and bidSharesForToken[arg1].field_256 > -1 / arg2:
        revert with 0, 17
    if arg2 * bidSharesForToken[arg1].field_256 / 10^18 / 100 > !(arg2 * bidSharesForToken[arg1].field_0 / 10^18 / 100):
        revert with 0, 17
    if (arg2 * bidSharesForToken[arg1].field_256 / 10^18 / 100) + (arg2 * bidSharesForToken[arg1].field_0 / 10^18 / 100) > !(arg2 * bidSharesForToken[arg1].field_512 / 10^18 / 100):
        revert with 0, 17
    return (arg2 == (arg2 * bidSharesForToken[arg1].field_256 / 10^18 / 100) + (arg2 * bidSharesForToken[arg1].field_0 / 10^18 / 100) + (arg2 * bidSharesForToken[arg1].field_512 / 10^18 / 100))
}

function setAsk(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require calldata.size - 36 >= 64
    require arg3 == arg3
    if mediaContractAddress != msg.sender:
        revert with 0, 'Market: Only media contract'
    if bidSharesForToken[arg1].field_256 > !bidSharesForToken[arg1].field_512:
        revert with 0, 17
    if bidSharesForToken[arg1].field_256 + bidSharesForToken[arg1].field_512 > !bidSharesForToken[arg1].field_0:
        revert with 0, 17
    if bidSharesForToken[arg1].field_256 + bidSharesForToken[arg1].field_512 + bidSharesForToken[arg1].field_0 != 100 * 10^18:
        revert with 0, 'Market: Invalid bid shares for token'
    if not arg2:
        revert with 0, 'Market: Ask invalid for share splitting'
    if arg2 and bidSharesForToken[arg1].field_512 > -1 / arg2:
        revert with 0, 17
    if arg2 and bidSharesForToken[arg1].field_0 > -1 / arg2:
        revert with 0, 17
    if arg2 and bidSharesForToken[arg1].field_256 > -1 / arg2:
        revert with 0, 17
    if arg2 * bidSharesForToken[arg1].field_256 / 10^18 / 100 > !(arg2 * bidSharesForToken[arg1].field_0 / 10^18 / 100):
        revert with 0, 17
    if (arg2 * bidSharesForToken[arg1].field_256 / 10^18 / 100) + (arg2 * bidSharesForToken[arg1].field_0 / 10^18 / 100) > !(arg2 * bidSharesForToken[arg1].field_512 / 10^18 / 100):
        revert with 0, 17
    if arg2 != (arg2 * bidSharesForToken[arg1].field_256 / 10^18 / 100) + (arg2 * bidSharesForToken[arg1].field_0 / 10^18 / 100) + (arg2 * bidSharesForToken[arg1].field_512 / 10^18 / 100):
        revert with 0, 'Market: Ask invalid for share splitting'
    currentAskForToken[arg1].field_0 = arg2
    currentAskForToken[arg1].field_256 = arg3
    emit 0xf7347cb9: arg2, arg3, arg1
}



}
