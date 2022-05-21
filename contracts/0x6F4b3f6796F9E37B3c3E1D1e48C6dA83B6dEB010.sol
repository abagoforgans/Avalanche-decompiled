contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor4;
address stor5;
address target_token_address;
address stor7;
uint256 stor7;
uint256 stor8;
uint256 stor9; offset 32
uint256 stor9;
uint256 minium_purchase_amount;
uint8 stor11;

function can_buy() {
    return bool(stor11)
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

function sub_86a87031(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    target_token_address = arg1
}

function sub_3a971572(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    minium_purchase_amount = arg1
}

function sub_3a7018d8(?) {
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

function sub_62f0f8f5(?) {
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

function sub_ff525cfc(?) {
    if not stor11:
        revert with 0, 's'
    require ext_code.size(stor5)
    staticcall stor5.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args target_token_address, stor2
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
        mem[192] = target_token_address
        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[228] = uint256(stor9.field_0)
        mem[260] = 1
        mem[324] = stor1
        mem[356] = 1756181673
        mem[292] = 160
        mem[388] = 3
        mem[420 len 0] = None
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args uint256(stor9.field_0), 1, Array(len=3, data=mem[420 len 96]), stor1, 1756181673
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        require mem[224 len 4], Mask(224, 0, stor9.field_32) <= 4294967296
        require mem[224 len 4], Mask(224, 0, stor9.field_32) + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor9.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 32 <= return_data.size
        stor11 = 0
}



}
