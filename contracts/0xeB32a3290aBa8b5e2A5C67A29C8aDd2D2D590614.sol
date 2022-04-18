contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;

function destruct(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'ONLY FACTORY'
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function init(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_160):
        revert with 0, 'ALREADY INIT'
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 1
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(stor0.field_0), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
