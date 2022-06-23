contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
