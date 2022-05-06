contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender == address(stor0.field_0)
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
    return 1
}

function pause() payable {
    require msg.sender == address(stor0.field_0)
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
    return 1
}

function setCEO(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0.field_0)
    require arg1
    emit CEOTransferred(address(stor0.field_0), arg1);
    address(stor0.field_0) = arg1
}

function withdrawBalance() payable {
    require msg.sender == address(stor0.field_0)
    call address(stor0.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
