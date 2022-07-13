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
        args this.address, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1cb8744b(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == uint64(arg1)
    require arg2 == uint128(arg2)
    require arg3 == uint128(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require ext_code.size(0xc778417e063141139fce010982780140aa0cd5ab)
    call 0xc778417e063141139fce010982780140aa0cd5ab.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg4), uint64(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg4))
    call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg2 << 128, address(arg5), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg5))
    call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3 << 128, 0, address(this.address), 128, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cef2b014(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == uint64(arg1)
    require arg2 == uint128(arg2)
    require arg3 == uint128(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require ext_code.size(0xc778417e063141139fce010982780140aa0cd5ab)
    call 0xc778417e063141139fce010982780140aa0cd5ab.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg4), uint64(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg4))
    call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2 << 128, 0, address(arg5), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg5))
    call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3 << 128, 0, address(this.address), 128, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fa00ac96(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == uint64(arg1)
    require arg2 == uint128(arg2)
    require arg3 == uint128(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require ext_code.size(0xc778417e063141139fce010982780140aa0cd5ab)
    call 0xc778417e063141139fce010982780140aa0cd5ab.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg4), uint64(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg4))
    call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2 << 128, 0, address(arg5), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg5))
    call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg3 << 128, address(this.address), 128, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fa3fee7b(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == uint64(arg1)
    require arg2 == uint128(arg2)
    require arg3 == uint128(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require ext_code.size(0xc778417e063141139fce010982780140aa0cd5ab)
    call 0xc778417e063141139fce010982780140aa0cd5ab.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg4), uint64(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg4))
    call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg2 << 128, address(arg5), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg5))
    call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg3 << 128, address(this.address), 128, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
