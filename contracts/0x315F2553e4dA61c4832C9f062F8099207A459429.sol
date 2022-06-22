contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdrawToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == stor0
    if arg3:
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 224, mem[324 len 4]
}

function withdrawNative(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
