contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function withdraw() {
    require msg.sender == stor1
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function win() payable {
    if sha3(block.timestamp, block.gas_limit, msg.sender) % 6 > -2:
        revert with 'NH{q', 17
    require ext_code.size(stor0)
    if (sha3(block.timestamp, block.gas_limit, msg.sender) % 6) + 1 >= 4:
        call stor0.joinGame(uint256 arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args 2
    else:
        call stor0.joinGame(uint256 arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
