contract main {




// =====================  Runtime code  =====================


uint256 counter;
address owner;
address sub_9fccb17cAddress;
address sub_ae72293bAddress;

function counter() payable {
    return counter
}

function owner() payable {
    return owner
}

function sub_9fccb17c(?) payable {
    return sub_9fccb17cAddress
}

function sub_ae72293b(?) payable {
    return sub_ae72293bAddress
}

function _fallback() payable {
    revert
}

function sub_5609194b(?) payable {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    sub_9fccb17cAddress = arg1
    sub_ae72293bAddress = arg2
}

function sub_3accbc5f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == 1
    require msg.sender == sub_9fccb17cAddress
    require ext_code.size(sub_ae72293bAddress)
    staticcall sub_ae72293bAddress.0x789eeda4 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] <= 10000
    require ext_code.size(sub_9fccb17cAddress)
    staticcall sub_9fccb17cAddress.tokenExists(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    counter++
    return ext_call.return_data[0]
}



}
