contract main {




// =====================  Runtime code  =====================


const totalBalance = eth.balance(this.address)


address withdrawAddress;
address owner;

function withdrawAddress() payable {
    return withdrawAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function withdrawFunds() payable {
    if withdrawAddress != msg.sender:
        revert with 0, 'only withdrawer can call this'
    require ext_code.size(this.address)
    staticcall this.address.0xad7a672f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
