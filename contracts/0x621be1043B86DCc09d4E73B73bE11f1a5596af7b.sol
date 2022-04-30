contract main {




// =====================  Runtime code  =====================


array of uint256 greet;

function greet() payable {
    return greet[0 len greet.length]
}

function _fallback() payable {
    revert
}

function setGreeting(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    greet[] = Array(len=arg1.length, data=arg1[all])
}



}
