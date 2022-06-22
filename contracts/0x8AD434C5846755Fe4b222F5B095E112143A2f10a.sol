contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_e665b461(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    idx = arg2
    while idx < arg3:
        mem[96] = 0x9b1f9e7400000000000000000000000000000000000000000000000000000000
        mem[100] = idx
        require ext_code.size(address(arg1))
        call address(arg1)._burn(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
