contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1; offset 1
uint256 random;
address gameAddress; offset 8
address sub_d7aacb3eAddress;

function getGame() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return gameAddress
}

function owner() payable {
    return owner
}

function getRandom(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return random
}

function sub_d7aacb3e(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_d7aacb3eAddress
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

function setGame(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gameAddress = arg1
}

function setBattle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d7aacb3eAddress = arg1
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

function sub_a9d01fd6(?) payable {
    if gameAddress != msg.sender:
        if sub_d7aacb3eAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Fuck off !'
    if not random:
        revert with 'NH{q', 18
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, block.timestamp % random, 22, 'random amount for WL :', 0
    if block.timestamp % random > stor1:
        return 1
    return 2
}

function update(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if gameAddress != msg.sender:
        if sub_d7aacb3eAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Fuck off !'
    if arg1 % 156 >= 2:
        random = arg1 % 156
    else:
        random = 264
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, random, 33, 0xfe5550444154452064752072616e646f6d2061766563206c612076616c65757220, mem[161 len 31] / 0.00390625, 0
    return random
}

function seed() payable {
    if gameAddress != msg.sender:
        if sub_d7aacb3eAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Fuck off !'
    if not random:
        revert with 'NH{q', 18
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, block.timestamp % random, 27, 'Appel de la fonction seed :', 0
    if block.timestamp % random >= 2:
        return (block.timestamp % random)
    staticcall 'console.log'.0xf5b1bba9 with:
            gas gas_remaining wei
           args 0, 3
    return 3
}



}
