contract main {




// =====================  Runtime code  =====================


const myBalance = eth.balance(this.address)


address sub_260b9bcfAddress;

function sub_260b9bcf(?) {
    return sub_260b9bcfAddress
}

function _fallback() payable {
    revert
}

function flashLoan() {
    require ext_code.size(sub_260b9bcfAddress)
    call sub_260b9bcfAddress.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args 0, 0, 100 * 10^18, 96, 5, 'hello'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cb92f93c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    emit 0x2c3af94f: Array(len=14, data='my balance is '), eth.balance(this.address)
    require ext_code.size(sub_260b9bcfAddress)
    call sub_260b9bcfAddress.payBack() with:
       value 10^16 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_260b9bcfAddress)
    call sub_260b9bcfAddress.deposit(bytes32 arg1) with:
       value 100 * 10^18 wei
         gas gas_remaining wei
        args 0xa8eb7acec004922c9132f96b9bc90281c6ecd16570938d675e91db7583f00ed
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
