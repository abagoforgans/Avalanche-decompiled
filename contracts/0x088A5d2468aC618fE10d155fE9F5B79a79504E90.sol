contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9c69853cAddress;
address sub_13c64ebfAddress;
uint256 tokenRatePerEth;
uint256 sub_e4837ca8;
uint256 sub_96efbd4c;
uint256 softCap;
uint256 totalRaisedETH;
uint256 sub_eb8c5b6c;
uint256 startTime;
uint256 endTime;
uint8 sub_9535ca69;
uint8 contractPaused; offset 8
uint256 stor11; offset 8
mapping of uint256 stor12;
mapping of struct userinfo;

function sub_13c64ebf(?) {
    return sub_13c64ebfAddress
}

function endTime() {
    return endTime
}

function startTime() {
    return startTime
}

function contractPaused() {
    return bool(contractPaused)
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function userinfo(address arg1) {
    require calldata.size - 4 >= 32
    return userinfo[arg1].field_0, userinfo[arg1].field_256
}

function sub_9535ca69(?) {
    return bool(sub_9535ca69)
}

function sub_96efbd4c(?) {
    return sub_96efbd4c
}

function sub_9c69853c(?) {
    return sub_9c69853cAddress
}

function sub_e4837ca8(?) {
    return sub_e4837ca8
}

function tokenRatePerEth() {
    return tokenRatePerEth
}

function sub_eb8c5b6c(?) {
    return sub_eb8c5b6c
}

function totalRaisedETH() {
    return totalRaisedETH
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinEthLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_e4837ca8 = arg1
}

function setMaxEthLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_96efbd4c = arg1
}

function setRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_13c64ebfAddress = arg1
}

function setTokenRatePerEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    tokenRatePerEth = arg1
}

function togglePause() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor11 = Mask(248, 0, not contractPaused)
    return bool(0 or uint8(not contractPaused))
}

function setPresaleToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1
    sub_9c69853cAddress = arg1
}

function sub_22bb5cf0(?) {
    require calldata.size - 4 >= 32
    if stor12[address(arg1)] > sub_96efbd4c:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_96efbd4c - stor12[address(arg1)])
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= block.timestamp:
        revert with 0, 'past timestamp'
    startTime = arg1
}

function setEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= startTime:
        revert with 0, 'should be bigger than start time'
    endTime = arg1
}

function openClaim() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_9535ca69:
        revert with 0, 'Already opened'
    if block.timestamp <= endTime:
        revert with 0, 'Presale not over yet'
    sub_9535ca69 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claim() {
    if userinfo[msg.sender].field_0 != msg.sender:
        revert with 0, 'You are not allowed to claim'
    if not sub_9535ca69:
        revert with 0, 'Claim not open yet'
    userinfo[msg.sender].field_256 = 0
    require ext_code.size(sub_9c69853cAddress)
    staticcall sub_9c69853cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userinfo[msg.sender].field_256 > ext_call.return_data[0]:
        revert with 0, 'Insufficient balance'
    require ext_code.size(sub_9c69853cAddress)
    call sub_9c69853cAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userinfo[msg.sender].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Claimed(msg.sender, userinfo[msg.sender].field_256);
}

function sub_2ae2db4e(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp <= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe596f752063616e6e6f742067657420746f6b656e7320756e74696c207468652070726573616c6520697320636c6f736564,
                    mem[214 len 14]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function deposit() payable {
    if contractPaused:
        revert with 0, 'contract is paused'
    if block.timestamp <= startTime:
        revert with 0, 'Sale has not started'
    if block.timestamp >= endTime:
        revert with 0, 'Sale has ended'
    if msg.value + stor12[msg.sender] < stor12[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + stor12[msg.sender] > sub_96efbd4c:
        revert with 0, 'Investment Amount Invalid.'
    if msg.value + stor12[msg.sender] < stor12[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + stor12[msg.sender] < sub_e4837ca8:
        revert with 0, 'Investment Amount Invalid.'
    require ext_code.size(sub_9c69853cAddress)
    staticcall sub_9c69853cAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] > 18:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.value:
        if 10^(-ext_call.return_data[31 len 1] + 18) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^(-ext_call.return_data[31 len 1] + 18)
        if userinfo[msg.sender].field_0:
            userinfo[msg.sender].field_256 += 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
        else:
            userinfo[msg.sender].field_0 = msg.sender
            userinfo[msg.sender].field_256 = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
        if msg.value + totalRaisedETH < totalRaisedETH:
            revert with 0, 'SafeMath: addition overflow'
        totalRaisedETH += msg.value
        if (0 / 10^(-uint8(ext_call.return_data[0]) + 18)) + sub_eb8c5b6c < sub_eb8c5b6c:
            revert with 0, 'SafeMath: addition overflow'
        sub_eb8c5b6c += 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
    else:
        if tokenRatePerEth * msg.value / msg.value != tokenRatePerEth:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 10^(-ext_call.return_data[31 len 1] + 18) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^(-ext_call.return_data[31 len 1] + 18)
        if userinfo[msg.sender].field_0:
            userinfo[msg.sender].field_256 += tokenRatePerEth * msg.value / 10^(-uint8(ext_call.return_data[0]) + 18)
        else:
            userinfo[msg.sender].field_0 = msg.sender
            userinfo[msg.sender].field_256 = tokenRatePerEth * msg.value / 10^(-uint8(ext_call.return_data[0]) + 18)
        if msg.value + totalRaisedETH < totalRaisedETH:
            revert with 0, 'SafeMath: addition overflow'
        totalRaisedETH += msg.value
        if (tokenRatePerEth * msg.value / 10^(-uint8(ext_call.return_data[0]) + 18)) + sub_eb8c5b6c < sub_eb8c5b6c:
            revert with 0, 'SafeMath: addition overflow'
        sub_eb8c5b6c += tokenRatePerEth * msg.value / 10^(-uint8(ext_call.return_data[0]) + 18)
    if msg.value + stor12[msg.sender] < stor12[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    stor12[msg.sender] += msg.value
    call sub_13c64ebfAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposited(msg.value);
}



}
