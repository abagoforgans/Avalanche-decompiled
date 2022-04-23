contract main {




// =====================  Runtime code  =====================


#
#  - sub_185f7d4d(?)
#
function _fallback() payable {
    revert
}

function sub_92e2ce22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^6, 10^12, 10^12
    if not ext_call.success:
        return 30, 0, 0, 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -101:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
        revert with 'NH{q', 17
    if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
        revert with 'NH{q', 17
    return -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 
           ext_call.return_data[0],
           ext_call.return_data[0] + 100,
           ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100
}

function sub_0d543d05(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[0] << 192, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, arg4
}



}
