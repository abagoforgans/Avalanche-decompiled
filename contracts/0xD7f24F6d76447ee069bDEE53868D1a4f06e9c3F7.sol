contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transfer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == 0x8b0508a67acb0ebd3239a9b70bc62269f7ec9cd2:
        staticcall 'console.log'.log(string arg1, address arg2) with:
                gas gas_remaining wei
               args 0, 64, arg1, 17, 'Rewards Contract:', 0
        require ext_code.size(arg1)
        staticcall arg1.lastHarvest() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[0] > 300:
            staticcall 'console.log'.log(string arg1) with:
                    gas gas_remaining wei
                   args 0, 'HARVESTING', 0
            require ext_code.size(arg1)
            call arg1.harvest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
