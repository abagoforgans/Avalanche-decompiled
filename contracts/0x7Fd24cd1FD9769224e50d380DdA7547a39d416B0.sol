contract main {




// =====================  Runtime code  =====================


#
#  - sub_07115e06(?)
#  - sub_07e05e54(?)
#  - _fallback()
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
mapping of address allowedPairs;
mapping of address allowedReserves;

function stopped() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function approvedTargets(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function allowedReserves(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return allowedReserves[arg1]
}

function allowedPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return allowedPairs[arg1]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function toggleContractActive() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, not uint8(stor0.field_160))
}

function removePairAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'BNA'
    allowedPairs[address(arg1)] = 0
}

function removeReserveAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'BNA'
    allowedReserves[address(arg1)] = 0
}

function addPairAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'BNA'
    if not arg2:
        revert with 0, 'BNA'
    allowedPairs[address(arg1)] = arg2
}

function addReserveAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'BNA'
    if not arg2:
        revert with 0, 'BNA'
    allowedReserves[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovedTargets(address[] arg1, bool[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg1.length:
        revert with 0, 'Invalid Input length'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + arg2 + 36)] == bool(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg1.length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = uint8(bool(cd[((32 * idx) + arg2 + 36)]))
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
