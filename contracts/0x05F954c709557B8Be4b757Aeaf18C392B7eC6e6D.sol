contract main {




// =====================  Runtime code  =====================


array of uint256 _test;

function _test() payable {
    return _test[0 len _test.length]
}

function _fallback() payable {
    revert
}

function test(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    _test[] = Array(len=arg1.length, data=arg1[all])
}



}
