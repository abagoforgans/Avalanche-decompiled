contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address sub_2a4a7748Address;
mapping of uint256 sub_6c2b6d48;
address feeReceiverAddress;
uint256 sub_2784b6ba;
uint256 denominator;

function sub_2784b6ba(?) {
    return sub_2784b6ba
}

function sub_2a4a7748(?) {
    return sub_2a4a7748Address
}

function sub_6c2b6d48(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    return sub_6c2b6d48[arg1][arg2]
}

function denominator() {
    return denominator
}

function feeReceiver() {
    return feeReceiverAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function sub_f6a05575(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    sub_2a4a7748Address = address(arg1)
}

function sub_3ae646da(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require arg1 <= denominator
    sub_2784b6ba = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 1
    emit Authorized(arg1);
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 0
    emit Unauthorized(arg1);
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require feeReceiverAddress
    feeReceiverAddress = arg1
}

function sub_026d0f90(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    require arg3 == arg3
    require msg.sender == stor0
    sub_6c2b6d48[address(arg1)][arg2 << 248] = arg3
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[stor0] = 0
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_658fe235(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_2a4a7748Address)
    staticcall sub_2a4a7748Address.0x658fe235 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_98eac88b(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_2a4a7748Address)
    staticcall sub_2a4a7748Address.0x98eac88b with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_2506d6f0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if not sub_6c2b6d48[address(arg1)][arg2 << 248]:
        return 0
    if uint8(arg2):
        revert with 0, 'INVALID_FEE'
    require ext_code.size(sub_2a4a7748Address)
    staticcall sub_2a4a7748Address.0x98eac88b with:
            gas gas_remaining wei
           args sub_6c2b6d48[address(arg1)][arg2 << 248], denominator
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_156d0c19(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    require arg3 == arg3
    require stor1[address(msg.sender)]
    if not sub_6c2b6d48[address(msg.sender)][arg2 << 248]:
        revert with 0, 'INVALID_FEE'
    if uint8(arg2):
        revert with 0, 'INVALID_FEE'
    require ext_code.size(sub_2a4a7748Address)
    staticcall sub_2a4a7748Address.0x98eac88b with:
            gas gas_remaining wei
           args sub_6c2b6d48[address(msg.sender)][arg2 << 248], denominator
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'INVALID_FEE'
    if ext_call.return_data[0] > arg3:
        revert with 0, 'FEE_OVERPRICED'
    if uint8(arg2):
        revert with 0, 'INVALID_FEE'
    if ext_call.return_data[0] != msg.value:
        revert with 0, 'TX_UNDERPRICED'
    call feeReceiverAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'FEE_TRANSFER_FAILED'
}



}
