contract main {




// =====================  Runtime code  =====================


uint8 state;
uint256 amount;
uint256 interest;
uint256 end;
address borrowerAddress;
address lenderAddress;

function borrower() {
    return borrowerAddress
}

function amount() {
    return amount
}

function lender() {
    return lenderAddress
}

function state() {
    require state <= 2
    return state
}

function interest() {
    return interest
}

function end() {
    return end
}

function _fallback() payable {
    revert
}

function fund() payable {
    if lenderAddress != msg.sender:
        revert with 0, 'only lender can lend'
    if eth.balance(this.address) != amount:
        revert with 0, 'can only lend the exact amount'
    call borrowerAddress with:
       value amount wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reimburse() payable {
    if borrowerAddress != msg.sender:
        revert with 0, 'only borrower can reimburse'
    if amount + interest != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe626f72726f776572206e65656420746f207265696d62757273652065786163746c7920616d6f756e74202b20696e7465726573,
                    mem[216 len 12]
    call lenderAddress with:
       value amount + interest wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
