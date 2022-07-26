contract main {




// =====================  Runtime code  =====================


array of uint256 message;

function message() payable {
    return message[0 len message.length]
}

function _fallback() payable {
    revert
}

function update(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    staticcall 'console.log'.log(string arg1, address arg2) with:
            gas gas_remaining wei
           args 0, 64, msg.sender, 27, Mask(216, 0, 'Address %s updating message')
    message[] = Array(len=arg1.length, data=arg1[all])
}



}
