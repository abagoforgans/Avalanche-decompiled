contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function multMintAction(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 and 14 * 10^16 > -1 / arg3:
        revert with 'NH{q', 17
    require msg.value == 14 * 10^16 * arg3
    require ext_code.size(arg1)
    call arg1.0xd6a022b8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require arg3 <= ext_call.return_data[0]
    idx = 0
    while idx < arg3:
        mem[ceil32(return_data.size) + 96] = 0x40d097c300000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = arg2
        require ext_code.size(arg1)
        call arg1.0x40d097c3 with:
           value 14 * 10^16 wei
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
