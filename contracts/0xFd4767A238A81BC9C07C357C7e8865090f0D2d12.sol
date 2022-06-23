contract main {




// =====================  Runtime code  =====================


address owner;
uint256 balance;

function owner() {
    return owner
}

function balance() {
    return balance
}

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Only owner can withdraw'
    if arg1 > balance:
        revert with 0, 'Insufficient funds'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balance -= arg1
}



}
