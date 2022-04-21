contract main {




// =====================  Runtime code  =====================


const getAVAXBalance = eth.balance(this.address)


address routerAddress;
address devAddress;
uint8 decimals; offset 160
address token_address;

function decimals() payable {
    return decimals
}

function token_address() payable {
    return token_address
}

function dev() payable {
    return devAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function changeDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'Access denied'
    devAddress = arg1
}

function withdrawAVAX() payable {
    if devAddress != msg.sender:
        revert with 0, 'Access denied'
    call devAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenBalance() payable {
    require ext_code.size(token_address)
    staticcall token_address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getAlloance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if devAddress != msg.sender:
        revert with 0, 'Access denied'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function liquidityAdd() payable {
    require ext_code.size(token_address)
    staticcall token_address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(routerAddress)
    call routerAddress.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0], 0, 0, 0, 57005, block.timestamp
    if ext_call.success:
        require return_data.size >= 96
        emit 0x290be9ff: 0, ext_call.return_data[0]
}



}
