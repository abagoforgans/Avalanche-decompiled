contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function unko(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xbd7bd0b4650d324e3ea6f734faa3fc37d80b7d82)
    staticcall 0xbd7bd0b4650d324e3ea6f734faa3fc37d80b7d82.getCharacter(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    return ext_call.return_data[63 len 1]
}

function unko2(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xbd7bd0b4650d324e3ea6f734faa3fc37d80b7d82)
    staticcall 0xbd7bd0b4650d324e3ea6f734faa3fc37d80b7d82.getCharacter(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    return (ext_call.return_data[63 len 1] == arg2)
}



}
