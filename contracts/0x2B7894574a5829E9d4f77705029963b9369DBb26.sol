contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address owner; offset 8
mapping of uint8 stor1;
address stor2;
address stor3;
uint256 sub_73402a8b;
mapping of struct sub_f0bfdb08;
array of struct sub_402c76fd;
uint256 taxFee;

function sub_402c76fd(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_402c76fd[arg1].field_0
    return sub_402c76fd[arg1][arg2].field_0, 
           sub_402c76fd[arg1][arg2].field_256,
           sub_402c76fd[arg1][arg2].field_512,
           sub_402c76fd[arg1][arg2].field_768,
           bool(sub_402c76fd[arg1][arg2].field_1024)
}

function sub_45dcc8e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_f0bfdb08[arg1].field_0, 
           sub_f0bfdb08[arg1].field_256,
           sub_f0bfdb08[arg1].field_512,
           sub_f0bfdb08[arg1].field_768,
           bool(sub_f0bfdb08[arg1].field_1024)
}

function paused() {
    return bool(stor0)
}

function Controller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function sub_73402a8b(?) {
    return sub_73402a8b
}

function owner() {
    return owner
}

function TaxFee() {
    return taxFee
}

function sub_f0bfdb08(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_f0bfdb08[arg1].field_0, 
           sub_f0bfdb08[arg1].field_256,
           sub_f0bfdb08[arg1].field_512,
           sub_f0bfdb08[arg1].field_768,
           bool(sub_f0bfdb08[arg1].field_1024)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function SetTaxFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    taxFee = arg1
}

function sub_5f86ee79(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor2 = address(arg1)
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor1[address(arg1)] = 1
}

function removeController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0, 'zero not allow'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function EmergencyWithdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function SetPause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    if arg1 != 1:
        if not stor0:
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function CancelOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0:
        revert with 0, 'Pausable: paused'
    if sub_f0bfdb08[arg1].field_512 != msg.sender:
        revert with 0, 'You are not owner'
    if sub_f0bfdb08[arg1].field_1024:
        revert with 0, 'Order Close'
    sub_f0bfdb08[arg1].field_1024 = 1
    require ext_code.size(stor2)
    call stor2.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), sub_f0bfdb08[arg1].field_512, sub_f0bfdb08[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_62121e15(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Only owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_01f1e27c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0:
        revert with 0, 'Pausable: paused'
    if sub_f0bfdb08[arg1].field_1024:
        revert with 0, 'Order Already Deal'
    if sub_f0bfdb08[arg1].field_768 != msg.value:
        revert with 0, 'ValueError'
    if sub_f0bfdb08[arg1].field_768 and taxFee > -1 / sub_f0bfdb08[arg1].field_768:
        revert with 'NH{q', 17
    if sub_f0bfdb08[arg1].field_768 < sub_f0bfdb08[arg1].field_768 * taxFee / 100:
        revert with 'NH{q', 17
    call stor3 with:
       value sub_f0bfdb08[arg1].field_768 * taxFee / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_f0bfdb08[arg1].field_512 with:
       value sub_f0bfdb08[arg1].field_768 - (sub_f0bfdb08[arg1].field_768 * taxFee / 100) wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(stor2)
    call stor2.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, sub_f0bfdb08[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_f0bfdb08[arg1].field_1024 = 1
    emit 0x5c096e32: sub_f0bfdb08[arg1].field_512, msg.sender, sub_f0bfdb08[arg1].field_256, sub_f0bfdb08[arg1].field_768 - (sub_f0bfdb08[arg1].field_768 * taxFee / 100)
}

function sub_6a3146ec(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(stor2)
    staticcall stor2.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You are not owner'
    sub_f0bfdb08[stor4].field_0 = sub_73402a8b
    sub_f0bfdb08[stor4].field_256 = arg1
    sub_f0bfdb08[stor4].field_512 = msg.sender
    sub_f0bfdb08[stor4].field_768 = arg2
    sub_f0bfdb08[stor4].field_1024 = 0
    require ext_code.size(stor2)
    call stor2.0x42842e0e with:
         gas gas_remaining wei
        args sub_f0bfdb08[stor4].field_512, address(this.address), sub_f0bfdb08[stor4].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_73402a8b == -1:
        revert with 'NH{q', 17
    sub_73402a8b++
    sub_402c76fd[address(msg.sender)].field_0++
    sub_402c76fd[address(msg.sender)][sub_402c76fd[address(msg.sender)].field_0].field_0 = sub_f0bfdb08[stor4].field_0
    sub_402c76fd[address(msg.sender)][sub_402c76fd[address(msg.sender)].field_0].field_256 = sub_f0bfdb08[stor4].field_256
    sub_402c76fd[address(msg.sender)][sub_402c76fd[address(msg.sender)].field_0].field_512 = sub_f0bfdb08[stor4].field_512
    sub_402c76fd[address(msg.sender)][sub_402c76fd[address(msg.sender)].field_0].field_768 = sub_f0bfdb08[stor4].field_768
    sub_402c76fd[address(msg.sender)][sub_402c76fd[address(msg.sender)].field_0].field_1024 = uint8(bool(sub_f0bfdb08[stor4].field_1024))
    emit 0x9e4e08f7: msg.sender, arg1, arg2
}



}
