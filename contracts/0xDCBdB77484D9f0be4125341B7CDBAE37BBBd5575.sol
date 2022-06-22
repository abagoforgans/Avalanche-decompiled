contract main {




// =====================  Runtime code  =====================


array of uint256 message;

function message() {
    return message[0 len message.length]
}

function _fallback() payable {
    revert
}

function update(string arg1) {
    message[] = Array(len=arg1.length, data=arg1[all])
}



}
