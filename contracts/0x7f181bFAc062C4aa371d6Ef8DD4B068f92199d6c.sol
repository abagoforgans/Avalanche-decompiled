contract main {




// =====================  Runtime code  =====================


const ping = 'Good Morning Dr. Chandra'


array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
uint8 stor4; offset 160
uint128 stor4; offset 160
address stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isContractPaused() {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    return bool(uint8(stor4.field_160))
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (_totalSupply - balanceOf[0])
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg1 + arg2 >= arg1
    return (arg1 + arg2)
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require arg2 > 0
    require arg2
    return (arg1 / arg2)
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}

function pause() {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    Mask(96, 0, stor4.field_160) = 1
    return 'Contract is Paused'
}

function unpause() {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    Mask(96, 0, stor4.field_160) = 0
    return 'Contract is Unpaused'
}

function approve(address arg1, uint256 arg2) {
    if uint8(stor4.field_160):
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_be6a6285(?) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    require _totalSupply + arg1 >= _totalSupply
    _totalSupply += arg1
    require balanceOf[address(stor4.field_0)] + arg1 >= balanceOf[address(stor4.field_0)]
    balanceOf[address(stor4.field_0)] += arg1
    return 0
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor4.field_160):
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor4.field_160):
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if uint8(stor4.field_160):
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferArray(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    if arg1.length > 500:
        revert with 0, 'Too many addresses, must be <= 100'
    require arg1.length * arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * arg1.length * arg2
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + arg2
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, msg.sender, address(_20));
        s = _20
        idx = idx + 1
        continue 
    return 1
}



}
