contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor5;
address stor6;
address stor7;
address stor8;
address target_token_address;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;
uint256 stor13;
uint256 stor15; offset 32
uint256 stor15;
uint256 minium_purchase_amount;
uint8 can_buy;

function can_buy() {
    return bool(can_buy)
}

function minium_purchase_amount() {
    return minium_purchase_amount
}

function target_token_address() {
    return target_token_address
}

function _fallback() payable {
    revert
}

function sub_7824738f(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    target_token_address = arg1
}

function sub_39c8d903(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    minium_purchase_amount = arg1
}

function sub_be6cb59c(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3a143661(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_06eec7f4(?) {
    if not can_buy:
        revert with 0, 's'
    require ext_code.size(stor6)
    staticcall stor6.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args target_token_address, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    staticcall stor8.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args target_token_address, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'np'
        uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
    else:
        stor12 = address(ext_call.return_data[0])
        if ext_call.return_data[12 len 20]:
            uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
    require ext_code.size(target_token_address)
    staticcall target_token_address.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor10 = ext_call.return_data[0]
    require ext_code.size(target_token_address)
    staticcall target_token_address.0x70a08231 with:
            gas gas_remaining wei
           args address(stor13)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor11 = ext_call.return_data[0]
    if stor10 > 0:
        mem[192] = target_token_address
        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[228] = uint256(stor15.field_0)
        mem[260] = minium_purchase_amount
        mem[324] = stor2
        mem[356] = 1756181673
        mem[292] = 160
        mem[388] = 3
        mem[420 len 0] = None
        require ext_code.size(stor5)
        call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args uint256(stor15.field_0), minium_purchase_amount, Array(len=3, data=mem[420 len 96]), stor2, 1756181673
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        require mem[224 len 4], Mask(224, 0, stor15.field_32) <= 4294967296
        require mem[224 len 4], Mask(224, 0, stor15.field_32) + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 0, stor15.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor15.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor15.field_32) + 224]) + 32 <= return_data.size
        can_buy = 0
    else:
        if stor11 > 0:
            mem[192] = target_token_address
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = uint256(stor15.field_0)
            mem[260] = minium_purchase_amount
            mem[324] = stor2
            mem[356] = 1756181673
            mem[292] = 160
            mem[388] = 3
            mem[420 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args uint256(stor15.field_0), minium_purchase_amount, Array(len=3, data=mem[420 len 96]), stor2, 1756181673
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], Mask(224, 0, stor15.field_32) <= 4294967296
            require mem[224 len 4], Mask(224, 0, stor15.field_32) + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 0, stor15.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor15.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor15.field_32) + 224]) + 32 <= return_data.size
            can_buy = 0
}



}
