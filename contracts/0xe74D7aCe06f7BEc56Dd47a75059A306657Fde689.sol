contract main {




// =====================  Runtime code  =====================


address depositTokenAddress;
address sub_47979b8dAddress;
mapping of uint256 balances;
address prizePoolAddress;
address stor4;
address stor5;
address stor6;
address stor7;

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function sub_47979b8d(?) payable {
    return sub_47979b8dAddress
}

function prizePool() payable {
    return prizePoolAddress
}

function sub_75c2068a(?) payable {
    return depositTokenAddress
}

function depositToken() payable {
    return depositTokenAddress
}

function _fallback() payable {
    revert
}

function updatePrizePool(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'owner'
    prizePoolAddress = arg1
}

function balanceOfToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if balances[address(arg1)]:
        return balances[address(arg1)]
    else:
        return 0
}

function earnedRewards() payable {
    require ext_code.size(stor6)
    staticcall stor6.earned(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function redeemToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require balances[address(msg.sender)] >= arg1
    require ext_code.size(stor6)
    call stor6.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > balances[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balances[address(msg.sender)] -= arg1
    return arg1
}

function harvest() payable {
    if stor7 == prizePoolAddress:
        revert with 0, 'prize pool should be configured'
    require ext_code.size(stor6)
    call stor6.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args prizePoolAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Harvest(ext_call.return_data[0], prizePoolAddress);
    return ext_call.return_data[0]
}

function supplyTokenTo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_47979b8dAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0xb6b55f25 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balances[address(arg2)] < balances[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
}



}
