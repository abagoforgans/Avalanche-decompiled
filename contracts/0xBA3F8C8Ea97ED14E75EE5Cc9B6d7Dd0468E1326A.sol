contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor3;
address stor6;
address target_token_address;
uint256 minium_purchase_amount;
uint8 stor13;

function minium_purchase_amount() {
    return minium_purchase_amount
}

function sub_8b192547(?) {
    return bool(stor13)
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

function sub_06eec7f4(?) {
    if not stor13:
        revert with 0, 's'
    require ext_code.size(stor6)
    staticcall stor6.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args target_token_address, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 's1'
    revert with 0, 's2'
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



}
