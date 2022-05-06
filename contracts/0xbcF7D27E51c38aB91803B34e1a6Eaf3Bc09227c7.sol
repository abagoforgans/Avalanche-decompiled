contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    require not msg.value
    return code.data[100 len 2555]
}



// =====================  Runtime code  =====================


uint256 withdraw_amount;
uint128 stor1; offset 160
address sub_c5ad8882Address;
address owner;
mapping of struct sub_3300e415;
mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function withdraw_amount() {
    return withdraw_amount
}

function sub_3300e415(?) {
    return sub_3300e415[arg1].field_0, sub_3300e415[arg1].field_256, bool(sub_3300e415[arg1].field_416)
}

function owner() {
    return owner
}

function sub_c5ad8882(?) {
    return sub_c5ad8882Address
}

function _fallback() payable {
    revert
}

function NoRefunds() {
    owner = msg.sender
    balances[address(this.address)] = 10000
}

function approveRefund(address arg1) {
    require msg.sender == owner
    sub_3300e415[address(arg1)].field_416 = 1
}

function setWithdrawAmount(uint256 arg1) {
    require msg.sender == owner
    require not withdraw_amount
    withdraw_amount = arg1
}

function setBeneficiary(address arg1) {
    require msg.sender == owner
    require not sub_c5ad8882Address
    sub_c5ad8882Address = arg1
}

function withdrawBalance() {
    require sub_c5ad8882Address
    require balances[address(this.address)] >= withdraw_amount
    balances[address(this.address)] -= withdraw_amount
    balances[address(stor1.field_0)] += withdraw_amount
}

function refund(bool arg1, uint256 arg2, address arg3) {
    if not arg1:
        withdraw_amount = arg2
        sub_c5ad8882Address = arg3
        Mask(96, 0, stor1.field_160) = 0
    else:
        require sub_3300e415[address(msg.sender)].field_416
        require sub_3300e415[address(msg.sender)].field_0 <= arg2
        require sub_3300e415[address(msg.sender)].field_256 == arg3
        sub_3300e415[address(msg.sender)].field_416 = 0
        require balances[address(this.address)] >= arg2
        balances[address(this.address)] -= arg2
        balances[address(arg3)] += arg2
}



}
