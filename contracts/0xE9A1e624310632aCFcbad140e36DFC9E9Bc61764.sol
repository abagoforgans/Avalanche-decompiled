contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 wallet;
uint256 stor2;

function getWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return wallet[address(arg1)]
}

function _fallback() payable {
    revert
}

function withdraw() {
    if stor0 != msg.sender:
        revert with 0, ''
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'fail'
}

function sub_38c182ee(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    call address(arg1) with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'fail'
}

function deposit() payable {
    require msg.value > 0
    if wallet[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    wallet[address(msg.sender)] += msg.value
    if stor2 > -msg.value - 1:
        revert with 'NH{q', 17
    stor2 += msg.value
}



}
