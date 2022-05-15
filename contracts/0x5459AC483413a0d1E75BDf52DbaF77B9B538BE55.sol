contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_98e543d4(?) payable {
    require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
    call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.repayETH(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 253385260, msg.value, 2, 0x78bc7ba11f17d0db3cbedd2565cab6da01060b6b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
    call 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x23b872dd with:
         gas gas_remaining wei
        args 0x78bc7ba11f17d0db3cbedd2565cab6da01060b6b, 0x7d7e74467f813ea09b44fa43781f761ef6317751, 7000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
            gas gas_remaining wei
           args 0x7d7e74467f813ea09b44fa43781f761ef6317751
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
