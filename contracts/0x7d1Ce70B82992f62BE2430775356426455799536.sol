contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor3;
address stor4;
address stor5;
address target_token_address;
address stor7;
uint256 stor7;
uint256 stor8;
uint256 stor9; offset 32
uint256 stor9;
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
    require ext_code.size(stor5)
    staticcall stor5.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args target_token_address, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'np'
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(target_token_address)
    staticcall target_token_address.0x70a08231 with:
            gas gas_remaining wei
           args address(stor7)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > stor8:
        mem[160] = target_token_address
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = uint256(stor9.field_0)
        mem[228] = minium_purchase_amount
        mem[292] = stor1
        mem[324] = 1756181673
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args uint256(stor9.field_0), minium_purchase_amount, Array(len=2, data=mem[388 len 64]), stor1, 1756181673
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 0, stor9.field_32) <= 4294967296
        require mem[192 len 4], Mask(224, 0, stor9.field_32) + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor9.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 32 <= return_data.size
        can_buy = 0
}



}
