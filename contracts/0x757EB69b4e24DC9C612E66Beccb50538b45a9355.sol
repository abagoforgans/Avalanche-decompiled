contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, balanceOf[address(msg.sender)], 27, Mask(216, 0, 'Sender balance is %s tokens')
    staticcall 'console.log'.0xe3849f79 with:
            gas gas_remaining wei
           args 0, 96, arg2, address(arg1), 30, Mask(240, 0, 'Trying to send %s tokens to %s')
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Not enough tokens'
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
}



}
