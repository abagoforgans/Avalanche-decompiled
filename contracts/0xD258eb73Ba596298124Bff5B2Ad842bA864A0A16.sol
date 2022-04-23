contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function hoge() {
    require ext_code.size(0xbd7bd0b4650d324e3ea6f734faa3fc37d80b7d82)
    call 0xbd7bd0b4650d324e3ea6f734faa3fc37d80b7d82.0xa22cb465 with:
         gas gas_remaining wei
        args 0x2e08843a1a50efd4fb1a2aa807523a46f3ce8 * 24 * 3600, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unko(uint256 arg1) {
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

function unko2() payable {
    require ext_code.size(0xbd7bd0b4650d324e3ea6f734faa3fc37d80b7d82)
    call 0xbd7bd0b4650d324e3ea6f734faa3fc37d80b7d82.purchaseBundle(uint8 rg1) with:
       value msg.value wei
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xbd7bd0b4650d324e3ea6f734faa3fc37d80b7d82)
    staticcall 0xbd7bd0b4650d324e3ea6f734faa3fc37d80b7d82.0x2f745c59 with:
            gas gas_remaining wei
           args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xbd7bd0b4650d324e3ea6f734faa3fc37d80b7d82)
    staticcall 0xbd7bd0b4650d324e3ea6f734faa3fc37d80b7d82.getCharacter(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if ext_call.return_data[63 len 1] != 4:
        revert with 0, 'miss'
}



}
