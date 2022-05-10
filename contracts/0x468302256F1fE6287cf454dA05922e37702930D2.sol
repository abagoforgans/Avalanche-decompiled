contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_aa485bea(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function run() {
    require ext_code.size(0x8d426bfe128b171d8fd38a58dfea257f01206f34)
    staticcall 0x8d426bfe128b171d8fd38a58dfea257f01206f34.0x9975b113 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 10^18:
        require ext_code.size(0x8d426bfe128b171d8fd38a58dfea257f01206f34)
        call 0x8d426bfe128b171d8fd38a58dfea257f01206f34.0xba560803 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == stor0
}



}
