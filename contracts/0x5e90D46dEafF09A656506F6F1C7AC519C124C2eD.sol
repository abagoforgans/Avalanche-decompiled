contract main {




// =====================  Runtime code  =====================


array of uint256 str;

function str() payable {
    return str[0 len str.length]
}

function _fallback() payable {
    revert
}

function store(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    str[] = Array(len=arg1.length, data=arg1[all])
}



}
