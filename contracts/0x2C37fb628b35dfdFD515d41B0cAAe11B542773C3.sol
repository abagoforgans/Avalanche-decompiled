contract main {




// =====================  Runtime code  =====================


address owner;
address nominatedOwner;
address timelock_address;
address sub_dbea953dAddress;
mapping of uint256 price;

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return price[address(arg1)]
}

function nominatedOwner() payable {
    return nominatedOwner
}

function owner() payable {
    return owner
}

function prices(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return price[arg1]
}

function sub_dbea953d(?) payable {
    return sub_dbea953dAddress
}

function timelock_address() payable {
    return timelock_address
}

function _fallback() payable {
    revert
}

function setBot(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    sub_dbea953dAddress = arg1
}

function setTimelock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    timelock_address = arg1
}

function setPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            if sub_dbea953dAddress != msg.sender:
                revert with 0, 'Not owner, tlck, or bot'
    price[address(arg1)] = arg2
}

function nominateNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function acceptOwnership() payable {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}



}
