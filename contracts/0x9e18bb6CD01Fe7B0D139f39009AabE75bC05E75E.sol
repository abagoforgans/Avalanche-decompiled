contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;

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

function sub_d75966ab(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor2[msg.sender]:
        revert with 0, 'not in callable from list'
    stor1[address(arg1)] = uint8(bool(arg2))
}

function sub_5473e919(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(bool(arg2))
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
    if not stor2[msg.sender]:
        revert with 0, 'not in callable from list'
    if stor1[tx.origin]:
        return 95
    if stor1[msg.sender]:
        return 95
    if not block.timestamp:
        revert with 0, 18
    if 2 > !block.timestamp:
        revert with 0, 17
    if not block.timestamp + 2:
        revert with 0, 18
    if block.number < 1:
        revert with 0, 17
    if block.hash(block.number - 1) > !block.timestamp:
        revert with 0, 17
    if block.hash(block.number - 1) + block.timestamp < 1:
        revert with 0, 17
    if block.hash(block.number - 1) + block.timestamp - 1 > !block.difficulty:
        revert with 0, 17
    if block.hash(block.number - 1) + block.timestamp + block.difficulty - 1 > !(sha3(block.coinbase) / block.timestamp + 2):
        revert with 0, 17
    if block.hash(block.number - 1) + block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) - 1 > !block.gas_limit:
        revert with 0, 17
    if block.hash(block.number - 1) + block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit - 1 > !(sha3(msg.sender) / block.timestamp):
        revert with 0, 17
    if block.hash(block.number - 1) + block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(msg.sender) / block.timestamp) - 1 > !block.number:
        revert with 0, 17
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 > !arg1:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    return (sha3(block.hash(block.number - 1) + block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number - 1) % arg2)
}



}
