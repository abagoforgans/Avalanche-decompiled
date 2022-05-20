contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function approve() payable {
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xbb6288b73b3da320c90f839baf9ddae0c6ac86f0, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
