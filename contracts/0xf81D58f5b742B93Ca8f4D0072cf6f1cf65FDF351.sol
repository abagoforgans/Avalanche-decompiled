contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address target_token_address;
uint256 stor6;
address stor7;
uint256 stor7;
uint256 stor8;
uint256 stor9; offset 32
uint256 stor9;
uint256 minium_purchase_amount;
uint8 stor11;
address stor11; offset 8
address stor12;
address stor13;

function can_buy() {
    return bool(uint8(stor11.field_0))
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

function change_target_address_______(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    target_token_address = arg1
}

function change_minium_purchase_ratio_______(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    minium_purchase_amount = arg1
}

function approve_new_token_______(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw_all_token_to_admin_______(address arg1) {
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

function master_swap_intermediate() {
    if not uint8(stor11.field_0):
        revert with 0, 's'
    require ext_code.size(stor13)
    staticcall stor13.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args target_token_address, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'np'
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args address(stor7)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor6 = ext_call.return_data[0]
    if stor6 > stor8:
        mem[96] = 2
        mem[128] = stor4
        mem[160] = stor3
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = uint256(stor9.field_0)
        mem[228] = 1
        mem[292] = this.address
        mem[324] = 1756081673
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(stor11.field_8))
        call address(stor11.field_8).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args uint256(stor9.field_0), 1, Array(len=2, data=mem[388 len 64]), address(this.address), 1756081673
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _44 = mem[192 len 4], Mask(224, 0, stor9.field_32)
        require mem[192 len 4], Mask(224, 0, stor9.field_32) <= 4294967296
        require mem[192 len 4], Mask(224, 0, stor9.field_32) + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor9.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]
        _47 = mem[_44 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_44 + 192])] = mem[_44 + 224 len floor32(mem[_44 + 192])]
        mem[(32 * _47) + ceil32(return_data.size) + 288] = target_token_address
        mem[(32 * _47) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _47) + ceil32(return_data.size) + 324] = uint256(stor9.field_0)
        mem[(32 * _47) + ceil32(return_data.size) + 356] = minium_purchase_amount
        mem[(32 * _47) + ceil32(return_data.size) + 420] = stor2
        mem[(32 * _47) + ceil32(return_data.size) + 452] = 1756081673
        mem[(32 * _47) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _47) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _47) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(stor12)
        call stor12.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args uint256(stor9.field_0), minium_purchase_amount, Array(len=2, data=mem[(32 * _47) + ceil32(return_data.size) + 516 len 64]), stor2, 1756081673
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _47) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _47) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * _47) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor9.field_32) <= 4294967296
        require mem[(32 * _47) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor9.field_32) + 32 <= return_data.size
        require mem[mem[(32 * _47) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor9.field_32) + (32 * _47) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _47) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor9.field_32) + (32 * mem[mem[(32 * _47) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor9.field_32) + (32 * _47) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        uint8(stor11.field_0) = 0
}



}
