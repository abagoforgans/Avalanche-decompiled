contract main {




// =====================  Runtime code  =====================


array of uint256 sub_fd694219;
address stor1;

function sub_fd694219(?) {
    return sub_fd694219[arg1][0 len sub_fd694219[arg1].length]
}

function _fallback() payable {
    revert
}

function sub_237e5000(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor1)
    staticcall stor1.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor1)
        staticcall stor1.0x4209fff1 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'you do not have the right to do this action'
    sub_fd694219[arg2][] = Array(len=arg1.length, data=arg1[all])
    emit 0xcc1bcf16: 0, Mask(224, 0, arg2)
}

function sub_76d1f072(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor1)
    staticcall stor1.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor1)
        staticcall stor1.0x4209fff1 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'you do not have the right to do this action'
    sub_fd694219[arg2][] = Array(len=arg1.length, data=arg1[all])
    emit 0x1f7ce07c: 0, Mask(224, 0, arg2)
}



}
