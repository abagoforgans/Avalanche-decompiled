contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_1e85e328(?) {
    if 0x2222222229b89c7844f19ef503c4dc503be47f84 != msg.sender:
        if 0x22222222222700eac97d0fa4dd4ddfb0af45b84f != msg.sender:
            revert with 0, 'x2: Not allowed'
    require ext_code.size(0x9a5904279d9578c094443acd5509994e37e6b6a2)
    staticcall 0x9a5904279d9578c094443acd5509994e37e6b6a2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x9a5904279d9578c094443acd5509994e37e6b6a2)
    call 0x9a5904279d9578c094443acd5509994e37e6b6a2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
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

function sub_059b3e2e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 0x2222222229b89c7844f19ef503c4dc503be47f84 != msg.sender:
        if 0x22222222222700eac97d0fa4dd4ddfb0af45b84f != msg.sender:
            revert with 0, 'x2: Not allowed'
    require ext_code.size(0x8d01c8ee82e581e55c02117a676b5bbd4734fabb)
    staticcall 0x8d01c8ee82e581e55c02117a676b5bbd4734fabb.0x33bb65a9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 110 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if block.timestamp and 110 * ext_call.return_data[0] / 100 > -1 / block.timestamp:
        revert with 'NH{q', 17
    if block.timestamp * 110 * ext_call.return_data[0] / 100 > -arg1 - 1:
        revert with 'NH{q', 17
    if block.number < 4:
        revert with 'NH{q', 17
    if block.number < 2:
        revert with 'NH{q', 17
    if block.number < 3:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    if not arg2:
        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * 110 * ext_call.return_data[0] / 100) + arg1, block.timestamp) % 100 < 20:
            require ext_code.size(0x9a5904279d9578c094443acd5509994e37e6b6a2)
            call 0x9a5904279d9578c094443acd5509994e37e6b6a2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * 110 * ext_call.return_data[0] / 100) + arg1, block.timestamp) % 100 < 60:
                if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * 110 * ext_call.return_data[0] / 100) + arg1, block.timestamp) % 100 >= 40:
                    require ext_code.size(0x9a5904279d9578c094443acd5509994e37e6b6a2)
                    call 0x9a5904279d9578c094443acd5509994e37e6b6a2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * 110 * ext_call.return_data[0] / 100) + arg1, block.timestamp) % 100 >= 40:
            if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * 110 * ext_call.return_data[0] / 100) + arg1, block.timestamp) % 100 < 80:
                if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * 110 * ext_call.return_data[0] / 100) + arg1, block.timestamp) % 100 >= 60:
                    require ext_code.size(0x9a5904279d9578c094443acd5509994e37e6b6a2)
                    call 0x9a5904279d9578c094443acd5509994e37e6b6a2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * 110 * ext_call.return_data[0] / 100) + arg1, block.timestamp) % 100 >= 20:
                require ext_code.size(0x9a5904279d9578c094443acd5509994e37e6b6a2)
                call 0x9a5904279d9578c094443acd5509994e37e6b6a2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * 110 * ext_call.return_data[0] / 100) + arg1, block.timestamp) % 100 < 80:
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * 110 * ext_call.return_data[0] / 100) + arg1, block.timestamp) % 100 >= 60:
                        require ext_code.size(0x9a5904279d9578c094443acd5509994e37e6b6a2)
                        call 0x9a5904279d9578c094443acd5509994e37e6b6a2.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    emit 0x91556f4b: (sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * 110 * ext_call.return_data[0] / 100) + arg1, block.timestamp) % 100)
}



}
