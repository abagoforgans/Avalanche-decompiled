contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() payable {
    require tx.origin == stor0
    selfdestruct(tx.origin)
}

function _fallback() payable {
  stop
}

function withdrawAll() payable {
    require tx.origin == stor0
    call tx.origin with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function flip(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require tx.origin == stor0
    require ext_code.size(stor1)
    if sha3(block.timestamp, Mask(160, 96, msg.sender) >> 96, arg1) % 10 == 1:
        call stor1.flip(bool arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args 1
    else:
        call stor1.flip(bool arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
