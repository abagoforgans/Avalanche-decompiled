contract main {




// =====================  Runtime code  =====================


function sub_5b4e863a(?) {
    call 0xb3eeac2ca7af379778817952c77017c974175a81 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e5907d8d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args 0xb3eeac2ca7af379778817952c77017c974175a81, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6c385fc7(?) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(0xe082f06ff657d94310cb8ce8b0d9a04541d8052)
    staticcall 0xe082f06ff657d94310cb8ce8b0d9a04541d8052.isTransferCompleted(bytes32 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'transfer already completed'
    require ext_code.size(0xe082f06ff657d94310cb8ce8b0d9a04541d8052)
    if arg1 != 1:
        call 0x0e082f06ff657d94310cb8ce8b0d9a04541d8052.0xff200cde with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=arg2[all])
    else:
        call 0x0e082f06ff657d94310cb8ce8b0d9a04541d8052.0xc6878519 with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x5b4e863a(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            call 0xb3eeac2ca7af379778817952c77017c974175a81 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x6c385fc7(?????):
                require unknown_0xe5907d8d(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args 0xb3eeac2ca7af379778817952c77017c974175a81, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require not msg.value
                require calldata.size - 4 >= 96
                require arg2 <= test266151307()
                require arg2 + 35 < calldata.size
                if arg2.length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                    revert with 0, 65
                require arg2 + arg2.length + 36 <= calldata.size
                require ext_code.size(0xe082f06ff657d94310cb8ce8b0d9a04541d8052)
                staticcall 0xe082f06ff657d94310cb8ce8b0d9a04541d8052.isTransferCompleted(bytes32 arg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    revert with 0, 'transfer already completed'
                require ext_code.size(0xe082f06ff657d94310cb8ce8b0d9a04541d8052)
                if arg1 != 1:
                    call 0x0e082f06ff657d94310cb8ce8b0d9a04541d8052.0xff200cde with:
                         gas gas_remaining wei
                        args Array(len=arg2.length, data=arg2[all])
                else:
                    call 0x0e082f06ff657d94310cb8ce8b0d9a04541d8052.0xc6878519 with:
                         gas gas_remaining wei
                        args Array(len=arg2.length, data=arg2[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
