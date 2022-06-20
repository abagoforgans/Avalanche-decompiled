contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address owner; offset 8
mapping of uint8 stor1;
address sub_01e51ae8Address;
uint256 sub_de1c27cb;
uint256 sub_50855f18;
uint256 sub_dc2c4c11;
uint256 sub_61cb9e2b;
address stor7;
address stor8;

function sub_01e51ae8(?) {
    return sub_01e51ae8Address
}

function RewardPool() {
    return sub_de1c27cb
}

function sub_50855f18(?) {
    return sub_50855f18
}

function paused() {
    return bool(stor0)
}

function sub_61cb9e2b(?) {
    return sub_61cb9e2b
}

function Controller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function owner() {
    return owner
}

function sub_dc2c4c11(?) {
    return sub_dc2c4c11
}

function sub_de1c27cb(?) {
    return sub_de1c27cb
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

function sub_c667e9f1(?) payable {
    if msg.value <= 0:
        revert with 0, '0'
    if sub_de1c27cb > -msg.value - 1:
        revert with 'NH{q', 17
    sub_de1c27cb += msg.value
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

function SetRecord(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor8 = arg1
    stor1[address(arg1)] = 1
}

function sub_0640d773(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor7 = address(arg1)
    stor1[address(arg1)] = 1
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

function Reward(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    if sub_de1c27cb < arg2:
        revert with 'NH{q', 17
    sub_de1c27cb -= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    call stor7 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor7)
    call stor7.0x51c6590a with:
         gas gas_remaining wei
        args arg1
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

function Distribute(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    if arg1 and 10 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 and 80 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 < 10 * arg1 / 100:
        revert with 'NH{q', 17
    if arg1 - (10 * arg1 / 100) < 80 * arg1 / 100:
        revert with 'NH{q', 17
    if sub_50855f18 > -arg1 + (10 * arg1 / 100) + (80 * arg1 / 100) - 1:
        revert with 'NH{q', 17
    sub_50855f18 = sub_50855f18 + arg1 - (10 * arg1 / 100) - (80 * arg1 / 100)
    call sub_01e51ae8Address with:
       value arg1 - (10 * arg1 / 100) - (80 * arg1 / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_de1c27cb > -(10 * arg1 / 100) - 1:
        revert with 'NH{q', 17
    sub_de1c27cb += 10 * arg1 / 100
    if sub_dc2c4c11 > -(80 * arg1 / 100) - 1:
        revert with 'NH{q', 17
    sub_dc2c4c11 += 80 * arg1 / 100
    call stor7 with:
       value 80 * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor7)
    call stor7.0x577c8960 with:
         gas gas_remaining wei
        args (80 * arg1 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c50f4648(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    if sub_de1c27cb and 20 > -1 / sub_de1c27cb:
        revert with 'NH{q', 17
    if sub_de1c27cb and 20 > -1 / sub_de1c27cb:
        revert with 'NH{q', 17
    if sub_de1c27cb and 20 > -1 / sub_de1c27cb:
        revert with 'NH{q', 17
    sub_61cb9e2b = 20 * sub_de1c27cb / 100
    if sub_de1c27cb < 20 * sub_de1c27cb / 100:
        revert with 'NH{q', 17
    sub_de1c27cb -= 20 * sub_de1c27cb / 100
    call address(arg1) with:
       value 20 * sub_de1c27cb / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_de1c27cb < 20 * sub_de1c27cb / 100:
        revert with 'NH{q', 17
    sub_de1c27cb -= 20 * sub_de1c27cb / 100
    require ext_code.size(stor8)
    staticcall stor8.0xe2adcb0c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value 20 * sub_de1c27cb / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_de1c27cb < sub_61cb9e2b:
        revert with 'NH{q', 17
    sub_de1c27cb -= sub_61cb9e2b
    call sub_01e51ae8Address with:
       value sub_de1c27cb wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
