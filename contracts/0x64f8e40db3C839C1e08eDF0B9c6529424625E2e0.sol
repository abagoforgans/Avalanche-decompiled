contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor4;
address stor5;
address stor6;

function _fallback() {
    stor3 = msg.sender
    stor0 = 10^18 * code.data[8302 len 32]
    stor1[address(msg.sender)] = stor0
    emit Transfer(stor0, 0, msg.sender);
    stor4 = code.data[8334 len 32]
    stor5 = msg.sender
    stor6 = code.data[8410 len 20]
    require msg.sender == stor3
    require code.data[8378 len 20]
    emit OwnershipTransferred(stor3, code.data[8378 len 20]);
    stor3 = code.data[8378 len 20]
    return code.data[866 len 7436]
}



// =====================  Runtime code  =====================


const name = 'Meta Token'

const decimals = 18

const symbol = 'MTT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 transferableStartTime;
address tokenSaleContractAddress;
address earlyInvestorWalletAddress;

function totalSupply() {
    return totalSupply
}

function tokenSaleContract() {
    return tokenSaleContractAddress
}

function earlyInvestorWallet() {
    return earlyInvestorWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferableStartTime() {
    return transferableStartTime
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function emergencyERC20Drain(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if block.timestamp <= transferableStartTime:
        if tokenSaleContractAddress != msg.sender:
            if earlyInvestorWalletAddress != msg.sender:
                require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != this.address
    if block.timestamp <= transferableStartTime:
        if tokenSaleContractAddress != msg.sender:
            if earlyInvestorWalletAddress != msg.sender:
                require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    if block.timestamp <= transferableStartTime:
        if tokenSaleContractAddress != msg.sender:
            if earlyInvestorWalletAddress != msg.sender:
                require msg.sender == owner
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if block.timestamp <= transferableStartTime:
        if tokenSaleContractAddress != msg.sender:
            if earlyInvestorWalletAddress != msg.sender:
                require msg.sender == owner
    require this.address != msg.sender
    if block.timestamp <= transferableStartTime:
        if tokenSaleContractAddress != msg.sender:
            if earlyInvestorWalletAddress != msg.sender:
                require msg.sender == owner
    require msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[address(msg.sender)] + arg2 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Transfer(arg2, arg1, msg.sender);
    if block.timestamp <= transferableStartTime:
        if tokenSaleContractAddress != msg.sender:
            if earlyInvestorWalletAddress != msg.sender:
                require msg.sender == owner
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, msg.sender);
    emit Transfer(arg2, msg.sender, 0);
    return 1
}



}
