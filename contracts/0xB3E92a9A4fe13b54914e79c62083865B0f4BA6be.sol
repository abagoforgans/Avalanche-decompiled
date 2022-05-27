contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 _name;
array of uint256 _symbol;
uint8 _decimals;
uint256 _totalSupply;
mapping of uint256 ownerAccountBalance;
mapping of uint256 allowed;

function name() payable {
    return _name[0 len _name.length]
}

function OwnerAccountBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    return ownerAccountBalance[address(arg1)]
}

function totalSupply() payable {
    return _totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return ownerAccountBalance[arg1]
}

function decimals() payable {
    return _decimals
}

function _decimals() payable {
    return _decimals
}

function _totalSupply() payable {
    return _totalSupply
}

function allowed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return _symbol[0 len _symbol.length]
}

function _symbol() payable {
    return _symbol[0 len _symbol.length]
}

function _name() payable {
    return _name[0 len _name.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
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
    if arg2:
        require not allowed[msg.sender][address(arg1)]
    allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != this.address
    require arg2 <= ownerAccountBalance[address(msg.sender)]
    require arg2 <= ownerAccountBalance[address(msg.sender)]
    ownerAccountBalance[address(msg.sender)] -= arg2
    require arg2 + ownerAccountBalance[arg1] >= ownerAccountBalance[arg1]
    ownerAccountBalance[address(arg1)] = arg2 + ownerAccountBalance[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= allowed[address(arg1)][msg.sender]
    allowed[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg2 != this.address
    require arg3 <= ownerAccountBalance[address(arg1)]
    require arg3 <= ownerAccountBalance[address(arg1)]
    ownerAccountBalance[address(arg1)] -= arg3
    require arg3 + ownerAccountBalance[arg2] >= ownerAccountBalance[arg2]
    ownerAccountBalance[address(arg2)] = arg3 + ownerAccountBalance[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
