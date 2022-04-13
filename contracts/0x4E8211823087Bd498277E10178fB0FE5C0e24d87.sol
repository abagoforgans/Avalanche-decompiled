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

function sub_04f4a374(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        if timelock_address != msg.sender:
            if sub_dbea953dAddress != msg.sender:
                revert with 0, 'Not owner, tlck, or bot'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        price[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
