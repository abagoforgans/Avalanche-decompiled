contract main {




// =====================  Runtime code  =====================


#
#  - swap(address arg1, address arg2, uint256 arg3, address arg4)
#
function _fallback() payable {
    revert
}

function getReserve(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    staticcall arg3.priceFeed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPrice(address arg1, bool arg2, bool arg3, bool arg4) with:
            gas gas_remaining wei
           args address(arg1), 0, 1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(ext_call.return_data[0]).getPrice(address arg1, bool arg2, bool arg3, bool arg4) with:
            gas gas_remaining wei
           args address(arg2), 1, 1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return uint128(ext_call.return_data[0]), ext_call.return_data[16 len 16]
}



}
