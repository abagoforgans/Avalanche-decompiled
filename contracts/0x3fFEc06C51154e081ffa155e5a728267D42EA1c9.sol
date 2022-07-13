contract main {




// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    if stor0 != tx.origin:
        revert with 0, 'a'
    selfdestruct(tx.origin)
}

function _fallback() payable {
  stop
}

function sub_b1a94c1e(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != tx.origin:
        revert with 0, 'a'
    mem[132 len 0] = None
    delegate arg1.mem[132 len 4] with:
         gas gas_remaining wei
        args 
}

function withdrawAll() payable {
    if stor0 != tx.origin:
        revert with 0, 'a'
    call tx.origin with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fbfbf35b(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != tx.origin:
        revert with 0, 'a'
    emit 0x49115968: (bool(sha3(Mask(160, 96, tx.origin) >> 96, block.gas_limit, block.timestamp, block.number)) == arg1)
    if bool(sha3(Mask(160, 96, tx.origin) >> 96, block.gas_limit, block.timestamp, block.number)) == arg1:
        call tx.origin with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
