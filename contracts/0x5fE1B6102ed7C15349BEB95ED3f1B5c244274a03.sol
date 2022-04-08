contract main {




// =====================  Runtime code  =====================


#
#  - complusV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_53e0f76c(?)
#  - oliveCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
function _fallback() payable {
    revert
}

function sub_ff85ae0e(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[260 len arg4.length] = arg4[all]
    mem[arg4.length + 260] = 0
    require ext_code.size(arg3)
    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, arg1, arg2, address(this.address), 128, arg4.length, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
