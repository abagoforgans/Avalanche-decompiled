contract main {




// =====================  Runtime code  =====================


uint256 c;

function c() payable {
    return c
}

function _fallback() payable {
    revert
}

function test(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    c = 1
    require ext_code.size(arg1)
    staticcall arg1.getETHPx(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
