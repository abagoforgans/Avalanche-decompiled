contract main {




// =====================  Runtime code  =====================


const sub_c8bf7f0c(?) = (sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), ext_call.return_data[0] + 1, block.timestamp) % 100)


function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_843ccddc(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require 0x2222222229b89c7844f19ef503c4dc503be47f84 == msg.sender
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    call address(arg1).mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
       value arg3 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    require ext_call.success
}

function sub_6bb40543(?) payable {
    require ext_code.size(0x7aaac488c0899cb2d7b8e44e2d8678bf64f75b45)
    staticcall 0x7aaac488c0899cb2d7b8e44e2d8678bf64f75b45.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > !ext_call.return_data[0]:
        revert with 'NH{q', 17
    if block.number < 4:
        revert with 'NH{q', 17
    if block.number < 2:
        revert with 'NH{q', 17
    if block.number < 3:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), ext_call.return_data[0] + 1, block.timestamp) % 100 >= 5:
        require ext_code.size(0x7aaac488c0899cb2d7b8e44e2d8678bf64f75b45)
        call 0x7aaac488c0899cb2d7b8e44e2d8678bf64f75b45.0xf9541270 with:
           value 15 * 10^17 wei
             gas gas_remaining wei
            args 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x150b7a02(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 128
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            require arg4 <= test266151307()
            require arg4 + 35 < calldata.size
            require arg4.length <= test266151307()
            require arg4 + arg4.length + 36 <= calldata.size
            return 0x150b7a0200000000000000000000000000000000000000000000000000000000
        if unknown_0x6bb40543(?????) == uint32(call.func_hash) >> 224:
            require ext_code.size(0x7aaac488c0899cb2d7b8e44e2d8678bf64f75b45)
            staticcall 0x7aaac488c0899cb2d7b8e44e2d8678bf64f75b45.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 1 > !ext_call.return_data[0]:
                revert with 'NH{q', 17
            if block.number < 4:
                revert with 'NH{q', 17
            if block.number < 2:
                revert with 'NH{q', 17
            if block.number < 3:
                revert with 'NH{q', 17
            if block.number < 1:
                revert with 'NH{q', 17
            if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), ext_call.return_data[0] + 1, block.timestamp) % 100 >= 5:
                require ext_code.size(0x7aaac488c0899cb2d7b8e44e2d8678bf64f75b45)
                call 0x7aaac488c0899cb2d7b8e44e2d8678bf64f75b45.0xf9541270 with:
                   value 15 * 10^17 wei
                     gas gas_remaining wei
                    args 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x843ccddc(?????):
                require unknown_0xc8bf7f0c(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require ext_code.size(0x7aaac488c0899cb2d7b8e44e2d8678bf64f75b45)
                staticcall 0x7aaac488c0899cb2d7b8e44e2d8678bf64f75b45.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 1 > !ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if block.number < 4:
                    revert with 'NH{q', 17
                if block.number < 2:
                    revert with 'NH{q', 17
                if block.number < 3:
                    revert with 'NH{q', 17
                if block.number < 1:
                    revert with 'NH{q', 17
                return (sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), ext_call.return_data[0] + 1, block.timestamp) % 100)
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 <= test266151307()
            require arg2 + 35 < calldata.size
            if arg2.length > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                revert with 'NH{q', 65
            mem[128] = arg2.length
            require arg2 + arg2.length + 36 <= calldata.size
            mem[160 len arg2.length] = arg2[all]
            mem[arg2.length + 160] = 0
            require 0x2222222229b89c7844f19ef503c4dc503be47f84 == msg.sender
            mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[ceil32(ceil32(arg2.length)) + arg2.length + 129] = 0
            call address(arg1).mem[ceil32(ceil32(arg2.length)) + 129 len 4] with:
               value arg3 wei
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + 133 len arg2.length - 4]
            require ext_call.success
}



}
