contract main {




// =====================  Runtime code  =====================


address stor0;
uint32 stor1;
uint128 stor1; offset 32
uint256 stor1;

function _fallback() payable {
    revert
}

function test2(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[196 len 96] = unknown_0xe6a43905(?????), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), address(arg1), mem[196 len 28]
    call stor0.mem[196 len 4] with:
         gas gas_remaining wei
        args mem[200 len 64]
    if not return_data.size:
        require unknown_0xe6a43905(?????), uint128(stor1.field_32)
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require mem[228 len 20]
}



}
