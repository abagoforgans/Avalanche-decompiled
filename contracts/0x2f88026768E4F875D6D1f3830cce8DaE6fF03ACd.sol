contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 fees;
uint256 defaultFee;

function defaultFee() payable {
    return defaultFee
}

function owner() payable {
    return owner
}

function fees(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return fees[arg1][arg2]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setDefaultFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    defaultFee = arg1
}

function setPairFee(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < arg2:
        fees[address(arg1)][address(arg2)] = arg3
    else:
        fees[address(arg2)][address(arg1)] = arg3
}

function getPairFee(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 < arg2:
        if fees[address(arg1)][address(arg2)]:
            return fees[address(arg1)][address(arg2)]
    else:
        if fees[address(arg2)][address(arg1)]:
            return fees[address(arg2)][address(arg1)]
    return defaultFee
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}



}
