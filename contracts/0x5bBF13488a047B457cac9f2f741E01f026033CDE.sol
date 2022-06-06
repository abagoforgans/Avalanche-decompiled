contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require 0xc05e61d0e7a63d27546389b7ad62fdff5a91aace == msg.sender
    require ext_code.size(0x62edc0692bd897d2295872a9ffcac5425011c661)
    staticcall 0x62edc0692bd897d2295872a9ffcac5425011c661.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x62edc0692bd897d2295872a9ffcac5425011c661)
    call 0x62edc0692bd897d2295872a9ffcac5425011c661.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x62edc0692bd897d2295872a9ffcac5425011c661)
    staticcall 0x62edc0692bd897d2295872a9ffcac5425011c661.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'Burn incomplete'
}



}
