contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address feeManagerAddress;
address stor3;
address stor4;
uint256 amountMax;
address feeReceiverAddress;

function amountMax() {
    return amountMax
}

function feeReceiver() {
    return feeReceiverAddress
}

function feeManager() {
    return feeManagerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    feeReceiverAddress = arg1
}

function sub_f5ce119e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    feeManagerAddress = address(arg1)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 1
    emit Authorized(arg1);
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 0
    emit Unauthorized(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_f101f7fe(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == stor4
    require arg1 == 0xe3c1d7276597efd9d843947461cebd3cc2f174fb25650bff944b8051a254907d
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] <= amountMax
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args feeReceiverAddress, 25 * ext_call.return_data[0] / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] < 25 * ext_call.return_data[0] / 10000:
        revert with 'NH{q', 17
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0] - (25 * ext_call.return_data[0] / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function bridge(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 <= amountMax
    require ext_code.size(feeManagerAddress)
    staticcall feeManagerAddress.0x2506d6f0 with:
            gas gas_remaining wei
           args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > msg.value:
        revert with 0, 'TX_UNDERPRICED'
    require ext_code.size(feeManagerAddress)
    call feeManagerAddress.0x156d0c19 with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
        args msg.sender, 0, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if msg.value - ext_call.return_data[0] <= 0:
        if msg.value - ext_call.return_data[0] < 0:
            revert with 0, 'TX_UNDERPRICED'
    else:
        if msg.value - ext_call.return_data[0] < 0:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'FEE_REFUND_FAILED'
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.0xabbdf4c5 with:
         gas gas_remaining wei
        args 0xe3c1d7276597efd9d843947461cebd3cc2f174fb25650bff944b8051a254907d, arg1, arg2, msg.sender, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
