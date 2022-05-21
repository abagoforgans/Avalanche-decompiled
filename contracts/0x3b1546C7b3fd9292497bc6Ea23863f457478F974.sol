contract main {




// =====================  Runtime code  =====================


#
#  - sub_0886d0df(?)
#  - sub_399d71fd(?)
#  - sub_407045a8(?)
#  - sub_500f1313(?)
#  - sub_90c3d203(?)
#  - sub_9ead80fd(?)
#
address owner;
address slaveAddress;

function owner() {
    return owner
}

function slave() {
    return slaveAddress
}

function _fallback() payable {
  stop
}

function isAllowed() {
    if owner != msg.sender:
        if slaveAddress != msg.sender:
            revert with 0, 'not allowed'
    return 1
}

function sub_4e27b7d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(arg1) != 0xd8aa70f7990dab4a383a0d8a57df7a372916575d:
        if address(arg1) != 0xb9a9bb6cc39387548baa7185fbff51d47eef8771:
            return 0
    return 1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'not found'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
