contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address referralManagerAddress;
address sub_2a4a7748Address;
address stor4;
address stor5;
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

function referralManager() {
    return referralManagerAddress
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

function sub_650c92bd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    referralManagerAddress = address(arg1)
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
    if not uint8(arg2):
        require ext_code.size(sub_2a4a7748Address)
        staticcall sub_2a4a7748Address.0x98eac88b with:
                gas gas_remaining wei
               args sub_6c2b6d48[address(arg1)][arg2 << 248], denominator
    else:
        if uint8(arg2) != 1:
            revert with 0, 'INVALID_FEE'
        require ext_code.size(sub_2a4a7748Address)
        staticcall sub_2a4a7748Address.0x658fe235 with:
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
    if not uint8(arg2):
        require ext_code.size(sub_2a4a7748Address)
        staticcall sub_2a4a7748Address.0x98eac88b with:
                gas gas_remaining wei
               args sub_6c2b6d48[address(msg.sender)][arg2 << 248], denominator
    else:
        if uint8(arg2) != 1:
            revert with 0, 'INVALID_FEE'
        require ext_code.size(sub_2a4a7748Address)
        staticcall sub_2a4a7748Address.0x658fe235 with:
                gas gas_remaining wei
               args sub_6c2b6d48[address(msg.sender)][arg2 << 248], denominator
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > arg3:
        revert with 0, 'FEE_OVERPRICED'
    if not uint8(arg2):
        if ext_call.return_data[0] != msg.value:
            revert with 0, 'TX_UNDERPRICED'
        require ext_code.size(stor4)
        call stor4.0x9fd6fce4 with:
           value msg.value wei
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if uint8(arg2) != 1:
            revert with 0, 'INVALID_FEE'
        if msg.value:
            revert with 0, 'TX_OVERPRICED'
        require ext_code.size(stor5)
        call stor5.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(referralManagerAddress)
    staticcall referralManagerAddress.0x2cf003c2 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        if sub_2784b6ba > 0:
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if sub_2784b6ba and ext_call.return_data[0] > -1 / sub_2784b6ba:
                revert with 'NH{q', 17
            if not denominator:
                revert with 'NH{q', 18
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining wei
                args referralManagerAddress, sub_2784b6ba * ext_call.return_data[0] / denominator
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(referralManagerAddress)
            call referralManagerAddress.0xe8a19fdc with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args feeReceiverAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
