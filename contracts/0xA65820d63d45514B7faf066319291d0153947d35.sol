contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == 0x3d11c06d80d9b4c365af5d699bcf721daa67e6d8
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2be81266(?) payable {
    require calldata.size - 4 >= 160
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg4), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg4))
    call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, 0, address(arg5), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg5))
    call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg3, address(this.address), 128, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2f07cdde(?) payable {
    require calldata.size - 4 >= 160
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg4), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg4))
    call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg2, address(arg5), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg5))
    call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, 0, address(this.address), 128, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cc143322(?) payable {
    require calldata.size - 4 >= 160
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg4), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg4))
    call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg2, address(arg5), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg5))
    call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg3, address(this.address), 128, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d1842573(?) payable {
    require calldata.size - 4 >= 160
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg4), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg4))
    call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, 0, address(arg5), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg5))
    call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, 0, address(this.address), 128, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
