contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transfer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0x8b0508a67acb0ebd3239a9b70bc62269f7ec9cd2 == msg.sender:
        require ext_code.size(arg1)
        staticcall arg1.0xf1a392da with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[0] > 180:
            require ext_code.size(arg1)
            call arg1.0x4641257d with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 0xcb91157b71f4dbe3ceaba07537bb0c3167b5ab79 == arg1:
                if block.timestamp < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if block.timestamp - ext_call.return_data[0] > 35:
                    require ext_code.size(arg1)
                    call arg1.0x4641257d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
