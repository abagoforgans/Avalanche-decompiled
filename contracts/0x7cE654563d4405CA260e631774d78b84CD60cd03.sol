contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getReserve(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return 0
}

function swap(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.deposit(uint256 arg1, bool arg2, address arg3) with:
         gas gas_remaining wei
        args arg3, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    else:
        return 0
}



}
