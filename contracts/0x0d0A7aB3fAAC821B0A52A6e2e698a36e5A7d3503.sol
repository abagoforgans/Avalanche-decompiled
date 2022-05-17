contract main {




// =====================  Runtime code  =====================


address _tokenAddress;

function _token() payable {
    return _tokenAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _tokenAddress != this.address:
        revert with 0, 'Already Initialized'
    _tokenAddress = arg1
    return 1
}



}
