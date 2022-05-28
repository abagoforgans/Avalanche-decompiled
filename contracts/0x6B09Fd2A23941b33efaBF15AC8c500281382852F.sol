contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function closeGame(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    call stor0.0x2d6ef310 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function startGame(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    call stor0.0xe5ed1d59 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
