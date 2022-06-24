contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;
mapping of uint8 stor2;

function owner() {
    return owner
}

function kill() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw() payable {
    if owner != msg.sender:
        if not stor2[address(msg.sender)]:
            revert with 0, 'no'
    if stor1[address(msg.sender)] > 0:
        if eth.balance(this.address) < stor1[address(msg.sender)]:
            revert with 0, 'noo'
        call msg.sender with:
           value stor1[address(msg.sender)] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'failed to send back avax'
        stor1[address(msg.sender)] = 0
}

function sub_9b11cc34(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        if not stor2[address(msg.sender)]:
            revert with 0, 'no'
    if msg.value <= 0:
        revert with 0, 'avax pls'
    if uint16(sha3(block.number, block.difficulty, arg3, arg2, arg1)) % 10:
        if stor1[address(msg.sender)] > -msg.value - 1:
            revert with 'NH{q', 17
        stor1[address(msg.sender)] += msg.value
    else:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'failed to send back avax'
}



}
