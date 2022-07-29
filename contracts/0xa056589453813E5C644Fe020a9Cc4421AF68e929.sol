contract main {




// =====================  Runtime code  =====================


#
#  - sub_1a98b2e0(?)
#  - sub_49160658(?)
#
address gatewayAddress;

function gateway() payable {
    return gatewayAddress
}

function _fallback() payable {
    revert
}



}
