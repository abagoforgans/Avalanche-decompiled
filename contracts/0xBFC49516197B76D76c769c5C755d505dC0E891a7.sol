contract main {




// =====================  Runtime code  =====================


#
#  - flash(bool arg1, uint256 arg2)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
function _fallback() payable {
    revert
}



}
