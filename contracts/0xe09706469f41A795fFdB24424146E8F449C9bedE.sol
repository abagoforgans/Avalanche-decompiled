contract main {




// =====================  Runtime code  =====================


const sub_9595d651(?) = block.timestamp


uint8 paused;
address owner; offset 8
mapping of uint8 stor1;
uint256 sub_9b2ff30b;
uint256 sub_82f146a8;
address loveAddress;
address swapAddress;
address winnerAddress;
uint256 sub_5d1ef50e;
uint256 sub_9cedf91e;
uint256 rewardPool;
uint256 sub_b8d639cf;
uint256 deadline;
uint8 isStart;

function deadline() {
    return deadline
}

function paused() {
    return bool(paused)
}

function sub_5d1ef50e(?) {
    return sub_5d1ef50e
}

function Controller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function rewardPool() {
    return rewardPool
}

function swap() {
    return swapAddress
}

function sub_82f146a8(?) {
    return sub_82f146a8
}

function isStart() {
    return bool(isStart)
}

function owner() {
    return owner
}

function sub_9b2ff30b(?) {
    return sub_9b2ff30b
}

function sub_9cedf91e(?) {
    return sub_9cedf91e
}

function Winner() {
    return winnerAddress
}

function sub_b8d639cf(?) {
    return sub_b8d639cf
}

function love() {
    return loveAddress
}

function _fallback() payable {
    revert
}

function sub_b557e997(?) {
    return bool(isStart), sub_5d1ef50e
}

function sub_1ecb218a(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    sub_5d1ef50e = block.timestamp
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_cee41d25(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    deadline = arg1
}

function sub_503ab5c0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    sub_9cedf91e = arg1
}

function sub_6901ffa5(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    sub_9b2ff30b = arg1
}

function sub_9a423f45(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    sub_5d1ef50e = arg1
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor1[address(arg1)] = 1
}

function sub_ae142ff1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    sub_b8d639cf = arg1
}

function sub_ee23b8e1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    sub_82f146a8 = arg1
}

function removeController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor1[address(arg1)] = 0
}

function sub_74bfe790(?) payable {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    if msg.value <= 0:
        revert with 0, '0'
    if rewardPool > -msg.value - 1:
        revert with 'NH{q', 17
    rewardPool += msg.value
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0, 'zero not allow'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function StartLottery() {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    isStart = 1
    winnerAddress = msg.sender
    if not deadline:
        revert with 'NH{q', 18
    if block.timestamp > -(24 * 3600 / deadline) - 1:
        revert with 'NH{q', 17
    sub_5d1ef50e = block.timestamp + (24 * 3600 / deadline)
}

function EmergencyWithdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function EndGame() {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    if block.timestamp < sub_5d1ef50e:
        revert with 0, 'Not Game Over'
    call winnerAddress with:
       value rewardPool wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    rewardPool = 0
}

function SetPause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    if arg1 != 1:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
    else:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
}

function sub_62121e15(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Only owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function BuyTickets() payable {
    if not isStart:
        revert with 0, 'Not Ready'
    if block.timestamp >= sub_5d1ef50e:
        revert with 0, 'Game Over'
    require ext_code.size(loveAddress)
    staticcall loveAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_9b2ff30b:
        revert with 0, 'Not enough love'
    if sub_82f146a8 != msg.value:
        revert with 0, 'AmountError'
    require ext_code.size(loveAddress)
    call loveAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_9b2ff30b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    winnerAddress = msg.sender
    if sub_82f146a8 and sub_b8d639cf > -1 / sub_82f146a8:
        revert with 'NH{q', 17
    call swapAddress with:
       value sub_82f146a8 * sub_b8d639cf / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(swapAddress)
    staticcall swapAddress.0x64a325b0 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Controller Not Set'
    require ext_code.size(swapAddress)
    call swapAddress.0x577c8960 with:
         gas gas_remaining wei
        args (sub_82f146a8 * sub_b8d639cf / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_82f146a8 < sub_82f146a8 * sub_b8d639cf / 100:
        revert with 'NH{q', 17
    if rewardPool > -sub_82f146a8 + (sub_82f146a8 * sub_b8d639cf / 100) - 1:
        revert with 'NH{q', 17
    rewardPool = rewardPool + sub_82f146a8 - (sub_82f146a8 * sub_b8d639cf / 100)
    if sub_5d1ef50e > -sub_9cedf91e - 1:
        revert with 'NH{q', 17
    sub_5d1ef50e += sub_9cedf91e
}



}
