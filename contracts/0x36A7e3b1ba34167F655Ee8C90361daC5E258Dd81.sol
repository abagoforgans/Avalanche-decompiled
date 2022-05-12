contract main {




// =====================  Runtime code  =====================


uint256 myValue;

function myValue() {
    return myValue
}

function _fallback() payable {
    revert
}

function Execute(uint256 arg1) {
    myValue = arg1
    emit 0x8c03554b: msg.sender, arg1
}



}
