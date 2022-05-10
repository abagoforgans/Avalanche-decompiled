contract main {




// =====================  Runtime code  =====================


#
#  - create(address[] arg1, int256[] arg2, address[] arg3, address arg4, string arg5, string arg6)
#
address controllerAddress;

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}



}
