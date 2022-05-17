contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != this.address:
        revert with 0, 'Already Initialized'
    stor0 = arg1
    return 1
}



}
