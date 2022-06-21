contract main {




// =====================  Runtime code  =====================


#
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address factoryAddress;
address pangolinRouterAddress;
address stor2;

function pangolinRouter() payable {
    return pangolinRouterAddress
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function setFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Get away from my contract'
    if not arg1:
        revert with 0, 'Thats not an address dude'
    factoryAddress = arg1
}

function setrouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Get away from my contract'
    if not arg1:
        revert with 0, 'Thats not an address dude'
    pangolinRouterAddress = arg1
}



}
