contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
mapping of uint8 stor3;

function owner() payable {
    return owner
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

function setMintContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function sub_c3918496(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
}

function sub_5473e919(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = uint8(bool(arg2))
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

function random(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor3[msg.sender]:
        revert with 0, 'not in callable from list'
    if msg.sender == stor2:
        if block.timestamp < 60:
            revert with 0, 17
        if arg3 <= block.timestamp - 60:
            return 1
        if 60 > !block.timestamp:
            revert with 0, 17
        if arg3 >= block.timestamp + 60:
            return 1
    if not block.timestamp:
        revert with 0, 18
    if 2 > !block.timestamp:
        revert with 0, 17
    if not block.timestamp + 2:
        revert with 0, 18
    if block.timestamp < 1:
        revert with 0, 17
    if block.timestamp - 1 > !block.difficulty:
        revert with 0, 17
    if block.timestamp + block.difficulty - 1 > !(sha3(block.coinbase) / block.timestamp + 2):
        revert with 0, 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) - 1 > !block.gas_limit:
        revert with 0, 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit - 1 > !(sha3(msg.sender) / block.timestamp):
        revert with 0, 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(msg.sender) / block.timestamp) - 1 > !block.number:
        revert with 0, 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number - 1 > !arg3:
        revert with 0, 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + arg3 - 1 > !eth.balance(stor1):
        revert with 0, 17
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 > !arg1:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    return (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + arg3 + eth.balance(stor1) - 1) % arg2)
}



}
