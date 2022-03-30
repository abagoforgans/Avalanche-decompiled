contract main {




// =====================  Runtime code  =====================


address depositTokenAddress;
address sub_47979b8dAddress;
mapping of uint256 balances;
address stor3;
address stor4;
address stor5;
address stor6;
uint256 devFundDivRate;
address devfundAddress;

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function sub_47979b8d(?) payable {
    return sub_47979b8dAddress
}

function devFundDivRate() payable {
    return devFundDivRate
}

function sub_75c2068a(?) payable {
    return depositTokenAddress
}

function devfund() payable {
    return devfundAddress
}

function depositToken() payable {
    return depositTokenAddress
}

function _fallback() payable {
    revert
}

function setDevFundDivRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor6 == msg.sender
    devFundDivRate = arg1
}

function sub_bff792d9(?) payable {
    require calldata.size - 4 >= 32
    if devfundAddress != msg.sender:
        revert with 0, 'dev: wut?'
    devfundAddress = arg1
}

function balanceOfToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if balances[address(arg1)]:
        return balances[address(arg1)]
    else:
        return 0
}

function redeemToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require balances[address(msg.sender)] >= arg1
    require ext_code.size(stor5)
    call stor5.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
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

function supplyTokenTo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_47979b8dAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.deposit(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
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

function harvest(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor6 == msg.sender
    require ext_code.size(stor5)
    call stor5.0x3d18b912 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if devFundDivRate <= 0:
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor4)
        call stor4.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Harvest(ext_call.return_data[0], 0, arg1);
    else:
        require devFundDivRate
        require ext_code.size(stor4)
        call stor4.0xa9059cbb with:
             gas gas_remaining wei
            args devfundAddress, ext_call.return_data[0] / devFundDivRate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] / devFundDivRate > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor4)
        call stor4.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - (ext_call.return_data[0] / devFundDivRate)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Harvest(ext_call.return_data[0] - (ext_call.return_data[0] / devFundDivRate), ext_call.return_data[0] / devFundDivRate, arg1);
    return ext_call.return_data[0]
}



}
