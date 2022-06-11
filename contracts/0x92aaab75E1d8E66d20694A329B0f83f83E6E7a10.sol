contract main {




// =====================  Runtime code  =====================


#
#  - exp()
#  - sub_fd025320(?)
#
function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0xbb6288b73b3da320c90f839baf9ddae0c6ac86f0 != msg.sender:
        revert with 0, 'got out'
    call 0x130966628846bfd36ff31a822705796e8cb8c18d.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xbb6288b73b3da320c90f839baf9ddae0c6ac86f0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
