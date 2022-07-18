contract main {




// =====================  Runtime code  =====================


uint256 balanceOf;
address owner;
uint256 sub_d80e6abb;
address sub_45f07644Address;
mapping of uint256 tokenBalanceOf;

function sub_45f07644(?) {
    return sub_45f07644Address
}

function balanceOf() {
    if owner != msg.sender:
        revert with 0, 'Only owner can do this'
    return balanceOf
}

function owner() {
    return owner
}

function sub_d80e6abb(?) {
    return sub_d80e6abb
}

function tokenBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner can do this'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You dont have any of this token'
    return tokenBalanceOf[address(arg1)]
}

function send() payable {
    if balanceOf > -msg.value - 1:
        revert with 'NH{q', 17
    balanceOf += msg.value
    emit ValueReceived(msg.sender, msg.value);
}

function _fallback() payable {
    if balanceOf > -msg.value - 1:
        revert with 'NH{q', 17
    balanceOf += msg.value
    emit ValueReceived(msg.sender, msg.value);
}

function sub_76cff23e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner can do this'
    sub_d80e6abb = arg1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.value == arg1
    if balanceOf > -msg.value - 1:
        revert with 'NH{q', 17
    balanceOf += msg.value
    emit ValueReceived(msg.sender, msg.value);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Only owner can do this'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Only owner can do this'
    if arg2 and sub_d80e6abb > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 > -(arg2 * sub_d80e6abb / 100) - 1:
        revert with 'NH{q', 17
    if arg2 + (arg2 * sub_d80e6abb / 100) > balanceOf:
        revert with 0, 'balance is low'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_45f07644Address with:
       value arg2 * sub_d80e6abb / 100 wei
         gas 2300 * is_zero(value) wei
    if arg2 > -(arg2 * sub_d80e6abb / 100) - 1:
        revert with 'NH{q', 17
    if balanceOf < arg2 + (arg2 * sub_d80e6abb / 100):
        revert with 'NH{q', 17
    balanceOf = balanceOf - arg2 - (arg2 * sub_d80e6abb / 100)
    emit Send(address(arg1), arg2);
}

function getToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner can do this'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You dont have any of this token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    tokenBalanceOf[address(arg1)] = ext_call.return_data[0]
    emit 0xc174625e: address(arg1), tokenBalanceOf[address(arg1)]
}

function sub_f059730f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Only owner can do this'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'balance is low'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xa5434f37: address(arg2), arg3
}

function transferToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Only owner can do this'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'balance is low'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg3 == ext_call.return_data[0]:
        tokenBalanceOf[address(arg1)] = 0
    else:
        if tokenBalanceOf[address(arg1)] < arg3:
            revert with 'NH{q', 17
        tokenBalanceOf[address(arg1)] -= arg3
    emit TransferSent(msg.sender, address(arg2), arg3);
}



}
