contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function deposit() payable {
    emit 0xe85a5eaa: msg.value
}

function getAVAXBalance() {
    emit 0xe85a5eaa: eth.balance(this.address)
}

function sub_bfaa3bd0(?) {
    require ext_code.size(stor1)
    call stor1.depositETH(address rg1, address rg2, uint16 rg3) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args stor0, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_65d16abe(?) {
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit 0xe85a5eaa: ext_call.return_data[0]
}

function sub_24056867(?) payable {
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit 0xe85a5eaa: ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.depositETH(address rg1, address rg2, uint16 rg3) with:
       value msg.value wei
         gas gas_remaining wei
        args stor0, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit 0xe85a5eaa: ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    emit 0xe85a5eaa: 0
    return 1
}



}
