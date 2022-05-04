contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 priceinWeis;
address stor2;
uint256 tokensSold;

function priceinWeis() {
    return priceinWeis
}

function tokensSold() {
    return tokensSold
}

function _fallback() payable {
    revert
}

function etherBalance() {
    if stor0 != msg.sender:
        revert with 0, 'Owner Only!'
    return eth.balance(this.address)
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Owner Only!'
    priceinWeis = arg1
}

function tokenBalance() {
    if stor0 != msg.sender:
        revert with 0, 'Owner Only!'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function endSold() {
    if stor0 != msg.sender:
        revert with 0, 'Owner Only!'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not priceinWeis:
        require not msg.value
    else:
        require arg1 * priceinWeis / priceinWeis == arg1
        require msg.value == arg1 * priceinWeis
    require ext_code.size(stor2)
    staticcall stor2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require 10^ext_call.return_data[31 len 1] * arg1 / arg1 == 10^ext_call.return_data[31 len 1]
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 10^uint8(ext_call.return_data[0]) * arg1
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^uint8(ext_call.return_data[0]) * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    tokensSold += arg1
    emit Sold(arg1, msg.sender);
}



}
