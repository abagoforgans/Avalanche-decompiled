contract main {




// =====================  Runtime code  =====================


mapping of uint256 balance;

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function sendCoin(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getBalanceInEth(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x6bd29fa647a2a0ea99cf2fa86378a99211d27ac0)
    delegate 0x6bd29fa647a2a0ea99cf2fa86378a99211d27ac0.convert(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args balance[address(arg1)], 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}



}
