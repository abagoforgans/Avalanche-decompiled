contract main {




// =====================  Runtime code  =====================


address tokenContractAddress;
uint256 sub_8776b7b6;
address stor2;
uint256 tokensSold;

function tokensSold() {
    return tokensSold
}

function tokenContract() {
    return tokenContractAddress
}

function sub_8776b7b6(?) {
    return sub_8776b7b6
}

function _fallback() payable {
    revert
}

function sub_b4fad1b5(?) {
    require msg.sender == stor2
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens() payable {
    if not msg.value:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        emit Sold(msg.sender, 0);
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require sub_8776b7b6 * msg.value / msg.value == sub_8776b7b6
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= sub_8776b7b6 * msg.value
        emit Sold(msg.sender, sub_8776b7b6 * msg.value);
        tokensSold += sub_8776b7b6 * msg.value
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_8776b7b6 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
