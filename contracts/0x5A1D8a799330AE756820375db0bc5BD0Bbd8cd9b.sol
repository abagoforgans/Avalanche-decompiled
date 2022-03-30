contract main {




// =====================  Runtime code  =====================


array of uint256 sub_52208bef;
address stor1;

function sub_52208bef(?) payable {
    return sub_52208bef[arg1][0 len sub_52208bef[arg1].length]
}

function _fallback() payable {
    revert
}

function sub_2b8f041b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor1)
    staticcall stor1.isAdmin(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor1)
        staticcall stor1.isUser(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        43,
                        0xfe796f7520646f206e6f7420686176652074686520726967687420746f20646f207468697320616374696f,
                        mem[ceil32(arg1.length) + 239 len 21]
    sub_52208bef[arg2][] = Array(len=arg1.length, data=arg1[all])
    emit 0x8b7c7e1e: 0, Mask(224, 0, arg2)
}

function sub_f1792e19(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor1)
    staticcall stor1.isAdmin(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor1)
        staticcall stor1.isUser(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        43,
                        0xfe796f7520646f206e6f7420686176652074686520726967687420746f20646f207468697320616374696f,
                        mem[ceil32(arg1.length) + 239 len 21]
    sub_52208bef[arg2][] = Array(len=arg1.length, data=arg1[all])
    emit 0x4a1d3aa2: 0, Mask(224, 0, arg2)
}



}
