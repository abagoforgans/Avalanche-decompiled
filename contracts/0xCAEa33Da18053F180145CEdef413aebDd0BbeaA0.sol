contract main {




// =====================  Runtime code  =====================


#
#  - sub_ae311ce7(?)
#
const getBalance = eth.balance(this.address)


address stor0;

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor0 == msg.sender
    require eth.balance(this.address) >= arg1
    if not arg1:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call stor0 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require stor0 == msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(arg1)
    if not arg2:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
    else:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
