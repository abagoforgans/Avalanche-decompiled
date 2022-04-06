contract main {




// =====================  Runtime code  =====================


address WETHAddress;
address SAIAddress;
address USDCAddress;
address DAIAddress;
mapping of uint256 currencies;

function SAI() payable {
    return SAIAddress
}

function currencies(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return currencies[arg1]
}

function USDC() payable {
    return USDCAddress
}

function WETH() payable {
    return WETHAddress
}

function DAI() payable {
    return DAIAddress
}

function _fallback() payable {
    revert
}

function tokenToMarketId(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not currencies[address(arg1)]:
        revert with 0, 'FlashLoan: Unsupported token'
    return (currencies[address(arg1)] - 1)
}



}
