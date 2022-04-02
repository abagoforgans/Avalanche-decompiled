contract main {




// =====================  Runtime code  =====================


address owner;
address adminAddress;
address tokenAddress;
uint256 nonce;
mapping of uint8 stor4;
uint256 balance;
uint256 fees;

function owner() {
    return owner
}

function processedNonces(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function fees() {
    return fees
}

function nonce() {
    return nonce
}

function balance() {
    return balance
}

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fees = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if stor4[arg3]:
        revert with 0, 'transfer already processed'
    stor4[arg3] = 1
    if balance < arg2:
        revert with 'NH{q', 17
    balance -= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x27757542: msg.sender, address(arg1), arg2, block.timestamp, arg3
    emit 0x1: msg.sender, address(arg1), arg2, block.timestamp, arg3
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value < fees:
        revert with 0, 'Fees too low'
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if balance > -arg1 - 1:
        revert with 'NH{q', 17
    balance += arg1
    emit 0x27757542: msg.sender, msg.sender, arg1, block.timestamp, nonce
    emit 0x0: msg.sender, msg.sender, arg1, block.timestamp, nonce
    if nonce == -1:
        revert with 'NH{q', 17
    nonce++
}



}
