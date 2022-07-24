contract main {




// =====================  Runtime code  =====================


#
#  - getMultipleSortedTroves(int256 arg1, uint256 arg2)
#
address troveManagerAddress;
address sortedTrovesAddress;
address whitelistAddress;

function troveManager() payable {
    return troveManagerAddress
}

function whitelist() payable {
    return whitelistAddress
}

function sortedTroves() payable {
    return sortedTrovesAddress
}

function _fallback() payable {
    revert
}



}
