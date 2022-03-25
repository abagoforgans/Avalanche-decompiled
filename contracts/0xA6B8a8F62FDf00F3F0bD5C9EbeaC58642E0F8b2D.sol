contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint8 stor2;
mapping of uint256 balanceOf;
uint8 paused; offset 160
uint128 stor4; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function paused() payable {
    return bool(paused)
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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender == owner
    require paused
    stor4 = 0
    emit Unpause()
}

function pause() payable {
    require msg.sender == owner
    require not paused
    stor4 = 1
    emit Pause()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not paused
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function blackListAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require not paused
    require msg.sender == owner
    require bool(stor2[address(arg1)]) != arg2
    stor2[address(arg1)] = uint8(arg2)
    emit Blacklist(arg2, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, 0, arg1);
    emit Transfer(arg2, 0, arg1);
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not paused
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not paused
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not paused
    require not stor2[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not paused
    require not stor2[address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
