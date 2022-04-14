contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function payments(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require stor0[arg1].field_224 <= 3
    return Mask(160, 96, stor0[arg1].field_0), stor0[arg1].field_0, stor0[arg1].field_224
}

function ethPayment(bytes32 arg1, address arg2, bytes20 arg3, uint64 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2
    require msg.value > 0
    require stor0[arg1].field_224 <= 3
    require not stor0[arg1].field_224
    hash = ripemd160hash(arg2, Mask(160, 96, msg.sender) >> 96, Mask(160, 96, arg3) >> 96, 0, msg.value) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[arg1].field_0 = uint64(hash)
    stor0[arg1].field_64 = 0
    stor0[arg1].field_160 = arg4
    stor0[arg1].field_0 = uint64(hash)
    stor0[arg1].field_64 = 0
    stor0[arg1].field_160 = arg4
    stor0[arg1].field_224 = 1
    emit PaymentSent(arg1);
}

function erc20Payment(bytes32 arg1, uint256 arg2, address arg3, address arg4, bytes20 arg5, uint64 arg6) payable {
    require calldata.size - 4 >= 192
    require arg4
    require arg2 > 0
    require stor0[arg1].field_224 <= 3
    require not stor0[arg1].field_224
    hash = ripemd160hash(arg4, Mask(160, 96, msg.sender) >> 96, Mask(160, 96, arg5) >> 96, arg3, uint128(arg2), uint128(arg2)) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[arg1].field_0 = uint64(hash)
    stor0[arg1].field_64 = 0
    stor0[arg1].field_160 = arg6
    stor0[arg1].field_0 = uint64(hash)
    stor0[arg1].field_64 = 0
    stor0[arg1].field_160 = arg6
    stor0[arg1].field_224 = 1
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit PaymentSent(arg1);
}

function senderRefund(bytes32 arg1, uint256 arg2, bytes20 arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require stor0[arg1].field_224 <= 3
    require stor0[arg1].field_224 == 1
    hash = ripemd160hash(arg5, Mask(160, 96, msg.sender) >> 96, Mask(160, 96, arg3) >> 96, arg4, uint128(arg2), uint128(arg2)) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(hash) == Mask(160, 96, stor0[arg1].field_0)
    require block.timestamp >= stor0[arg1].field_160
    stor0[arg1].field_224 = 3
    if not arg4:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg4)
        call arg4.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    emit SenderRefunded(arg1);
}

function receiverSpend(bytes32 arg1, uint256 arg2, bytes32 arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require stor0[arg1].field_224 <= 3
    require stor0[arg1].field_224 == 1
    hash = sha256hash(arg3) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    hash = ripemd160hash(hash) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    hash = ripemd160hash(msg.sender, arg5, address(hash), arg4, uint128(arg2), uint128(arg2)) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(hash) == Mask(160, 96, stor0[arg1].field_0)
    stor0[arg1].field_224 = 2
    if not arg4:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg4)
        call arg4.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    emit ReceiverSpent(arg1, arg3);
}



}
