contract main {




// =====================  Runtime code  =====================


const getTime = block.timestamp


address owner;
address stor1;
uint256 unlockTime;
mapping of uint256 sub_a2c52e46;
mapping of uint256 stakers;
uint8 sub_e1b32b31;
uint256 sub_305fc401;
uint256 sub_c9775f71;
address sub_d61ce84eAddress;
address sub_37b1d241Address;
address sub_d7e21f85Address;
address sub_0bea62d4Address;
address sub_393d9bbbAddress;
address depositTokenAddress;
uint256 stakingStart;
uint256 end;

function sub_0bea62d4(?) {
    return sub_0bea62d4Address
}

function sub_305fc401(?) {
    return sub_305fc401
}

function sub_37b1d241(?) {
    return sub_37b1d241Address
}

function sub_393d9bbb(?) {
    return sub_393d9bbbAddress
}

function refundEnabled() {
    return bool(sub_e1b32b31)
}

function getUnlockTime() {
    return unlockTime
}

function getStakers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakers[address(arg1)]
}

function owner() {
    return owner
}

function sub_a2c52e46(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a2c52e46[arg1]
}

function sub_c21ca41c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return stakers[arg1]
}

function depositToken() {
    return depositTokenAddress
}

function sub_c9775f71(?) {
    return sub_c9775f71
}

function sub_d61ce84e(?) {
    return sub_d61ce84eAddress
}

function stakingStart() {
    return stakingStart
}

function sub_d7e21f85(?) {
    return sub_d7e21f85Address
}

function sub_e1b32b31(?) {
    return bool(sub_e1b32b31)
}

function end() {
    return end
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function updateEnd(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    end = arg1
}

function updateStart(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stakingStart = arg1
}

function sub_6d552c8e(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e1b32b31 = uint8(bool(arg1))
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    unlockTime = block.timestamp + arg1
    emit 0xfe8be007: owner, 0
}

function finalizePresale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0xfe8be007: owner, stor1
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function sub_494e3e31(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function refund() {
    if bool(sub_e1b32b31) != 1:
        revert with 0, 'Not Allowed. Refund not enabled'
    if not stakers[msg.sender]:
        revert with 0, 'Not Allowed. Refund complete'
    call depositTokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, stakers[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stakers[msg.sender] = 0
    sub_a2c52e46[msg.sender] = 0
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stakingStart >= block.timestamp:
        revert with 0, 'Presale not started'
    if end <= block.timestamp:
        revert with 0, 'Presale ended'
    call depositTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not stakers[msg.sender]:
        if sub_c9775f71 > -2:
            revert with 0, 17
        if sub_c9775f71 + 1 < sub_c9775f71:
            revert with 0, 1
        sub_c9775f71++
    if sub_a2c52e46[msg.sender] > !arg1:
        revert with 0, 17
    if sub_a2c52e46[msg.sender] + arg1 < sub_a2c52e46[msg.sender]:
        revert with 0, 1
    sub_a2c52e46[msg.sender] += arg1
    if stakers[msg.sender] > !arg1:
        revert with 0, 17
    if stakers[msg.sender] + arg1 < stakers[msg.sender]:
        revert with 0, 1
    stakers[msg.sender] += arg1
    if sub_305fc401 > !arg1:
        revert with 0, 17
    if sub_305fc401 + arg1 < sub_305fc401:
        revert with 0, 1
    sub_305fc401 += arg1
}



}
