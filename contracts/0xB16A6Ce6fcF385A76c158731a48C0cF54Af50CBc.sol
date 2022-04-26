contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_6721f864(?) payable {
    require calldata.size - 4 >= 64
    if arg1:
        require ext_code.size(stor0)
        call stor0.claimReward(uint8 rg1, address rg2) with:
             gas gas_remaining wei
            args arg1 << 248, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1:
            require ext_code.size(stor0)
            staticcall stor0.rewardAccrued(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(arg2) > eth.balance(arg2):
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        staticcall stor0.rewardAccrued(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args arg1 << 248, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(arg2) > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((2 * ext_call.return_data[0]) - eth.balance(arg2))
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.claimReward(uint8 rg1, address rg2) with:
         gas gas_remaining wei
        args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        require ext_code.size(stor0)
        staticcall stor0.rewardAccrued(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args arg1 << 248, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > eth.balance(arg2):
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return eth.balance(arg2)
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.rewardAccrued(uint8 rg1, address rg2) with:
            gas gas_remaining wei
           args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ext_call.return_data[0]
}



}
