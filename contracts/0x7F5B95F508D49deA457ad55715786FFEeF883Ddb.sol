contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_08d78c3c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You are not the owner'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    call 0x302abf007c2045f1bc0867a4b7abaae2152e0eb3.0xa9059cbb with:
         gas gas_remaining wei
        args owner, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
