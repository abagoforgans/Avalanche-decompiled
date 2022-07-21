contract main {




// =====================  Runtime code  =====================


uint256 amount1;
uint256 amount2;
uint256 amount3;
uint256 total;

function amount2() {
    return amount2
}

function total() {
    return total
}

function amount3() {
    return amount3
}

function amount1() {
    return amount1
}

function _fallback() payable {
    revert
}

function test3() payable {
    amount3 = msg.value
    total = eth.balance(this.address)
}

function test2() payable {
    amount2 = msg.value
    total = eth.balance(this.address)
}

function test1() payable {
    amount1 = msg.value
    total = eth.balance(this.address)
}

function withdraw() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    total = eth.balance(this.address)
}



}
