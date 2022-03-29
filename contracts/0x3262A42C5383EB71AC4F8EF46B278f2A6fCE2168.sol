contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor1
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ad622811(?) payable {
    require msg.sender == stor1
    require ext_code.size(stor0)
    staticcall stor0.getSPoolAmount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 3 * 10^18:
        revert with 0, 'pool amount too low'
    idx = 0
    while idx < -ext_call.return_data[0] + 10 * 10^18 / 10^18:
        mem[96] = 0xedca914c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        call stor0.buyTicket() with:
           value 10^18 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(stor0)
    staticcall stor0.getPendingWithdrawAmount(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'didnt win'
    require ext_code.size(stor0)
    call stor0.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
