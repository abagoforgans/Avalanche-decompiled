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

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Only owner can withdraw'
    if arg1 > balance:
        revert with 0, 'Insufficient funds'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if balance < arg1:
        revert with 0, 17
    balance -= arg1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if balance > !msg.value:
            revert with 0, 17
        balance += msg.value
    else:
        if uint32(call.func_hash) >> 224 != withdraw(uint256 arg1, address arg2):
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            require unknown_0xb69ef8a8(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return balance
        require not msg.value
        require calldata.size - 4 >= 64
        require arg2 == address(arg2)
        if owner != msg.sender:
            revert with 0, 'Only owner can withdraw'
        if arg1 > balance:
            revert with 0, 'Insufficient funds'
        call address(arg2) with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if balance < arg1:
            revert with 0, 17
        balance -= arg1
}



}
