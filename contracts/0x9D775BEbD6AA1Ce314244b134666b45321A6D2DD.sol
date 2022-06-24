contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint256 balances;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function owner() {
    return owner
}

function controllers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function kill() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
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

function sub_b4fad1b5(?) {
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[address(msg.sender)] = 0
}

function sub_5565e28b(?) {
    require calldata.size - 4 >= 160
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    if uint8(arg1) > Mask(2, 80, sha3(block.number, block.difficulty, arg3, arg5, arg4)) >> 80:
        return uint8(arg1) <= Mask(2, 80, sha3(block.number, block.difficulty, arg3, arg5, arg4)) >> 80
    if Mask(2, 64, sha3(block.number, block.difficulty, arg3, arg5, arg4)) >> 64 >= 4:
        revert with 'NH{q', 50
    if stor2 < uint8(arg2):
        return stor2 >= uint8(arg2)
    return not uint16(sha3(block.number, block.difficulty, arg3, arg5, arg4)) % 10
}

function sub_8713a1f8(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    if balances[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    balances[address(msg.sender)] += msg.value
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    if uint8(arg1) <= Mask(2, 80, sha3(block.number, block.difficulty, arg3, arg5, arg4)) >> 80:
        if Mask(2, 64, sha3(block.number, block.difficulty, arg3, arg5, arg4)) >> 64 >= 4:
            revert with 'NH{q', 50
        if stor2 >= uint8(arg2):
            if not uint16(sha3(block.number, block.difficulty, arg3, arg5, arg4)) % 10:
                call msg.sender with:
                   value balances[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                balances[address(msg.sender)] = 0
}



}
