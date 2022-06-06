contract main {




// =====================  Runtime code  =====================


const sub_31e67c71(?) = 0x62edc0692bd897d2295872a9ffcac5425011c661

const bridge = 0xc05e61d0e7a63d27546389b7ad62fdff5a91aace


function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) payable {
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
    call 0x62edc0692bd897d2295872a9ffcac5425011c661.0x40c10f19 with:
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
        revert with 0, 'Mint incomplete'
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require 0xc05e61d0e7a63d27546389b7ad62fdff5a91aace == msg.sender
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7342617365546f6b656e3a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[205 len 23]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe42617365546f6b656e3a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[203 len 25]
    require ext_code.size(0x62edc0692bd897d2295872a9ffcac5425011c661)
    call 0x62edc0692bd897d2295872a9ffcac5425011c661.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x62edc0692bd897d2295872a9ffcac5425011c661)
    call 0x62edc0692bd897d2295872a9ffcac5425011c661.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
