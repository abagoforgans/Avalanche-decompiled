contract main {




// =====================  Runtime code  =====================


const ethBalanceOf = eth.balance(this.address)


address stor0;
mapping of uint256 stor1;
uint256 defaultFeeDivisor;
mapping of uint256 stor3;
uint256 defaultLiquidity;

function defaultLiquidity() {
    return defaultLiquidity
}

function defaultFeeDivisor() {
    return defaultFeeDivisor
}

function _fallback() payable {
    revert
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'IMMUTABLE'
    stor0 = arg1
}

function feeDivisor(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(arg1)]:
        return 1000
    return stor1[address(arg1)]
}

function liquidity(address arg1) {
    require calldata.size - 4 >= 32
    if stor3[address(arg1)]:
        return stor3[address(arg1)]
    return defaultLiquidity
}

function setDefaultLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    if not arg1:
        revert with 0, 'INVALID'
    defaultLiquidity = arg1
    emit LiquidityChanged(defaultLiquidity, arg1, stor0);
    return defaultLiquidity
}

function setDefaultFeeDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    if not arg1:
        revert with 0, 'DIVISIONBYZERO'
    defaultFeeDivisor = arg1
    emit DefaultFeeDivisorChanged(defaultFeeDivisor, arg1, stor0);
    return defaultFeeDivisor
}

function setFeeDivisor(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    if not arg2:
        revert with 0, 'DIVISIONBYZERO'
    stor1[address(arg1)] = arg2
    emit FeeDivisorChanged(stor1[address(arg1)], arg2, stor0, arg1);
    return stor1[address(arg1)]
}

function balanceOF(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferEth(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    if eth.balance(this.address) < arg2:
        revert with 0, 'INSUFFICIENT_BALANCE'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'INSUFFICIENT_BALANCE'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
