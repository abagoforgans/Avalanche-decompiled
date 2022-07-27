contract main {




// =====================  Runtime code  =====================


#
#  - buyTokens(address arg1)
#  - _fallback()
#
address tokenAddress; offset 8
address walletAddress;
address stor2;
uint256 _rate;
uint256 weiRaised;
uint8 stor5;

function rate() {
    return _rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function _rate() {
    return _rate
}

function token() {
    return tokenAddress
}

function updateRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    _rate = arg1
}

function sub_8cad0c79(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == stor2
    stor5 = uint8(bool(arg1))
}



}
