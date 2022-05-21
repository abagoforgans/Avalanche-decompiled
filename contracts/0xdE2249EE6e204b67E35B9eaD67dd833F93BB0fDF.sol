contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function claimAVAX() {
    if 0x2222222229b89c7844f19ef503c4dc503be47f84 != msg.sender:
        if 0x22222222222700eac97d0fa4dd4ddfb0af45b84f != msg.sender:
            revert with 0, 'x2: Not allowed'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_843ccddc(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    require msg.sender == 0x2222222229b89c7844f19ef503c4dc503be47f84
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    call address(arg1).mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
       value arg3 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    require ext_call.success
}

function sub_c8bf7f0c(?) payable {
    if 0x2222222229b89c7844f19ef503c4dc503be47f84 != msg.sender:
        if 0x22222222222700eac97d0fa4dd4ddfb0af45b84f != msg.sender:
            revert with 0, 'x2: Not allowed'
    require ext_code.size(0x7aaac488c0899cb2d7b8e44e2d8678bf64f75b45)
    staticcall 0x7aaac488c0899cb2d7b8e44e2d8678bf64f75b45.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -2:
        revert with 'NH{q', 17
    if block.number < 4:
        revert with 'NH{q', 17
    if block.number < 2:
        revert with 'NH{q', 17
    if block.number < 3:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), ext_call.return_data[0] + 1, block.timestamp) % 100 < 5:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x91556f4b: (sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), ext_call.return_data[0] + 1, block.timestamp) % 100)
}



}
