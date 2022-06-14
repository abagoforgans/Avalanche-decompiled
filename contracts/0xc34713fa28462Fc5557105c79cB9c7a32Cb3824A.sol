contract main {




// =====================  Runtime code  =====================


uint8 stor0;
array of uint256 sub_33437c77;
array of uint256 sub_0427e4b7;

function sub_0427e4b7(?) payable {
    return sub_0427e4b7[0 len sub_0427e4b7.length]
}

function sub_33437c77(?) payable {
    return sub_33437c77[0 len sub_33437c77.length]
}

function sub_bb446268(?) payable {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function sub_7363fad9(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}



}
