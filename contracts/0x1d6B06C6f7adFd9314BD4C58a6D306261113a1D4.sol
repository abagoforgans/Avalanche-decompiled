contract main {




// =====================  Runtime code  =====================


#
#  - approveRouterToSpend(address arg1)
#  - approvePaymentProxyToSpend(address arg1)
#  - sub_b2964b11(?)
#
address owner;
address swapRouterAddress;
address paymentProxyAddress;
address chainlinkConversionPathAddress;

function paymentProxy() payable {
    return paymentProxyAddress
}

function owner() payable {
    return owner
}

function chainlinkConversionPath() payable {
    return chainlinkConversionPathAddress
}

function swapRouter() payable {
    return swapRouterAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapRouterAddress = arg1
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

function setPaymentProxy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paymentProxyAddress = arg1
    require ext_code.size(paymentProxyAddress)
    staticcall paymentProxyAddress.0x946647f1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    chainlinkConversionPathAddress = ext_call.return_data[12 len 20]
}



}
