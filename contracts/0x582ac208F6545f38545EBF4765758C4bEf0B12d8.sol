contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 prize;
address tokenAddr;
array of address stor4;
uint8 state; offset 160
address winnerAddress;
mapping of uint256 isParticipated;

function sub_364c7b2e(?) {
    return stor4.length
}

function tokenAddr() {
    return tokenAddr
}

function owner() {
    return owner
}

function state() {
    if state >= 2:
        revert with 'NH{q', 33
    return state
}

function isParticipated(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return isParticipated[arg1]
}

function winner() {
    return winnerAddress
}

function prize() {
    return prize
}

function finalize(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if state > 1:
        revert with 'NH{q', 33
    if state != 1:
        revert with 'U,x`'
    if eth.balance(this.address) < prize:
        revert with '8M<Y'
    state = 0
    if stor4.length <= 0:
        selfdestruct(owner)
    if block.number < 1:
        revert with 'NH{q', 17
    if not stor4.length:
        revert with 'NH{q', 18
    if sha3(block.hash(block.number - 1), block.timestamp, block.difficulty, stor4.length, arg1) % stor4.length >= stor4.length:
        revert with 'NH{q', 50
    winnerAddress = stor4[sha3(block.hash(block.number - 1), block.timestamp, block.difficulty, stor4.length, arg1) % stor4.length]
    emit Winner(winnerAddress);
    call winnerAddress with:
       value prize wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 1490317612
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

function start() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if state > 1:
        revert with 'NH{q', 33
    if state:
        revert with 2491228494
    state = 1
    prize = msg.value
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

function participate() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if state > 1:
        revert with 'NH{q', 33
    if state != 1:
        revert with 'U,x`'
    require ext_code.size(tokenAddr)
    staticcall tokenAddr.isMinter(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 2706043153
    if isParticipated[address(msg.sender)] > 0:
        revert with 2682179765
    isParticipated[address(msg.sender)] = 1
    stor4.length++
    stor4[stor4.length] = msg.sender
    stor1 = 1
}



}
