contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function claimRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        require ext_code.size(stor0)
        call stor0.claimRewards() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 == 1:
            require ext_code.size(stor1)
            call stor1.getReward() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if arg1 == 2:
                require ext_code.size(stor2)
                call stor2.getReward() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
