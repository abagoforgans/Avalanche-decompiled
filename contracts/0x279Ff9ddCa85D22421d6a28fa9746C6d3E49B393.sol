contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function claimRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        require ext_code.size(stor0)
        call stor0.claimRewards() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if 1 == arg1:
            require ext_code.size(stor1)
            call stor1.getReward() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 2 == arg1:
                require ext_code.size(stor2)
                call stor2.getReward() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        require claimRewards(uint256 rg1) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 32
        if not arg1:
            require ext_code.size(stor0)
            call stor0.claimRewards() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 1 == arg1:
                require ext_code.size(stor1)
                call stor1.getReward() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 2 == arg1:
                    require ext_code.size(stor2)
                    call stor2.getReward() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
